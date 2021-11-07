using System.Windows;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;

namespace SimNetUI.Activities.PropertyObjects.Statistics
{
    /// <summary>
    /// 
    /// </summary>
    public class AssignResourceStatisticInfo : ActivityQueueBaseStatisticInfo
    {
        public static readonly DependencyProperty ProcessedEntitiesProperty =
            DependencyProperty.Register("ProcessedEntities", typeof (uint), typeof (AssignResourceStatisticInfo),
                                        new FrameworkPropertyMetadata(0U));

        public static readonly DependencyProperty AssignedResourcesProperty =
            DependencyProperty.Register("AssignedResources", typeof (uint), typeof (AssignResourceStatisticInfo),
                                        new FrameworkPropertyMetadata(0U));

        public uint ProcessedEntities
        {
            get { return (uint) GetValue(ProcessedEntitiesProperty); }
        }

        public uint AssignedResources
        {
            get { return (uint) GetValue(AssignedResourcesProperty); }
        }

        #region internal (reference to modell)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var statInfo = obj as AssignResourceStatisticInfo;
            var statInfoML = e.NewValue as ActivityAssignResourceStatisticInfoML;

            if (statInfoML != null)
            {
                statInfo.SetUpBinding(ProcessedEntitiesProperty);
                statInfo.SetUpBinding(AssignedResourcesProperty);
            }
        }

        static AssignResourceStatisticInfo()
        {
            UpdateModelLogicMetaData();

            ModelLogicProperty.OverrideMetadata(
                typeof (AssignResourceStatisticInfo),
                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                );
        }


        public AssignResourceStatisticInfo()
        {
            this.ModelLogic = new ActivityAssignResourceStatisticInfoML();
        }

        #endregion
    }
}