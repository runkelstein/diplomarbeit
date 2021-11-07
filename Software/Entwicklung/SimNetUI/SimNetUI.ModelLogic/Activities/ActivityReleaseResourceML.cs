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
using SimNetUI.ModelLogic.Resources;


namespace SimNetUI.ModelLogic.Activities
{
    public class ActivityReleaseResourceML : ActivityQueueBaseML, IStatisticInfo<ActivityReleaseResourceStatisticInfoML>
    {


        #region Properties
            #region private members
                private ActivityReleaseResourceStatisticInfoML _Statistic;
                private ReadOnlyCollection<ResourceDependencyML> _EntityResourceDependencies;
            #endregion

            #region property wrapper

                public ActivityReleaseResourceStatisticInfoML Statistic
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

        public ActivityReleaseResourceML()
                    : base() 
        {

        }

        /// <summary>
        /// This method will do a cleanup before a new simulation will
        /// be started
        /// </summary>
        internal override void OnResetActivity()
        {
            Statistic.Reset();

            foreach (var dependency in this.EntityResourceDependencies)
            {
                dependency.Resource.clearResource();
            }

            base.OnResetActivity();

        }


        internal override void RecalculateTimeBasedStatistics(double SimulationTime)
        {

            
        }

         /// <summary>
        /// This methods allows an activity to act uppon an entities arrival
        /// </summary>
        /// <param name="inConnectorML">the InConnector of the current activity</param>
        /// <param name="outConnectorML">the OutConnector of the previous activity</param>
        /// <param name="entityML"></param>
        internal override void OnReceiveEntity(InConnectorML inConnectorML, OutConnectorML outConnectorML)
        {

            var startConnectorML = OutConnectors["Out"];
            var entityML = GetProvidedEntity(startConnectorML);

            Func<ResourceML, int> NumberToBeReleased =
                (resource) =>
                {
                    var entries = from e in entityML.ResourceDependencies
                                  where e.Resource == resource
                                  select e;

                    // its always 0 or 1
                    if (entries.Count() > 0)
                    {
                        return entries.First().Count;
                    }

                    return 0;

                };


            foreach (var entry in this.EntityResourceDependencies)
            {
                var count = NumberToBeReleased(entry.Resource);


                if (count > 0)
                {
                    if (count > entry.Count)
                        count = entry.Count;

                    entry.Resource.obj.TakeBack(entityML, count);
                    Statistic.ReleasedResources += (uint)count;
                }

            }

            Statistic.ProcessedEntities++;


            SendEntity(startConnectorML, entityML);

        }

    }
}
