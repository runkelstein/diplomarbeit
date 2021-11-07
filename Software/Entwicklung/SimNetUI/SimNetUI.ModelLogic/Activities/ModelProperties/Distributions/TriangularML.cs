namespace SimNetUI.ModelLogic.Activities.ModelProperties.Distributions
{
    public class TriangularML : ProbabilityDistributionBaseML
    {




        #region Properties
            #region private members
                private double _Min;
                private double _Max;
                private double _Mode;
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

                public double Mode
                {
                    get { return _Mode; }
                    set { _Mode = value; OnPropertyChanged("Max"); }
                }
            #endregion
        #endregion

        #region Overrides

            public override double GetNextValue()
            {
                return random.Triangular(Min, Mode, Max);
            }

        #endregion
    }
}
