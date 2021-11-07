using System.Windows;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;

namespace SimNetUI.Activities.PropertyObjects.Statistics
{
    /// <summary>
    /// 
    /// </summary>
    public class WaitStatisticInfo : ActivityDelayBaseStatisticInfo
    {
        #region Properties

        #region Dependency Registration

        public static readonly DependencyProperty BusyProperty =
            DependencyProperty.Register("Busy", typeof(double), typeof(ActivityDelayBaseStatisticInfo),
                                        new FrameworkPropertyMetadata(0.0));

        public static readonly DependencyProperty InWorkProperty =
            DependencyProperty.Register("InWork", typeof (uint), typeof (WaitStatisticInfo),
                                        new FrameworkPropertyMetadata(0U, OnInWorkChanged));

        public static readonly DependencyProperty MaxInWorkProperty =
            DependencyProperty.Register("MaxInWork", typeof (uint), typeof (WaitStatisticInfo),
                                        new FrameworkPropertyMetadata(0U));

        public static readonly DependencyProperty AverageInWorkProperty =
            DependencyProperty.Register("AverageInWork", typeof (double), typeof (WaitStatisticInfo),
                                        new FrameworkPropertyMetadata(0.0));


        public static readonly DependencyProperty IsProcessingProperty =
            DependencyProperty.Register("IsProcessing", typeof (bool), typeof (WaitStatisticInfo),
                                        new FrameworkPropertyMetadata(false));

        #endregion

        #region Property wrappers

        public double Busy
        {
            get { return (double)GetValue(BusyProperty); }
        }

        public bool IsProcessing
        {
            get { return (bool) GetValue(IsProcessingProperty); }
        }

        public uint InWork
        {
            get { return (uint) GetValue(InWorkProperty); }
        }

        public uint MaxInWork
        {
            get { return (uint) GetValue(MaxInWorkProperty); }
        }

        public double AverageInWork
        {
            get { return (double) GetValue(AverageInWorkProperty); }
        }

        #endregion

        #region property changed events

        public static void OnInWorkChanged(DependencyObject obj, DependencyPropertyChangedEventArgs args)
        {
            var statistic = obj as ActivityDelayBaseStatisticInfo;

            if (args.NewValue != args.OldValue)
            {
                statistic.SetValue(IsProcessingProperty, (uint) args.NewValue > 0);
            }
        }

        #endregion

        #endregion

        #region internal (reference to modell)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var statInfo = obj as WaitStatisticInfo;
            var statInfoML = e.NewValue as ActivityWaitStatisticInfoML;

            if (statInfoML != null)
            {
                statInfo.SetUpBinding(BusyProperty);
                statInfo.SetUpBinding(InWorkProperty);
                statInfo.SetUpBinding(MaxInWorkProperty);
                statInfo.SetUpBinding(AverageInWorkProperty);
            }
        }

        #endregion

        static WaitStatisticInfo()
        {
            UpdateModelLogicMetaData();

            ModelLogicProperty.OverrideMetadata(
                typeof (WaitStatisticInfo),
                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                );
        }


        public WaitStatisticInfo()
        {
            this.ModelLogic = new ActivityWaitStatisticInfoML();
        }
    }
}