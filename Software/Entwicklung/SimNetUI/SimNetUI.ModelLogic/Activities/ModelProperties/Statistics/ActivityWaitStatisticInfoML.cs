using SimNet;
namespace SimNetUI.ModelLogic.Activities.ModelProperties.Statistics
{
    public class ActivityWaitStatisticInfoML : ActivityDelayBaseStatisticInfoML
    {

        #region calculation
            private double workTimeIntegral;
            private double oldTime;
            internal uint capacity { get; set; }

            internal override void UpdateTimeBasedStatistics()
            {
                base.UpdateTimeBasedStatistics();
                UpdateWorkStatistics();
            }

            private void UpdateWorkStatistics()
            {
                var simTime = Simulation.SimTime();

                // time integral
                workTimeIntegral += (InWork * (simTime - oldTime));


                if (InWork == 0)
                {
                    OffTime = simTime - WorkingTime;
                }
                else
                {
                    WorkingTime += (simTime - oldTime);
                }

                oldTime = simTime;

                // Properties

                AverageInWork = workTimeIntegral / simTime;
                Busy = workTimeIntegral / (simTime * capacity);

                if (InWork > MaxInWork)
                    MaxInWork = InWork;



            }


        #endregion

        #region overrides

        internal override void Reset()
        {
            base.Reset();

            // private members
            oldTime = 0;
            workTimeIntegral = 0;

            // Properties
            InWork = 0;
            MaxInWork = 0;
            AverageInWork = 0;
            Busy = 0;

        }

        #endregion

        #region Properties

        #region private members

        private uint _InWork;
                private uint _MaxInWork;
                private double _AverageInWork;
                private double _Busy;
            #endregion

            #region property wrapper

                public uint InWork
                {
                    get { return _InWork; }
                    set {
                        UpdateWorkStatistics();
                        _InWork = value; 
                        OnPropertyChanged("InWork"); }
                }

                public uint MaxInWork
                {
                    get { return _MaxInWork; }
                    set { _MaxInWork = value; OnPropertyChanged("MaxInWork"); }
                }

                public double Busy
                {
                    get { return _Busy; }
                    set { _Busy = value; OnPropertyChanged("Busy"); }
                }

                public double AverageInWork
                {
                    get { return _AverageInWork; }
                    set { _AverageInWork = value; OnPropertyChanged("AverageInWork"); }
                }

            #endregion

        #endregion
    }
}
