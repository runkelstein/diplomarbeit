using System.Windows;
using System.Windows.Data;
using System.ComponentModel;
using SimNetUI.ModelLogic.Activities.ModelProperties.Distributions;

namespace SimNetUI.Activities.PropertyObjects.Distributions
{
    public class UniformDouble : ProbabilityDistributionBase
    {
        #region internal (reference to modell)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var distribution = obj as UniformDouble;
            var distributionML = e.NewValue as UniformDoubleML;

            if (distributionML != null)
            {


                distribution.SetUpBinding(MinProperty);
                distribution.SetUpBinding(MaxProperty);

            }
        }

        #endregion

        public static readonly DependencyProperty MinProperty =
            DependencyProperty.Register("Min",
                                        typeof (double),
                                        typeof (UniformDouble),
                                        new FrameworkPropertyMetadata(null));

        [CategoryAttribute("Simulation")]
        public double Min
        {
            get { return (double) GetValue(MinProperty); }
            set { SetValue(MinProperty, value); }
        }

        public static readonly DependencyProperty MaxProperty =
            DependencyProperty.Register("Max",
                                        typeof (double),
                                        typeof (UniformDouble),
                                        new FrameworkPropertyMetadata(null));

        [CategoryAttribute("Simulation")]
        public double Max
        {
            get { return (double) GetValue(MaxProperty); }
            set { SetValue(MaxProperty, value); }
        }

        #region constructor

        static UniformDouble()
        {
            UpdateModelLogicMetaData();

            // By overrindg the metadata of this property, the PropertyChangedCallback of the base class 
            // DistributionBase and this class will both be invoked when this property has been changed
            ModelLogicProperty.OverrideMetadata(
                typeof (UniformDouble),
                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                );
        }

        public UniformDouble()
            : base()
        {
            if (!DesignerProperties.GetIsInDesignMode(this))
                this.ModelLogic = new UniformDoubleML();
        }

        #endregion
    }
}