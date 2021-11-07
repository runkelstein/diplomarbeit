using System.Windows;
using System.Windows.Data;
using System.ComponentModel;
using SimNetUI.ModelLogic.Activities.ModelProperties.Distributions;

namespace SimNetUI.Activities.PropertyObjects.Distributions
{
    public class Fixed : DistributionBase
    {
        #region internal (reference to ModelLogic)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var distribution = obj as Fixed;
            var distributionML = e.NewValue as FixedML;

            if (distributionML != null)
            {
                distribution.SetUpBinding(ValueProperty);
            }
        }

        #endregion

        public static readonly DependencyProperty ValueProperty =
            DependencyProperty.Register("Value",
                                        typeof (double),
                                        typeof (Fixed),
                                        new FrameworkPropertyMetadata(null));

        [CategoryAttribute("Simulation")]
        public double Value
        {
            get { return (double) GetValue(ValueProperty); }
            set { SetValue(ValueProperty, value); }
        }

        #region constructor

        static Fixed()
        {
            // By overrindg the metadata of this property, the PropertyChangedCallback of the base class 
            // DistributionBase and this class will both be invoked when this property has been changed
            ModelLogicProperty.OverrideMetadata(
                typeof (Fixed),
                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                );
        }

        public Fixed()
            : base()
        {
            if (!DesignerProperties.GetIsInDesignMode(this))
                this.ModelLogic = new FixedML();
        }

        #endregion
    }
}