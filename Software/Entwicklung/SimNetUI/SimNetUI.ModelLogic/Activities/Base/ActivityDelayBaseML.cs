using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
using SimNetUI.ModelLogic.Activities.ModelProperties.Distributions;
using SimNetUI.ModelLogic.Activities.ModelProperties.Resources;


namespace SimNetUI.ModelLogic.Activities.Base
{
    abstract public class ActivityDelayBaseML : ActivityQueueBaseML
    {
        #region Properties


            #region private members
                private DistributionBaseML _Distribution;
                private ReadOnlyCollection<ResourceDependencyML> _ResourceDependencies;
            #endregion

            #region property wrappers
                public DistributionBaseML Distribution
                {
                    get { return _Distribution; }
                    set { _Distribution = value; OnPropertyChanged("Distribution"); }
                }

                public ReadOnlyCollection<ResourceDependencyML> ResourceDependencies
                {
                    get { return _ResourceDependencies; }
                    set { _ResourceDependencies = value; OnPropertyChanged("ResourceDependencies"); }
                }

            #endregion


        #endregion


                protected bool AllResourcesAvailable()
                {
                    foreach (var dependency in _ResourceDependencies)
                    {
                        if (dependency.Resource.obj.Resources < dependency.Count)
                            return false;
                    }
                    return true;
                }

        #region SimulationLogic

        internal override void OnResetActivity()
        {
            // after a simulation run, resources might still be 
            // assigned to some activity, therefore they need to be reseted
            foreach (var dependency in _ResourceDependencies)
            {
                dependency.Resource.clearResource();
            }

            // if the seed is specified, same numbers will be generated for every simulation run
            var probabilityDistribution = Distribution as ProbabilityDistributionBaseML;
            if (probabilityDistribution != null)
                probabilityDistribution.ResetRandomNumberGenerator();

            base.OnResetActivity();
        }

        #endregion


    }
}
