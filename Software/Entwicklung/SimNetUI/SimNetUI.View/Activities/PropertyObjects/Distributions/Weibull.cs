using System.Windows;
using System.Windows.Data;
using System.ComponentModel;
using SimNetUI.ModelLogic.Activities.ModelProperties.Distributions;

namespace SimNetUI.Activities.PropertyObjects.Distributions
{
    public class Weibull : ProbabilityDistributionBase
    {
        #region internal (reference to modell)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var distribution = obj as Weibull;
            var distributionML = e.NewValue as WeibullML;

            if (distributionML != null)
            {
                distribution.SetUpBinding(AlphaProperty);
                distribution.SetUpBinding(BetaProperty);
            }
        }

        #endregion

        public static readonly DependencyProperty AlphaProperty =
            DependencyProperty.Register("Alpha",
                                        typeof (double),
                                        typeof (Weibull),
                                        new FrameworkPropertyMetadata(null));

        [CategoryAttribute("Simulation")]
        public double Alpha
        {
            get { return (double) GetValue(AlphaProperty); }
            set { SetValue(AlphaProperty, value); }
        }

        public static readonly DependencyProperty BetaProperty =
            DependencyProperty.Register("Beta",
                                        typeof (double),
                                        typeof (Weibull),
                                        new FrameworkPropertyMetadata(null));

        [CategoryAttribute("Simulation")]
        public double Beta
        {
            get { return (double) GetValue(BetaProperty); }
            set { SetValue(BetaProperty, value); }
        }

        #region constructor

        static Weibull()
        {
            UpdateModelLogicMetaData();

            // By overrindg the metadata of this property, the PropertyChangedCallback of the base class 
            // DistributionBase and this class will both be invoked when this property has been changed
            ModelLogicProperty.OverrideMetadata(
                typeof (Weibull),
                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                );
        }

        public Weibull()
            : base()
        {
            if (!DesignerProperties.GetIsInDesignMode(this))
                this.ModelLogic = new WeibullML();
        }

        #endregion
    }
}