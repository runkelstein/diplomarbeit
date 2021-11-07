namespace SimNetUI.ModelLogic.Activities.ModelProperties.Distributions
{
    public class UniformDoubleML : ProbabilityDistributionBaseML
    {


        #region Properties
            #region private members
                private double _Min;
                private double _Max;
            #endregion

            #region Property Wrapper

                public double Min
                {
                    get { return _Min; }
                    set { _Min = value; OnPropertyChanged("Min"); }
                }

                public double Max
                {
                    get { return _Max; }
                    set { _Max = value; OnPropertyChanged("Max"); }
                }

            #endregion
        #endregion

        #region Overrides

            public override double GetNextValue()
            {
                return random.UniformDouble(Min, Max);
            }

        #endregion
    }
}
