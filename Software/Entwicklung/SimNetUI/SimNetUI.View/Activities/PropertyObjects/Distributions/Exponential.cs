using System.Windows;
using System.Windows.Data;
using System.ComponentModel;
using SimNetUI.ModelLogic.Activities.ModelProperties.Distributions;

namespace SimNetUI.Activities.PropertyObjects.Distributions
{
    public class Exponential : ProbabilityDistributionBase
    {
        #region internal (reference to ModelLogic)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var distribution = obj as Exponential;
            var distributionML = e.NewValue as ExponentialML;

            if (distributionML != null)
            {
                distribution.SetUpBinding(AlphaProperty);
            }
        }

        #endregion

        public static readonly DependencyProperty AlphaProperty =
            DependencyProperty.Register("Alpha",
                                        typeof (double),
                                        typeof (Exponential),
                                        new FrameworkPropertyMetadata(null));

        [CategoryAttribute("Simulation")]
        public double Alpha
        {
            get { return (double) GetValue(AlphaProperty); }
            set { SetValue(AlphaProperty, value); }
        }

        #region constructor

        static Exponential()
        {
            UpdateModelLogicMetaData();

            // By overrindg the metadata of this property, the PropertyChangedCallback of the base class 
            // DistributionBase and this class will both be invoked when this property has been changed
            ModelLogicProperty.OverrideMetadata(
                typeof (Exponential),
                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                );
        }

        public Exponential()
            : base()
        {
            if (!DesignerProperties.GetIsInDesignMode(this))
                this.ModelLogic = new ExponentialML();
        }

        #endregion
    }
}