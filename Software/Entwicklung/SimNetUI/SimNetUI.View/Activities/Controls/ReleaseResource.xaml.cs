using System;
using System.Linq;
using System.Windows;
using SimNetUI.ModelLogic.Activities.ModelProperties.Connections;
using SimNetUI.ModelLogic.Activities.ModelProperties.Resources;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;
using System.ComponentModel;
using SimNetUI.ModelLogic.Activities;
using SimNetUI.Activities.Base;
using SimNetUI.Activities.ControlParts.Connection;
using SimNetUI.Activities.Events;
using SimNetUI.Activities.PropertyObjects.Resources;
using SimNetUI.Activities.PropertyObjects.Statistics;
using SimNetUI.Controls;
using SimNetUI.ModelLogic.Entity;
using System.Threading;
using System.Collections.ObjectModel;

namespace SimNetUI.Activities.Controls
{
    /// <summary>
    /// Interaktionslogik für Generator.xaml
    /// </summary>
    [DesignTimeVisible(true)]
    public partial class ReleaseResource : ActivityRouteBase
    {


        #region ModelLogic interaction

        protected override InConnectorML InteractionML_SendEntity(OutConnectorML outConnectorML,
                                                         EntityML entityML, AutoResetEvent ev)
        {
            // At this point resources have been freed, but since the LogicModel doesn't know anything about the
            // view we have to do the bookkeeping here

            // Since we have to assume that users might add the same resources several times to the list
            // of this activity, we will combine them to one.
            var ActivityResourceList =
                (from g in
                     (from r in EntityResourceDependencies
                      group r by r.Resource)
                 select g.Aggregate(new ResourceDependency {Resource = g.Key, Count = 0}, (total, next) =>
                                                                                              {
                                                                                                  total.Count +=
                                                                                                      next.Count;
                                                                                                  return total;
                                                                                              })).ToList();


            // we check if the currenteEntity has been holding Resources which
            // have been released by this activity (in the ModelLogic Layer)
            foreach (var activityEntry in ActivityResourceList)
            {
                var entityEntries = from e in currentEntity.ResourceDependencies
                                    where e.Resource == activityEntry.Resource
                                    select e;

                if (entityEntries.Count() > 0)
                {
                    var entityEntry = entityEntries.First();

                    if (entityEntry.Count > 0)
                    {
                        if (entityEntry.Count > activityEntry.Count)
                        {
                            entityEntry.Count -= activityEntry.Count;
                        }
                        else
                        {
                            currentEntity.ResourceDependencies.Remove(entityEntry);
                        }
                    }
                }
            }

            return base.InteractionML_SendEntity(outConnectorML, entityML, ev);
        }

        #endregion

        #region private members

        #endregion

        #region internal Properties (not for use in Xaml)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var activity = obj as ReleaseResource;
            var activityML = e.NewValue as ActivityReleaseResourceML;

            if (activityML != null)
            {
                activity.SetValue(StatisticProperty, new ReleaseResourceStatisticInfo());

                if (activity.EntityResourceDependencies != null)
                {
                    var tempList = (from resource in activity.EntityResourceDependencies
                                    select resource.ModelLogic).ToList();

                    activityML.EntityResourceDependencies =
                        new ReadOnlyCollection<ResourceDependencyML>(tempList);
                }
            }
        }

        #endregion

        #region XAML Properties

        #region DependencyProperty Registration

        public static readonly DependencyProperty EntityResourceDependenciesProperty =
            DependencyProperty.Register("EntityResourceDependencies", typeof (FreezableCollection<ResourceDependency>),
                                        typeof (ReleaseResource));

        public static readonly DependencyProperty StatisticProperty =
            DependencyProperty.Register("Statistics", typeof (ReleaseResourceStatisticInfo), typeof (ReleaseResource),
                                        new FrameworkPropertyMetadata(OnStatisticChanged));

        #endregion

        #region Property Wrapper

        [CategoryAttribute("Simulation")]
        public FreezableCollection<ResourceDependency> EntityResourceDependencies
        {
            get { return (FreezableCollection<ResourceDependency>) GetValue(EntityResourceDependenciesProperty); }
            set { SetValue(EntityResourceDependenciesProperty, value); }
        }


        [CategoryAttribute("Simulation")]
        public ReleaseResourceStatisticInfo Statistics
        {
            get { return (ReleaseResourceStatisticInfo) GetValue(StatisticProperty); }
        }

        #endregion

        #region Property Changed Events

        public static void OnStatisticChanged(DependencyObject obj, DependencyPropertyChangedEventArgs args)
        {
            var activity = obj as ReleaseResource;

            var statistic = args.NewValue as ReleaseResourceStatisticInfo;

            if (statistic != null && activity.ModelLogic != null)
            {
                var activityML = activity.ModelLogic as ActivityReleaseResourceML;
                activityML.Statistic = statistic.ModelLogic as ActivityReleaseResourceStatisticInfoML;
            }
        }

        #endregion

        #endregion

        #region construction

        protected override void OnInitialized(EventArgs e)
        {
            base.OnInitialized(e);


            // The connector will be registered, after alle properties of 
            // the control have been initialized
            this.RegisterConnector(Out);
            this.RegisterConnector(In);
        }


        static ReleaseResource()
        {
            // By overrindg the metadata of this property, the PropertyChangedCallback of the base class 
            // ActivityBase and this class will both be invoked when this property has been changed
            ModelLogicProperty.OverrideMetadata(typeof (ReleaseResource),
                                                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged));
        }

        public ReleaseResource()
        {
            SetValue(EntityResourceDependenciesProperty, new FreezableCollection<ResourceDependency>());
            ModelLogic = new ActivityReleaseResourceML();
            InitializeComponent();
            EntityResourceDependencies.Changed += OnContentChanged;
            ;
        }


        private void OnContentChanged(object sender, EventArgs e)
        {
            var tempList = (from resource in EntityResourceDependencies
                            select resource.ModelLogic).ToList();

            (ModelLogic as ActivityReleaseResourceML).EntityResourceDependencies =
                new ReadOnlyCollection<ResourceDependencyML>(tempList);
        }

        #endregion

        public override string ToString()
        {
            return "ReleaseResource";
        }
    }
}