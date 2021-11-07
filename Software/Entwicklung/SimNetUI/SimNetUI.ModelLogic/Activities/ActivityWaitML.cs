using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SimNetUI.ModelLogic.Activities.Base;
using SimNetUI.ModelLogic.Activities.ModelProperties.Connections;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;
using SimNetUI.ModelLogic.Base;
using SimNetUI.ModelLogic.Entity;
using SimNet;


namespace SimNetUI.ModelLogic.Activities
{
    public class ActivityWaitML : ActivityDelayBaseML, IStatisticInfo<ActivityWaitStatisticInfoML>
    {
        private ResourceObj resource;

        #region Properties
            #region private members
                private ActivityWaitStatisticInfoML _Statistic;
                private uint _Capacity;
            #endregion

            #region property wrapper

                public ActivityWaitStatisticInfoML Statistic
                {
                    get { return _Statistic; }
                    set { _Statistic = value; OnPropertyChanged("Statistic"); }
                }

                public uint Capacity
                {
                    get { return _Capacity; }
                    set {

                        if (resource != null && value > _Capacity)
                            resource.IncrementResources((int)(value - _Capacity));


                        _Capacity = value; 



                        OnPropertyChanged("Capacity"); 
                    }
                }

            #endregion

        #endregion

        public ActivityWaitML() : base() 
        {

        }

        /// <summary>
        /// This method will do a cleanup before a new simulation will
        /// be started
        /// </summary>
        internal override void OnResetActivity()
        {
            resource = new ResourceObj();
            resource.CreateResource((int)_Capacity);

            Statistic.Reset();
            Statistic.capacity = this.Capacity;

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
            Simulation.Tell(logic.wait, 0, 0, null);
        }


        /// <summary>
        /// There are a few bugs in the currently used
        /// SimNet library considering resources in combination with waitfor and give. 
        /// If these things are resolved the code in this class should be outfactored into 
        /// the enclosing main class
        /// </summary>
        private class NestedClassSimulationLogic
        {
            private ActivityWaitML parent;

            public NestedClassSimulationLogic(ActivityWaitML parent)
            {
                this.parent = parent;
            }

            [TELL]
            public void wait(double t, double priority, params object[] p)
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

                // work starts when all resources are available
                for (int i = 0; i < parent.ResourceDependencies.Count; i++)
                {
                    try
                    {
                        Simulation.WaitFor(parent.ResourceDependencies[i].Resource.obj.Give, this, parent.ResourceDependencies[i].Count, ref interrupt);
                    }
                    catch { }
                }


                if(decrementInQueue) parent.Statistic.InQueue--;

                parent.Statistic.InWork++;

                var value = parent.Distribution.GetNextValue();

                var startConnectorML = parent.OutConnectors["Out"];
                var entityML = parent.GetProvidedEntity(startConnectorML);

                // wait
                try
                {
                    Simulation.Wait(value, ref interrupt);
                }
                catch { }



                parent.Statistic.Processed++;
                parent.Statistic.InWork--;

                // Send Entity to next activity
                parent.SendEntity(startConnectorML, entityML);
                
                // takeback resource, so that other blocked tell methods can continue there work

                for (int i = 0; i < parent.ResourceDependencies.Count; i++)
                {
                    parent.ResourceDependencies[i].Resource.obj.TakeBack(this, parent.ResourceDependencies[i].Count);
                }

                parent.resource.TakeBack(this, 1);

            }

        }




    }
}
