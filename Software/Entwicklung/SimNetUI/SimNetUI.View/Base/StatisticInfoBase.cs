using System.Windows;
using System.ComponentModel;
using System.Windows.Data;

using SimNetUI.ModelLogic.Base;

namespace SimNetUI.Base
{
    public abstract class StatisticInfoBase : DependencyObject
    {
        #region internal reference to ModelLogic

        internal static readonly DependencyProperty ModelLogicProperty =
            DependencyProperty.Register("ModelLogic",
                                        typeof (StatisticInfoBaseML), typeof (StatisticInfoBase),
                                        new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                );

        [Browsable(false)]
        internal StatisticInfoBaseML ModelLogic
        {
            get { return (StatisticInfoBaseML) GetValue(ModelLogicProperty); }
            set { SetValue(ModelLogicProperty, value); }
        }

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var statInfo = obj as StatisticInfoBase;
            var statInfoML = e.NewValue as StatisticInfoBaseML;

            if (statInfoML != null)
            {
            }
        }

        #endregion

        protected void SetUpBinding(DependencyProperty target)
        {
            BindingOperations.SetBinding(this, target,
                                         new Binding
                                             {
                                                 RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                                 Mode = BindingMode.OneWay,
                                                 Path = new PropertyPath("ModelLogic." + target.Name)
                                             });
        }
    }
}