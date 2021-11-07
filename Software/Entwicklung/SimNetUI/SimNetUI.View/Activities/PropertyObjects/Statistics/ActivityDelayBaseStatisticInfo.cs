using System.Windows;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;

namespace SimNetUI.Activities.PropertyObjects.Statistics
{
    /// <summary>
    /// 
    /// </summary>
    public abstract class ActivityDelayBaseStatisticInfo : ActivityQueueBaseStatisticInfo
    {
        #region Properties

        #region Dependency Registration



        public static readonly DependencyProperty WorkingTimeProperty =
            DependencyProperty.Register("WorkingTime", typeof (double), typeof (ActivityDelayBaseStatisticInfo),
                                        new FrameworkPropertyMetadata(0.0));

        public static readonly DependencyProperty OffTimeProperty =
            DependencyProperty.Register("OffTime", typeof (double), typeof (ActivityDelayBaseStatisticInfo),
                                        new FrameworkPropertyMetadata(0.0));

        public static readonly DependencyProperty ProcessedProperty =
            DependencyProperty.Register("Processed", typeof (uint), typeof (ActivityDelayBaseStatisticInfo),
                                        new FrameworkPropertyMetadata(0U));

        #endregion

        #region Property Wrapper



        public double WorkingTime
        {
            get { return (double) GetValue(WorkingTimeProperty); }
        }

        public double OffTime
        {
            get { return (double) GetValue(OffTimeProperty); }
        }

        public uint Processed
        {
            get { return (uint) GetValue(ProcessedProperty); }
        }

        #endregion

        #endregion

        #region internal (reference to modell)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var statInfo = obj as ActivityDelayBaseStatisticInfo;
            var statInfoML = e.NewValue as ActivityDelayBaseStatisticInfoML;

            if (statInfoML != null)
            {

                statInfo.SetUpBinding(WorkingTimeProperty);
                statInfo.SetUpBinding(OffTimeProperty);
                statInfo.SetUpBinding(ProcessedProperty);
            }
        }

        #endregion

        private static bool MetaDataInitialized = false;

        internal new static void UpdateModelLogicMetaData()
        {
            if (!MetaDataInitialized)
            {
                ActivityQueueBaseStatisticInfo.UpdateModelLogicMetaData();

                ModelLogicProperty.OverrideMetadata(
                    typeof (ActivityDelayBaseStatisticInfo),
                    new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                    );
            }
        }
    }
}