using System.Windows;
using System.ComponentModel;
using System.Windows.Data;
using SimNetUI.ModelLogic.Activities.ModelProperties.Distributions;

namespace SimNetUI.Activities.PropertyObjects.Distributions
{
    public class Triangular : ProbabilityDistributionBase
    {
        #region internal (reference to modell)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var distribution = obj as Triangular;
            var distributionML = e.NewValue as TriangularML;

            if (distributionML != null)
            {

                distribution.SetUpBinding(MinProperty);
                distribution.SetUpBinding(MaxProperty);
                distribution.SetUpBinding(ModeProperty);
            }
        }

        #endregion

        public static readonly DependencyProperty MinProperty =
            DependencyProperty.Register("Min",
                                        typeof (double),
                                        typeof (Triangular),
                                        new FrameworkPropertyMetadata(null));

        [CategoryAttribute("Simulation")]
        public double Min
        {
            get { return (double) GetValue(MinProperty); }
            set { SetValue(MinProperty, value); }
        }

        public static readonly DependencyProperty ModeProperty =
            DependencyProperty.Register("Mode",
                                        typeof (double),
                                        typeof (Triangular),
                                        new FrameworkPropertyMetadata(null));

        [CategoryAttribute("Simulation")]
        public double Mode
        {
            get { return (double) GetValue(ModeProperty); }
            set { SetValue(ModeProperty, value); }
        }

        public static readonly DependencyProperty MaxProperty =
            DependencyProperty.Register("Max",
                                        typeof (double),
                                        typeof (Triangular),
                                        new FrameworkPropertyMetadata(null));

        [CategoryAttribute("Simulation")]
        public double Max
        {
            get { return (double) GetValue(MaxProperty); }
            set { SetValue(MaxProperty, value); }
        }

        #region constructor

        static Triangular()
        {
            UpdateModelLogicMetaData();

            // By overrindg the metadata of this property, the PropertyChangedCallback of the base class 
            // DistributionBase and this class will both be invoked when this property has been changed
            ModelLogicProperty.OverrideMetadata(
                typeof (Triangular),
                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                );
        }

        public Triangular() : base()
        {
            if (!DesignerProperties.GetIsInDesignMode(this))
                this.ModelLogic = new TriangularML();
        }

        #endregion
    }
}