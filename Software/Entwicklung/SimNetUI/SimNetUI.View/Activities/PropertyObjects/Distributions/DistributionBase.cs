using System;
using System.Windows;
using System.ComponentModel;
using System.Windows.Data;
using SimNetUI.ModelLogic.Activities.ModelProperties.Distributions;

namespace SimNetUI.Activities.PropertyObjects.Distributions
{
    public abstract class DistributionBase : DependencyObject

    {

        /// <summary>
        /// This property is neccessary because of a not avoidable hack in the property grid 
        /// of visual studio
        /// </summary>
        public Type DistributionType
        {
            get { return this.GetType(); }
        }

        /// <summary>
        /// Build up a binding to the objects "ModelLogic" companion object
        /// </summary>
        /// <param name="target">The DependencyProperty which shall be bound to the ModelLogic</param>        
        internal void SetUpBinding(DependencyProperty target)
        {
            // save intitial value
            var tmp = GetValue(target);

            // setup binding
            BindingOperations.SetBinding(this, target,
                             new Binding
                             {
                                 RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                 Mode = BindingMode.OneWayToSource,
                                 Path = new PropertyPath("ModelLogic." + target.Name)
                             });

            // restore initial value
            SetValue(target,tmp);

        }

        #region internal reference to ModelLogic

        internal static readonly DependencyProperty ModelLogicProperty =
            DependencyProperty.Register("ModelLogic",
                                        typeof (DistributionBaseML), typeof (DistributionBase),
                                        new FrameworkPropertyMetadata(OnModelLogicPropertyChanged));

        [Browsable(false)]
        internal DistributionBaseML ModelLogic
        {
            get { return (DistributionBaseML) GetValue(ModelLogicProperty); }
            set { SetValue(ModelLogicProperty, value); }
        }

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var distribution = obj as DistributionBase;
            var distributionML = e.NewValue as DistributionBaseML;

            if (distributionML != null)
            {
                // Copy user values, so that they dont get overriden after
                // initial binding
                distributionML.ScheduleDuration = Schedule.Schedule.GetDuration(distribution);

                // SetUp Binding
                BindingOperations.SetBinding(distribution, Schedule.Schedule.DurationProperty,
                                             new Binding
                                                 {
                                                     RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                                     Mode = BindingMode.TwoWay,
                                                     Path = new PropertyPath("ModelLogic.ScheduleDuration")
                                                 }
                    );
            }
        }

        #endregion

        public DistributionBase()
        {
        }
    }
}