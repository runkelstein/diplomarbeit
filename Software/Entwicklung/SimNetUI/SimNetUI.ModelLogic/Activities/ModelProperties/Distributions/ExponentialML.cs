namespace SimNetUI.ModelLogic.Activities.ModelProperties.Distributions
{
    public class ExponentialML : ProbabilityDistributionBaseML
    {



        #region Properties
            #region private members
                private double _Alpha;
            #endregion

            #region Property Wrapper
                public double Alpha
                {
                    get { return _Alpha; }
                    set { _Alpha = value; OnPropertyChanged("Alpha"); }
                }
            #endregion
        #endregion

        #region Overrides

        public override double GetNextValue()
        {
            return random.Exponential(Alpha);
        }

        #endregion


    }
}
