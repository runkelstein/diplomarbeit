using System.Windows;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;
using SimNetUI.Base;

namespace SimNetUI.Activities.PropertyObjects.Statistics
{
    /// <summary>
    /// 
    /// </summary>
    public class GeneratorStatisticInfo : StatisticInfoBase
    {
        public static readonly DependencyProperty DepartedEntitiesProperty =
            DependencyProperty.Register("DepartedEntities", typeof (uint), typeof (GeneratorStatisticInfo),
                                        new FrameworkPropertyMetadata(0U));

        public uint DepartedEntities
        {
            get { return (uint) GetValue(DepartedEntitiesProperty); }
        }

        #region internal (reference to modell)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var statInfo = obj as GeneratorStatisticInfo;
            var statInfoML = e.NewValue as ActivityGeneratorStatisticInfoML;

            if (statInfoML != null)
            {
                statInfo.SetUpBinding(DepartedEntitiesProperty);
            }
        }

        static GeneratorStatisticInfo()
        {
            ModelLogicProperty.OverrideMetadata(
                typeof (GeneratorStatisticInfo),
                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                );
        }


        public GeneratorStatisticInfo()
        {
            this.ModelLogic = new ActivityGeneratorStatisticInfoML();
        }

        #endregion
    }
}