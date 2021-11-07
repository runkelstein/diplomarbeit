using System.Windows;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;
using SimNetUI.Base;

namespace SimNetUI.Activities.PropertyObjects.Statistics
{
    /// <summary>
    /// 
    /// </summary>
    public class ExitStatisticInfo : StatisticInfoBase
    {
        public static readonly DependencyProperty ArrivedEntitiesProperty =
            DependencyProperty.Register("ArrivedEntities", typeof (uint), typeof (ExitStatisticInfo),
                                        new FrameworkPropertyMetadata(0U));

        public uint ArrivedEntities
        {
            get { return (uint) GetValue(ArrivedEntitiesProperty); }
        }

        #region internal (reference to modell)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var statInfo = obj as ExitStatisticInfo;
            var statInfoML = e.NewValue as ActivityExitStatisticInfoML;

            if (statInfoML != null)
            {
                statInfo.SetUpBinding(ArrivedEntitiesProperty);
            }
        }

        static ExitStatisticInfo()
        {
            ModelLogicProperty.OverrideMetadata(
                typeof (ExitStatisticInfo),
                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                );
        }


        public ExitStatisticInfo()
        {
            this.ModelLogic = new ActivityExitStatisticInfoML();
        }

        #endregion
    }
}