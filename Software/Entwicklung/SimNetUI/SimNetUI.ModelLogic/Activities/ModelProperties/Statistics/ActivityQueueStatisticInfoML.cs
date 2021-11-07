using SimNetUI.ModelLogic.Base;
using SimNet;
namespace SimNetUI.ModelLogic.Activities.ModelProperties.Statistics
{
    abstract public class ActivityQueueBaseStatisticInfoML : ActivityRouteBaseStatisticInfoML
    {

        #region overrides

        internal override void Reset()
        {
            base.Reset();

            // private members
            queueTimeIntegral = 0;
            oldTime = 0;

            // properties
            InQueue = 0;
            MaxInQueue = 0;
            AverageInQueue = 0;

        }
        
        #endregion

        #region calculation
            private double queueTimeIntegral;
            private double oldTime;

            internal override void UpdateTimeBasedStatistics() {
                base.UpdateTimeBasedStatistics();
                UpdateQueueStatistics();
            }

            private void UpdateQueueStatistics()
            {
                // time integral
                queueTimeIntegral += (InQueue * (Simulation.SimTime()-oldTime));
                oldTime = Simulation.SimTime();

                // Properties
                
                AverageInQueue = queueTimeIntegral / Simulation.SimTime();

                if (InQueue > MaxInQueue)
                {
                    MaxInQueue = InQueue;
                }


            }
        
        #endregion

        #region Properties

            #region private members

                private uint _InQueue;
                private uint _MaxInQueue;
                private double _AverageInQueue;

            #endregion

            #region property wrapper

                public uint InQueue
                {
                    get { return _InQueue; }
                    set {
                        UpdateQueueStatistics();
                        _InQueue = value; 
                        OnPropertyChanged("InQueue"); }
                }

                public uint MaxInQueue
                {
                    get { return _MaxInQueue; }
                    set { 
                        
                        _MaxInQueue = value; 
                        OnPropertyChanged("MaxInQueue"); }
                }

                public double AverageInQueue
                {
                    get { return _AverageInQueue; }
                    set { _AverageInQueue = value; OnPropertyChanged("AverageInQueue"); }
                }

            #endregion

        #endregion
    }
}
