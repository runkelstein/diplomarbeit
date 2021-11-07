using System.Windows;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;

namespace SimNetUI.Activities.PropertyObjects.Statistics
{
    /// <summary>
    /// 
    /// </summary>
    public class ReleaseResourceStatisticInfo : ActivityQueueBaseStatisticInfo
    {
        public static readonly DependencyProperty ProcessedEntitiesProperty =
            DependencyProperty.Register("ProcessedEntities", typeof (uint), typeof (ReleaseResourceStatisticInfo),
                                        new FrameworkPropertyMetadata(0U));

        public static readonly DependencyProperty ReleasedResourcesProperty =
            DependencyProperty.Register("ReleasedResources", typeof (uint), typeof (ReleaseResourceStatisticInfo),
                                        new FrameworkPropertyMetadata(0U));


        public uint ProcessedEntities
        {
            get { return (uint) GetValue(ProcessedEntitiesProperty); }
        }

        public uint ReleasedResources
        {
            get { return (uint) GetValue(ReleasedResourcesProperty); }
        }

        #region internal (reference to modell)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var statInfo = obj as ReleaseResourceStatisticInfo;
            var statInfoML = e.NewValue as ActivityReleaseResourceStatisticInfoML;

            if (statInfoML != null)
            {
                statInfo.SetUpBinding(ProcessedEntitiesProperty);
                statInfo.SetUpBinding(ReleasedResourcesProperty);
            }
        }

        static ReleaseResourceStatisticInfo()
        {
            UpdateModelLogicMetaData();

            ModelLogicProperty.OverrideMetadata(
                typeof (ReleaseResourceStatisticInfo),
                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                );
        }


        public ReleaseResourceStatisticInfo()
        {
            this.ModelLogic = new ActivityReleaseResourceStatisticInfoML();
        }

        #endregion
    }
}