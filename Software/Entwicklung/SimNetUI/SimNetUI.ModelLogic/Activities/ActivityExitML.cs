using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SimNetUI.ModelLogic.Activities.Base;
using SimNetUI.ModelLogic.Activities.ModelProperties.Connections;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;
using SimNetUI.ModelLogic.Base;
using SimNetUI.ModelLogic.Entity;

namespace SimNetUI.ModelLogic.Activities
{
    public class ActivityExitML : ActivityBaseML, IStatisticInfo<ActivityExitStatisticInfoML>
    {

        #region Properties
            #region private members
                private ActivityExitStatisticInfoML _Statistic;
                private uint _EndSimulationAtEntityCount;
            #endregion

            #region property wrapper

                public ActivityExitStatisticInfoML Statistic
                {
                    get { return _Statistic; }
                    set { _Statistic = value; OnPropertyChanged("Statistic"); }
                }

                public uint EndSimulationAtEntityCount
                {
                    get { return _EndSimulationAtEntityCount; }
                    set { _EndSimulationAtEntityCount = value; OnPropertyChanged("EndSimulationAtEntityCount"); }
                }
            #endregion

        #endregion

        #region SimulationLogic


            internal override void RecalculateTimeBasedStatistics(double SimulationTime) {
                // nothing to do here
            }

            internal override void OnResetActivity()
            {
                Statistic.Reset();
                base.OnResetActivity();
            }

            internal override void OnReceiveEntity(InConnectorML targetConnectorML, OutConnectorML startConnectorML)
            {
                this.Statistic.ArrivedEntities++;

                if (this.Statistic.ArrivedEntities >= this.EndSimulationAtEntityCount)
                {
                    this.SimulationParent.StopSimulation();
                }

            }

        #endregion

    }
}
