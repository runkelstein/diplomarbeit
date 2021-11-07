using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SimNetUI.ModelLogic.Activities.ModelProperties.Connections;
using SimNetUI.ModelLogic.Base;
using System.Collections.ObjectModel;
using SimNetUI.ModelLogic.Entity;
using System.Threading;


namespace SimNetUI.ModelLogic.Activities.Base
{
    abstract public class ActivityBaseML : ModelLogicBase
    {




        #region Properties

        #region private members
            private Dictionary<string, InConnectorML> _InConnectors;
            private Dictionary<string, OutConnectorML> _OutConnectors;
            private SimulationML _Parent;        
        #endregion

        #region Property Wrappers

            public SimulationML SimulationParent
            {
                get { return _Parent; }
                set { _Parent = value; OnPropertyChanged("SimulationParent"); }
            }

            public Dictionary<string, InConnectorML> InConnectors {
                get
                {
                    return _InConnectors;
                }
                set
                {
                    _InConnectors = value;

                    OnPropertyChanged("InConnectors");
                }
            }

            public Dictionary<string, OutConnectorML> OutConnectors
            {
                get
                {
                    return _OutConnectors;
                }
                set
                {
                    _OutConnectors = value;
                    OnPropertyChanged("OutConnectors");
                }
            }

        #endregion

        #endregion


        #region SimulationLogic



        /// <summary>
        /// This method will do a cleanup before a new simulation will
        /// be started
        /// </summary>
        internal virtual void OnResetActivity()
        {
            // clean up
        }

        /// <summary>
        /// This methods allows an activity to act uppon an entities arrival
        /// </summary>
        /// <param name="targetConnectorML"></param>
        /// <param name="startConnectorML"></param>
        /// <param name="entityML"></param>
        abstract internal void OnReceiveEntity(InConnectorML targetConnectorML, OutConnectorML startConnectorML);


        /// <summary>
        /// This Method allows activities to recalculate there statistics which are influnced by
        /// simulation time. Everytime simulation time moves forward this method will be called for all
        /// activities.
        /// </summary>
        abstract internal void RecalculateTimeBasedStatistics(double SimulationTime);






        #endregion

        public ActivityBaseML()
        {
            OutConnectors = new Dictionary<string, OutConnectorML>();
            InConnectors = new Dictionary<string, InConnectorML>();


        }
    }
}
