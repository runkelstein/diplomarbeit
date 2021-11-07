using System.Windows;
using System.ComponentModel;
using SimNetUI.ModelLogic.Activities.ModelProperties.Distributions;

namespace SimNetUI.Activities.PropertyObjects.Distributions
{
    public class NoEvent : DistributionBase
    {
        #region internal (reference to modell)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var distribution = obj as NoEvent;
            var distributionML = e.NewValue as NoEventML;

            if (distributionML != null)
            {
            }
        }

        #endregion

        #region constructor

        static NoEvent()
        {
            // By overrindg the metadata of this property, the PropertyChangedCallback of the base class 
            // DistributionBase and this class will both be invoked when this property has been changed
            ModelLogicProperty.OverrideMetadata(
                typeof (NoEvent),
                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                );
        }

        public NoEvent()
            : base()
        {
            if (!DesignerProperties.GetIsInDesignMode(this))
                this.ModelLogic = new NoEventML();
        }

        #endregion
    }
}