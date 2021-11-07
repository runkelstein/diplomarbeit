namespace SimNetUI.ModelLogic.Activities.ModelProperties.Distributions
{
    public class FixedML : DistributionBaseML
    {




        #region Properties
            #region private members
                private double _Value;
            #endregion

            #region Property Wrapper
                public double Value
                {
                    get { return _Value; }
                    set { _Value = value; OnPropertyChanged("Value"); }
                }
            #endregion
        #endregion


        #region Overrides

            public override double GetNextValue()
            {
                return Value;
            }

        #endregion

    }
}
