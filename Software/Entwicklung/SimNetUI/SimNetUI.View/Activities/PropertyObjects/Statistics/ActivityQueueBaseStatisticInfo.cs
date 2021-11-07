using System.Windows;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;
using SimNetUI.Base;

namespace SimNetUI.Activities.PropertyObjects.Statistics
{
    public abstract class ActivityQueueBaseStatisticInfo : ActivityRouteBaseStatisticInfo
    {
        #region Properties

        #region Dependency Registration

        public static readonly DependencyProperty InQueueProperty =
            DependencyProperty.Register("InQueue", typeof (uint), typeof (ActivityQueueBaseStatisticInfo),
                                        new FrameworkPropertyMetadata(0U));

        public static readonly DependencyProperty MaxInQueueProperty =
            DependencyProperty.Register("MaxInQueue", typeof (uint), typeof (ActivityQueueBaseStatisticInfo),
                                        new FrameworkPropertyMetadata(0U));

        public static readonly DependencyProperty AverageInQueueProperty =
            DependencyProperty.Register("AverageInQueue", typeof (double), typeof (ActivityQueueBaseStatisticInfo),
                                        new FrameworkPropertyMetadata(0.0));

        #endregion

        #region Property wrapper

        public uint InQueue
        {
            get { return (uint) GetValue(InQueueProperty); }
        }

        public uint MaxInQueue
        {
            get { return (uint) GetValue(MaxInQueueProperty); }
        }

        public double AverageInQueue
        {
            get { return (double) GetValue(AverageInQueueProperty); }
        }

        #endregion

        #endregion

        #region internal (reference to modell)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var statInfo = obj as ActivityQueueBaseStatisticInfo;
            var statInfoML = e.NewValue as ActivityQueueBaseStatisticInfoML;

            if (statInfoML != null)
            {
                statInfo.SetUpBinding(InQueueProperty);
                statInfo.SetUpBinding(MaxInQueueProperty);
                statInfo.SetUpBinding(AverageInQueueProperty);
            }
        }

        #endregion

        private static bool MetaDataInitialized = false;

        internal static void UpdateModelLogicMetaData()
        {
            if (!MetaDataInitialized)
            {
                ModelLogicProperty.OverrideMetadata(
                    typeof (ActivityQueueBaseStatisticInfo),
                    new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                    );

                MetaDataInitialized = true;
            }
        }
    }
}