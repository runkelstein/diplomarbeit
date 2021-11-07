using System;
using System.Windows;
using System.ComponentModel;
using SimNetUI.ModelLogic.Activities.ModelProperties.Resources;
using System.Windows.Data;
using SimNetUI.ModelLogic.Resources;

namespace SimNetUI.Resources
{
    public class Resource : DependencyObject
    {
        #region XAML Properties

        #region DepedencyProperty registration

        public static readonly DependencyProperty StatisticProperty =
            DependencyProperty.Register("Statistics", typeof(ResourceStatisticInfo), typeof(Resource),
                                        new FrameworkPropertyMetadata(OnStatisticChanged));

        public static readonly DependencyProperty CapacityProperty =
            DependencyProperty.Register("Capacity", typeof (int), typeof (Resource), new FrameworkPropertyMetadata(1));

        //public static readonly DependencyProperty NameProperty =
        //    DependencyProperty.Register("Name", typeof(string), typeof(Resource), new FrameworkPropertyMetadata("resource name"));

        #endregion

        #region Property wrapper

        [CategoryAttribute("Simulation")]
        public ResourceStatisticInfo Statistics
        {
            get { return (ResourceStatisticInfo)GetValue(StatisticProperty); }
        }

        public int Capacity
        {
            get { return (int) GetValue(CapacityProperty); }
            set { SetValue(CapacityProperty, value); }
        }

        //public string Name
        //{
        //    get { return (string)GetValue(NameProperty); }
        //    set { SetValue(NameProperty, value); }
        //}

        #endregion

        #region property changed events

        public static void OnStatisticChanged(DependencyObject obj, DependencyPropertyChangedEventArgs args)
        {
            var resource = obj as Resource;

            var statistic = args.NewValue as ResourceStatisticInfo;

            if (statistic != null && resource.ModelLogic != null)
            {
                var activityML = resource.ModelLogic as ResourceML;
                activityML.Statistic = statistic.ModelLogic as ResourceStatisticInfoML;
            }
        }

        #endregion

        #endregion

        #region internal reference to ModelLogic

        public Type DistributionType
        {
            get { return this.GetType(); }
        }


        internal static readonly DependencyProperty ModelLogicProperty =
            DependencyProperty.Register("ModelLogic",
                                        typeof (ResourceML), typeof (Resource),
                                        new FrameworkPropertyMetadata(OnModelLogicPropertyChanged));

        [Browsable(false)]
        internal ResourceML ModelLogic
        {
            get { return (ResourceML) GetValue(ModelLogicProperty); }
            set { SetValue(ModelLogicProperty, value); }
        }

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var resource = obj as Resource;
            var resourceML = e.NewValue as ResourceML;

            if (resourceML != null)
            {
                var tmp = resource.Capacity;
                // set up binding
                BindingOperations.SetBinding(resource, Resource.CapacityProperty,
                                             new Binding
                                                 {
                                                     RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                                     Mode = BindingMode.TwoWay,
                                                     Path = new PropertyPath("ModelLogic.Capacity")
                                                 }
                    );
                resource.Capacity = tmp;

                resource.SetValue(StatisticProperty, new ResourceStatisticInfo());
            }
        }

        #endregion

        public Resource()
        {
            if (!DesignerProperties.GetIsInDesignMode(this))
                ModelLogic = new ResourceML();
        }
    }
}