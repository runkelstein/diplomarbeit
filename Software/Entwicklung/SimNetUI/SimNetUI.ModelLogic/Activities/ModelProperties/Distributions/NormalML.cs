﻿namespace SimNetUI.ModelLogic.Activities.ModelProperties.Distributions
{
    public class NormalML : ProbabilityDistributionBaseML
    {




        #region Properties
            #region private members
                private double _Alpha;
                private double _Beta;
            #endregion

            #region Property Wrapper

                public double Alpha
                {
                    get { return _Alpha; }
                    set { _Alpha = value; OnPropertyChanged("Alpha"); }
                }

                public double Beta
                {
                    get { return _Beta; }
                    set { _Beta = value; OnPropertyChanged("Beta"); }
                }

            #endregion
        #endregion

        #region Overrides

            public override double GetNextValue()
            {
                return random.Normal(Alpha, Beta);
            }

        #endregion
    }
}