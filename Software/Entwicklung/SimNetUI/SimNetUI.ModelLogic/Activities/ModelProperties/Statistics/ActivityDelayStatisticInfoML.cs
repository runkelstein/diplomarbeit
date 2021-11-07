namespace SimNetUI.ModelLogic.Activities.ModelProperties.Statistics
{
    abstract public class ActivityDelayBaseStatisticInfoML : ActivityQueueBaseStatisticInfoML
    {

        internal override void Reset()
        {
            base.Reset();

            // Properties
            WorkingTime = 0;
            OffTime = 0;
            Processed = 0;
        }

        #region Properties

            #region private members
                private double _WorkingTime;
                private double _OffTime;
                private uint _Processed;
            #endregion

            #region property wrapper

                public uint Processed
                {
                    get { return _Processed; }
                    set { _Processed = value; OnPropertyChanged("Processed"); }
                }



                public double WorkingTime
                {
                    get { return _WorkingTime; }
                    set { _WorkingTime = value; OnPropertyChanged("WorkingTime"); }
                }

                public double OffTime
                {
                    get { return _OffTime; }
                    set { _OffTime = value; OnPropertyChanged("OffTime"); }
                }

            #endregion

        #endregion
    }
}
