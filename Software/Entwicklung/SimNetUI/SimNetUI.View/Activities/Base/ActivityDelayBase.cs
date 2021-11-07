using System;
using System.Linq;
using System.ComponentModel;
using SimNetUI.ModelLogic.Activities.Base;
using System.Windows;
using SimNetUI.ModelLogic.Activities.ModelProperties.Resources;
using System.Windows.Data;
using SimNetUI.Activities.PropertyObjects.Distributions;
using SimNetUI.Activities.PropertyObjects.Resources;
using SimNetUI.Converter;
using System.Collections.ObjectModel;

namespace SimNetUI.Activities.Base
{
    [DesignTimeVisible(false)]
    public class ActivityDelayBase : ActivityQueueBase
    {
        #region XAML Properties

        #region DependencyProperty Registration

        public static readonly DependencyProperty ResourceDependenciesProperty =
            DependencyProperty.Register("ResourceDependencies", typeof (FreezableCollection<ResourceDependency>),
                                        typeof (ActivityDelayBase));


        public static readonly DependencyProperty DistributionProperty =
            DependencyProperty.Register("Distribution",
                                        typeof (DistributionBase),
                                        typeof (ActivityDelayBase));

        #endregion

        #region Property Wrapper

        [CategoryAttribute("Simulation")]
        public DistributionBase Distribution
        {
            get { return (DistributionBase) GetValue(DistributionProperty); }
            set { SetValue(DistributionProperty, value); }
        }


        [CategoryAttribute("Simulation")]
        public FreezableCollection<ResourceDependency> ResourceDependencies
        {
            get { return (FreezableCollection<ResourceDependency>) GetValue(ResourceDependenciesProperty); }
            set { SetValue(ResourceDependenciesProperty, value); }
        }

        #endregion

        #region Property changed events

        #endregion

        #endregion

        #region internal Properties (not for use in Xaml)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var activity = obj as ActivityDelayBase;
            var activityML = e.NewValue as ActivityDelayBaseML;

            if (activityML != null)
            {
                // setup Binding
                activity.SetUpBinding(DistributionProperty, new ActivityDistributionValueConverter(),activity);

                if (activity.ResourceDependencies != null)
                {
                    var tempList = (from resource in activity.ResourceDependencies
                                    select resource.ModelLogic).ToList();

                    activityML.ResourceDependencies =
                        new ReadOnlyCollection<ResourceDependencyML>(tempList);
                }
            }
        }

        #endregion

        #region construction

        private static bool MetaDataInitialized = false;

        internal new static void UpdateModelLogicMetaData()
        {
            if (!MetaDataInitialized)
            {
                ActivityQueueBase.UpdateModelLogicMetaData();

                // By overrindg the metadata of this property, the PropertyChangedCallback of the base class 
                // ActivityBase and this class will both be invoked when this property has been changed
                ModelLogicProperty.OverrideMetadata(typeof (ActivityDelayBase),
                                                    new FrameworkPropertyMetadata(OnModelLogicPropertyChanged));
                MetaDataInitialized = true;
            }
        }


        public ActivityDelayBase() : base()
        {
            SetValue(ResourceDependenciesProperty, new FreezableCollection<ResourceDependency>());
            ResourceDependencies.Changed += OnContentChanged;
            ;
        }


        private void OnContentChanged(object sender, EventArgs e)
        {
            var tempList = (from resource in ResourceDependencies
                            select resource.ModelLogic).ToList();

            (ModelLogic as ActivityDelayBaseML).ResourceDependencies =
                new ReadOnlyCollection<ResourceDependencyML>(tempList);
        }

        #endregion
    }
}