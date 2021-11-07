using SimNet;
using System;

namespace SimNetUI.ModelLogic.Activities.ModelProperties.Distributions
{
    public abstract class ProbabilityDistributionBaseML : DistributionBaseML
    {

        #region protected members
            protected RandomObj random;
        #endregion

        #region Properties

            #region private members
                private int _Seed;
            #endregion

                
            #region Properties
                public int Seed
                {
                    get { return _Seed; }
                    set
                    {
                        _Seed = value;
                        ResetRandomNumberGenerator();
                        OnPropertyChanged("Seed");
                    }
                }

            #endregion

        #endregion

        /// <summary>
        /// This method will be called before the Simulation starts, this ensures that
        /// in every run the same numbers will be generated. If the specified seed is 0 than a 
        /// random seed will be used instead
        /// </summary>
        internal void ResetRandomNumberGenerator() {
            
            if (_Seed == 0) random.SetSeed((int)DateTime.Now.Ticks);
            else random.SetSeed(_Seed);
        }

        #region constructor

            public ProbabilityDistributionBaseML()
            {
                random = new RandomObj();
            }

        #endregion


    }
}
