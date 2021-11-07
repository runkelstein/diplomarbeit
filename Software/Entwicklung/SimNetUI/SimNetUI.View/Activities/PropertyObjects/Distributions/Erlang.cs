using System.Windows;
using System.ComponentModel;
using System.Windows.Data;
using SimNetUI.ModelLogic.Activities.ModelProperties.Distributions;

namespace SimNetUI.Activities.PropertyObjects.Distributions
{
    public class Erlang : ProbabilityDistributionBase
    {
        #region internal (reference to modell)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var distribution = obj as Erlang;
            var distributionML = e.NewValue as ErlangML;

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
                                        typeof (Erlang),
                                        new FrameworkPropertyMetadata(null));

        [CategoryAttribute("Simulation")]
        public double Alpha
        {
            get { return (double) GetValue(AlphaProperty); }
            set { SetValue(AlphaProperty, value); }
        }

        public static readonly DependencyProperty BetaProperty =
            DependencyProperty.Register("Beta",
                                        typeof (int),
                                        typeof (Erlang),
                                        new FrameworkPropertyMetadata(null));

        [CategoryAttribute("Simulation")]
        public int Beta
        {
            get { return (int) GetValue(BetaProperty); }
            set { SetValue(BetaProperty, value); }
        }

        #region constructor

        static Erlang()
        {
            UpdateModelLogicMetaData();

            // By overrindg the metadata of this property, the PropertyChangedCallback of the base class 
            // DistributionBase and this class will both be invoked when this property has been changed
            ModelLogicProperty.OverrideMetadata(
                typeof (Erlang),
                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                );
        }

        public Erlang()
            : base()
        {
            if (!DesignerProperties.GetIsInDesignMode(this))
                this.ModelLogic = new ErlangML();
        }

        #endregion
    }
}