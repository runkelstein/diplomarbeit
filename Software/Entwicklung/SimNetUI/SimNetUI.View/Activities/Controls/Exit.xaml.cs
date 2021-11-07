using System;
using System.Windows;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;
using System.ComponentModel;
using SimNetUI.ModelLogic.Activities;
using SimNetUI.Activities.Base;
using SimNetUI.Activities.PropertyObjects.Statistics;

namespace SimNetUI.Activities.Controls
{
    /// <summary>
    /// Interaktionslogik für Generator.xaml
    /// </summary>
    [DesignTimeVisible(true)]
    public partial class Exit : ActivityBase
    {
        #region ModelLogic interaction

        #region overrides

        #endregion

        #endregion

        #region XAML Properties

        #region DependencyProperty registration

        public static readonly DependencyProperty EndSimulationAtEntityCountProperty =
            DependencyProperty.Register("EndSimulationAtEntityCount", typeof (uint), typeof (Exit),
                                        new FrameworkPropertyMetadata(uint.MaxValue));

        public static readonly DependencyProperty StatisticProperty =
            DependencyProperty.Register("Statistics", typeof(ExitStatisticInfo), typeof(Exit),
                                        new FrameworkPropertyMetadata(OnStatisticChanged));

        #endregion

        #region property wrappers

        [CategoryAttribute("Simulation")]
        [DisplayName("End simulation at entity count")]
        public uint EndSimulationAtEntityCount
        {
            get { return (uint) GetValue(EndSimulationAtEntityCountProperty); }
            set { SetValue(EndSimulationAtEntityCountProperty, value); }
        }

        [CategoryAttribute("Simulation")]
        public ExitStatisticInfo Statistics
        {
            get { return (ExitStatisticInfo) GetValue(StatisticProperty); }
        }

        #endregion

        #region property changed events
        public static void OnStatisticChanged(DependencyObject obj, DependencyPropertyChangedEventArgs args)
        {
            var activity = obj as Exit;

            var statistic = args.NewValue as ExitStatisticInfo;

            if (statistic != null && activity.ModelLogic != null)
            {
                var activityML = activity.ModelLogic as ActivityExitML;
                activityML.Statistic = statistic.ModelLogic as ActivityExitStatisticInfoML;
            }
        }
        #endregion

        #endregion

        #region internal Properties (not for use in Xaml)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var activity = obj as Exit;
            var activityML = e.NewValue as ActivityExitML;

            if (activityML != null)
            {
                // create statistics object
                activity.SetValue(StatisticProperty, new ExitStatisticInfo());
                activity.SetUpBinding(EndSimulationAtEntityCountProperty);
            }
        }

        #endregion

        #region construction

        protected override void OnInitialized(EventArgs e)
        {
            ModelLogic = new ActivityExitML();
            // The connectors will be registered, after all properties of 
            // the control have been initialized
            this.RegisterConnector(In);

            base.OnInitialized(e);
        }

        static Exit()
        {
            // By overrindg the metadata of this property, the PropertyChangedCallback of the base class 
            // ActivityBase and this class will both be invoked when this property has been changed
            ModelLogicProperty.OverrideMetadata(typeof (Exit),
                                                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged));
        }

        public Exit()
        {
            InitializeComponent();
        }

        #endregion

        public override string ToString()
        {
            return "Exit";
        }
    }
}