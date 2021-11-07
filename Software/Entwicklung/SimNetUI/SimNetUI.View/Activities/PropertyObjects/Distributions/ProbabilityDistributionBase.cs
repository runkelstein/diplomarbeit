using System.Windows;
using System.ComponentModel;
using System.Windows.Data;
using SimNetUI.ModelLogic.Activities.ModelProperties.Distributions;

namespace SimNetUI.Activities.PropertyObjects.Distributions
{
    public abstract class ProbabilityDistributionBase : DistributionBase
    {
        #region internal (reference to modell)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var distribution = obj as ProbabilityDistributionBase;
            var distributionML = e.NewValue as ProbabilityDistributionBaseML;

            if (distributionML != null)
            {
                distribution.SetUpBinding(SeedProperty);
            }
        }

        #endregion

        public static readonly DependencyProperty SeedProperty =
            DependencyProperty.Register("Seed", typeof (int), typeof (ProbabilityDistributionBase),
                                        new FrameworkPropertyMetadata(0));


        [CategoryAttribute("Simulation")]
        public int Seed
        {
            get { return (int) GetValue(SeedProperty); }
            set { SetValue(SeedProperty, value); }
        }


        private static bool MetaDataInitialized = false;

        internal static void UpdateModelLogicMetaData()
        {
            if (!MetaDataInitialized)
            {
                // By overrindg the metadata of this property, the PropertyChangedCallback of the base class 
                // DistributionBase and this class will both be invoked when this property has been changed
                ModelLogicProperty.OverrideMetadata(
                    typeof (ProbabilityDistributionBase),
                    new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                    );
                MetaDataInitialized = true;
            }
        }

        public ProbabilityDistributionBase() : base()
        {
        }
    }
}