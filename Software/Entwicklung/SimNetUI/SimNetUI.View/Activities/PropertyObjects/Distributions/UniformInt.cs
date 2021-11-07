using System.Windows;
using System.Windows.Data;
using System.ComponentModel;
using SimNetUI.ModelLogic.Activities.ModelProperties.Distributions;

namespace SimNetUI.Activities.PropertyObjects.Distributions
{
    public class UniformInt : ProbabilityDistributionBase
    {
        #region internal (reference to modell)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var distribution = obj as UniformInt;
            var distributionML = e.NewValue as UniformIntML;

            if (distributionML != null)
            {

                distribution.SetUpBinding(MinProperty);
                distribution.SetUpBinding(MaxProperty);

            }
        }

        #endregion

        public static readonly DependencyProperty MinProperty =
            DependencyProperty.Register("Min",
                                        typeof (int),
                                        typeof (UniformInt),
                                        new FrameworkPropertyMetadata(null));

        [CategoryAttribute("Simulation")]
        public int Min
        {
            get { return (int) GetValue(MinProperty); }
            set { SetValue(MinProperty, value); }
        }

        public static readonly DependencyProperty MaxProperty =
            DependencyProperty.Register("Max",
                                        typeof (int),
                                        typeof (UniformInt),
                                        new FrameworkPropertyMetadata(null));

        [CategoryAttribute("Simulation")]
        public int Max
        {
            get { return (int) GetValue(MaxProperty); }
            set { SetValue(MaxProperty, value); }
        }

        #region constructor

        static UniformInt()
        {
            UpdateModelLogicMetaData();

            // By overrindg the metadata of this property, the PropertyChangedCallback of the base class 
            // DistributionBase and this class will both be invoked when this property has been changed
            ModelLogicProperty.OverrideMetadata(
                typeof (UniformInt),
                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                );
        }

        public UniformInt()
            : base()
        {
            if (!DesignerProperties.GetIsInDesignMode(this))
                this.ModelLogic = new UniformIntML();
        }

        #endregion
    }
}