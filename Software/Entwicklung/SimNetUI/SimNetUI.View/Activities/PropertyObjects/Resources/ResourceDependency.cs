using System.Windows;
using SimNetUI.ModelLogic.Activities.ModelProperties.Resources;
using System.ComponentModel;
using System.Windows.Data;
using SimNetUI.Resources;

namespace SimNetUI.Activities.PropertyObjects.Resources
{
    public class ResourceDependency : DependencyObject
    {
        #region Xaml properties

        #region Depedency registration

        public static readonly DependencyProperty CountProperty =
            DependencyProperty.Register("Count", typeof (int), typeof (ResourceDependency),
                                        new FrameworkPropertyMetadata(1));

        public static readonly DependencyProperty ResourceProperty =
            DependencyProperty.Register("Resource", typeof (Resource), typeof (ResourceDependency),
                                        new FrameworkPropertyMetadata(OnResourcePropertyChanged));

        #endregion

        #region Property wrapper

        public int Count
        {
            get { return (int) GetValue(CountProperty); }
            set { SetValue(CountProperty, value); }
        }

        public Resource Resource
        {
            get { return (Resource) GetValue(ResourceProperty); }
            set { SetValue(ResourceProperty, value); }
        }

        #endregion

        #region PropertyChanged

        private static void OnResourcePropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            if (!DesignerProperties.GetIsInDesignMode(obj))
            {
                var resourceDependency = obj as ResourceDependency;
                var resource = e.NewValue as Resource;
                if (resource != null)
                {
                    resourceDependency.ModelLogic.Resource = resource.ModelLogic;
                }
            }
        }

        #endregion

        #endregion

        #region internal reference to ModelLogic

        internal static readonly DependencyProperty ModelLogicProperty =
            DependencyProperty.Register("ModelLogic",
                                        typeof (ResourceDependencyML), typeof (ResourceDependency),
                                        new FrameworkPropertyMetadata(OnModelLogicPropertyChanged));

        [Browsable(false)]
        internal ResourceDependencyML ModelLogic
        {
            get { return (ResourceDependencyML) GetValue(ModelLogicProperty); }
            set { SetValue(ModelLogicProperty, value); }
        }

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var resourceDependency = obj as ResourceDependency;
            var resourceDependencyML = e.NewValue as ResourceDependencyML;

            if (resourceDependencyML != null)
            {
                var tmpCount = resourceDependency.Count;
                // SetUp Binding
                BindingOperations.SetBinding(resourceDependency, ResourceDependency.CountProperty,
                                             new Binding
                                                 {
                                                     RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                                     Mode = BindingMode.TwoWay,
                                                     Path = new PropertyPath("ModelLogic.Count")
                                                 }
                    );
                resourceDependency.Count = tmpCount;
            }
        }

        #endregion

        public ResourceDependency()
        {
            if (!DesignerProperties.GetIsInDesignMode(this))
                this.ModelLogic = new ResourceDependencyML();
        }
    }
}