using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SimNetUI.ModelLogic.Activities.Base;
using SimNetUI.ModelLogic.Activities.ModelProperties.Connections;
using SimNetUI.ModelLogic.Activities.ModelProperties.Resources;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;
using SimNetUI.ModelLogic.Base;
using SimNetUI.ModelLogic.Entity;
using SimNet;
using System.Collections.ObjectModel;


namespace SimNetUI.ModelLogic.Activities
{
    public class ActivityAssignResourceML : ActivityQueueBaseML, IStatisticInfo<ActivityAssignResourceStatisticInfoML>
    {
        private ResourceObj resource;

        #region Properties
            #region private members
                private ActivityAssignResourceStatisticInfoML _Statistic;
                private ReadOnlyCollection<ResourceDependencyML> _EntityResourceDependencies;
            #endregion

            #region property wrapper

                public ActivityAssignResourceStatisticInfoML Statistic
                {
                    get { return _Statistic; }
                    set { _Statistic = value; OnPropertyChanged("Statistic"); }
                }

                public ReadOnlyCollection<ResourceDependencyML> EntityResourceDependencies
                {
                    get { return _EntityResourceDependencies; }
                    set { _EntityResourceDependencies = value; OnPropertyChanged("EntityResourceDependencies"); }
                }


            #endregion

        #endregion

        public ActivityAssignResourceML()
                    : base() 
        {

        }

        protected bool AllResourcesAvailable()
        {
            foreach (var dependency in _EntityResourceDependencies)
            {
                if (dependency.Resource.obj.Resources < dependency.Count)
                    return false;
            }
            return true;
        }

        /// <summary>
        /// This method will do a cleanup before a new simulation will
        /// be started
        /// </summary>
        internal override void OnResetActivity()
        {
            resource = new ResourceObj();
            resource.CreateResource(1);

            Statistic.Reset();

            foreach (var dependency in this.EntityResourceDependencies)
            {
                dependency.Resource.clearResource();
            }

            base.OnResetActivity();

        }


        internal override void RecalculateTimeBasedStatistics(double SimulationTime)
        {
            Statistic.UpdateTimeBasedStatistics();
        }



         /// <summary>
        /// This methods allows an activity to act uppon an entities arrival
        /// </summary>
        /// <param name="targetConnectorML"></param>
        /// <param name="startConnectorML"></param>
        /// <param name="entityML"></param>
        internal override void OnReceiveEntity(InConnectorML targetConnectorML, OutConnectorML startConnectorML)
        {
            var logic = new NestedClassSimulationLogic(this);
            Simulation.Tell(logic.AssignResource, 0, 0, null);
        }



        /// <summary>
        /// There are a few bugs in the currently used
        /// SimNet library considering resources in combination with waitfor and give. 
        /// If these things are resolved the code in this class should be outfactored into 
        /// the enclosing main class
        /// </summary>
        private class NestedClassSimulationLogic
        {

            private ActivityAssignResourceML parent;

            public NestedClassSimulationLogic(ActivityAssignResourceML parent)
            {
                this.parent = parent;
            }

            [TELL]
            public void AssignResource(double t, double priority, params object[] p)
            {
                bool interrupt = false;
                bool decrementInQueue = false;


                if (parent.resource.Resources == 0 || !parent.AllResourcesAvailable())
                {
                    parent.Statistic.InQueue++;
                    decrementInQueue = true;
                }

                // only one tell method can work here at a time
                try
                {
                    Simulation.WaitFor(parent.resource.Give, this, 1, ref interrupt);
                }
                catch { }



                // this activity acquires resources before it assigns it to one concrete entity
                // (Since different tell methods might be scheduled, its unsafe to assign it directly to one entity)
                for (int i = 0; i < parent.EntityResourceDependencies.Count; i++)
                {

                    try
                    {
                        Simulation.WaitFor(parent.EntityResourceDependencies[i].Resource.obj.Give, this, parent.EntityResourceDependencies[i].Count, ref interrupt);
                    }
                    catch { }

                    parent.Statistic.AssignedResources += (uint)parent.EntityResourceDependencies[i].Count;

                }

                // now we know that all resources are available, we have to release them before we can assign them to
                // one entity

                var startConnectorML = parent.OutConnectors["Out"];
                var entityML = parent.GetProvidedEntity(startConnectorML);

                
                for (int i = 0; i < parent.EntityResourceDependencies.Count; i++)
                {
                    parent.EntityResourceDependencies[i].Resource.obj.TakeBack(this, parent.EntityResourceDependencies[i].Count);
                    
                    try
                    {
                        Simulation.WaitFor(parent.EntityResourceDependencies[i].Resource.obj.Give, entityML, parent.EntityResourceDependencies[i].Count, ref interrupt);
                    }
                    catch { }
                }



                parent.Statistic.ProcessedEntities++;

                if (decrementInQueue) parent.Statistic.InQueue--;



                parent.SendEntity(startConnectorML, entityML);

                parent.resource.TakeBack(this, 1);

            }
        }

    }
}
