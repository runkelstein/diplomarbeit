using SimNetUI.ModelLogic.Base;

namespace SimNetUI.ModelLogic.Activities.ModelProperties.Distributions
{
    public abstract class DistributionBaseML : ModelLogicBase
    {
        /// <summary>
        /// If a "Distribution" object is used within a schedule (in xaml code), 
        /// attached properties can be set to such a distributions. These values also have to be saved
        /// into the "LogicModel" too.
        /// </summary>
        #region Schedule Attached Properties

            #region private members
                private double _ScheduleDuration;
            #endregion

            #region
                public double ScheduleDuration
                {
                    get { return _ScheduleDuration; }
                    set { _ScheduleDuration = value; OnPropertyChanged("ScheduleDuration"); }
                }
            #endregion

        #endregion

        public abstract double GetNextValue();
    }
}
