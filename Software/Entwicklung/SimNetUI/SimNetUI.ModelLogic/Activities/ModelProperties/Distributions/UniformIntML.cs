namespace SimNetUI.ModelLogic.Activities.ModelProperties.Distributions
{
    public class UniformIntML : ProbabilityDistributionBaseML
    {


        #region Properties
            #region private members
                private int _Min;
                private int _Max;
            #endregion

            #region Property Wrapper

                public int Min
                {
                    get { return _Min; }
                    set { _Min = value; OnPropertyChanged("Min"); }
                }

                public int Max
                {
                    get { return _Max; }
                    set { _Max = value; OnPropertyChanged("Max"); }
                }

            #endregion

        #endregion

        #region Overrides

        public override double GetNextValue()
        {
            return random.UniformInt(Min, Max);
        }

        #endregion
    }
}
