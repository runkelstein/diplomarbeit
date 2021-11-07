using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using SimNetUI.ModelLogic.Activities.ModelProperties.Connections;
using SimNetUI.ModelLogic.Activities.ModelProperties.Resources;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;
using SimNetUI.Activities.Base;
using SimNetUI.Activities.Events;

using System.ComponentModel;
using SimNetUI.ModelLogic.Activities;
using SimNetUI.Activities.PropertyObjects.Schedule;
using EntityUI = SimNetUI.Entity.Entity;

using SimNetUI.Converter;
using System.Windows.Markup;
using System.Xml;
using System.IO;
using SimNetUI.Activities.PropertyObjects.Statistics;
using SimNetUI.ModelLogic.Entity;
using SimNetUI.Util;
using System.Threading;
using SimNetUI.Base;
using SimNetUI.Controls;
using SimNetUI.Resources;
using SimNetUI.Activities.ControlParts.Connection;
using SimNetUI.Activities.PropertyObjects.Resources;
using System.Collections.ObjectModel;

namespace SimNetUI.Activities.Controls
{
    /// <summary>
    /// Interaktionslogik für Generator.xaml
    /// </summary>
    [DesignTimeVisible(true)]
    public partial class AssignResource : ActivityQueueBase
    {



        #region ModelLogic interaction

        protected override EntityML InteractionML_ProvideEntityML(OutConnectorML start)
        {
            // retrieve entity
            currentEntity = Queue.ElementAt(0);

            // remove entity from list
            Queue.RemoveAt(0);

            // return Entity
            return base.InteractionML_ProvideEntityML(start);
        }

        internal override void OnReceiveEntity(InConnector target, OutConnector source, EntityUI entity)
        {
            base.OnReceiveEntity(target, source, entity);

            Queue.Add(entity);

            // sort queue
            SortQueue();
        }

        protected override InConnectorML InteractionML_SendEntity(OutConnectorML outConnectorML,
                                                         EntityML entityML, AutoResetEvent ev)
        {



            // update entity leaving timestamp
            currentEntity.ActivityLeft = (this.Parent as SimulationContainer).SimulationTime;

            // At this Point the" ModelLogic" has given these entities some resources. We have to
            // do the bookkeeping here, because the "ModelLogic" doesn't know anything about the "View"

            // We add the resource to the ResourceDependencies list of the leaving entity
            // so that it can be looked up later and the resource used by this entity can be freed

            // Since we have to assume that users might add the same resources several times to the list
            // of this activity, we will combine them to one. Furthermore this way if we have to add
            // new ResourceDependency entries to the list of the entity, we can easily do this without any
            // worries about messing around with the objects later on, since we got totaly new and separated objects
            var activityResourceList =
                (from g in
                     (from r in EntityResourceDependencies
                      group r by r.Resource)
                 select g.Aggregate(new ResourceDependency {Resource = g.Key, Count = 0}, (total, next) =>
                                                                                              {
                                                                                                  total.Count +=
                                                                                                      next.Count;
                                                                                                  return total;
                                                                                              })).ToList();


            // before we add new resources to the entity we will check if the resource has allready acquired
            // resources of this kind, if so we will expand the count value and remove the entry from the
            // list just created some lines above
            Action<ResourceDependency> expandResourceDependency =
                (entityEntry) =>
                    {
                        var statement = (from r in activityResourceList
                                         where r.Resource == entityEntry.Resource
                                         select r);

                        // its allways eighter 0 or 1
                        if (statement.Count() > 0)
                        {
                            var activityEntry = statement.First();
                            entityEntry.Count += activityEntry.Count;

                            activityResourceList.Remove(activityEntry);
                        }
                    };

            foreach (var entry in currentEntity.ResourceDependencies)
                expandResourceDependency(entry);


            // now we will add the left over resources
            foreach (var entry in activityResourceList)
                currentEntity.ResourceDependencies.Add(entry);


            return base.InteractionML_SendEntity(outConnectorML, entityML, ev);
        }

        #endregion

        #region private members

        #endregion

        #region internal Properties (not for use in Xaml)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var activity = obj as AssignResource;
            var activityML = e.NewValue as ActivityAssignResourceML;

            if (activityML != null)
            {
                activity.SetValue(StatisticProperty, new AssignResourceStatisticInfo());

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
                                        typeof (AssignResource));

        public static readonly DependencyProperty StatisticProperty =
            DependencyProperty.Register("Statistics", typeof (AssignResourceStatisticInfo), typeof (AssignResource),
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
        public AssignResourceStatisticInfo Statistics
        {
            get { return (AssignResourceStatisticInfo) GetValue(StatisticProperty); }
        }

        #endregion

        #region Property Changed Events

        public static void OnStatisticChanged(DependencyObject obj, DependencyPropertyChangedEventArgs args)
        {
            var activity = obj as AssignResource;

            var statistic = args.NewValue as AssignResourceStatisticInfo;

            if (statistic != null && activity.ModelLogic != null)
            {
                var activityML = activity.ModelLogic as ActivityAssignResourceML;
                activityML.Statistic = statistic.ModelLogic as ActivityAssignResourceStatisticInfoML;
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


        static AssignResource()
        {
            UpdateModelLogicMetaData();

            // By overrindg the metadata of this property, the PropertyChangedCallback of the base class 
            // ActivityBase and this class will both be invoked when this property has been changed
            ModelLogicProperty.OverrideMetadata(typeof (AssignResource),
                                                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged));
        }

        public AssignResource()
        {
            SetValue(EntityResourceDependenciesProperty, new FreezableCollection<ResourceDependency>());
            ModelLogic = new ActivityAssignResourceML();
            InitializeComponent();
            EntityResourceDependencies.Changed += OnContentChanged;
            ;
        }


        private void OnContentChanged(object sender, EventArgs e)
        {
            var tempList = (from resource in EntityResourceDependencies
                            select resource.ModelLogic).ToList();

            (ModelLogic as ActivityAssignResourceML).EntityResourceDependencies =
                new ReadOnlyCollection<ResourceDependencyML>(tempList);
        }

        #endregion

        public override string ToString()
        {
            return "AssignResource";
        }
    }
}