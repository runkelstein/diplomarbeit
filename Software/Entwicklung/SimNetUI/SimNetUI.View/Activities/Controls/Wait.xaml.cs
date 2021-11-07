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
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;
using SimNetUI.Activities.Base;
using SimNetUI.Activities.ControlParts.Connection;
using SimNetUI.Activities.Events;
using SimNetUI.Activities.PropertyObjects.Statistics;
using System.ComponentModel;
using SimNetUI.ModelLogic.Activities;
using SimNetUI.ModelLogic.Entity;
using SimNetUI.Controls;
using EntityUI = SimNetUI.Entity.Entity;
using System.Threading;

namespace SimNetUI.Activities.Controls
{
    /// <summary>
    /// Interaktionslogik für Generator.xaml
    /// </summary>
    [DesignTimeVisible(true)]
    public partial class Wait : ActivityDelayBase
    {

        #region XAML Properties

        #region DependencyProperty Registration

        public static readonly DependencyProperty StatisticProperty =
            DependencyProperty.Register("Statistics", typeof (WaitStatisticInfo), typeof (Wait),
                                        new FrameworkPropertyMetadata(OnStatisticChanged));


        public static readonly DependencyProperty CapacityProperty =
            DependencyProperty.Register("Capacity",
                                        typeof (uint),
                                        typeof (Wait),
                                        new FrameworkPropertyMetadata(1U)
                );

        #endregion

        #region Property Wrapper

        [CategoryAttribute("Simulation")]
        public WaitStatisticInfo Statistics
        {
            get { return (WaitStatisticInfo) GetValue(StatisticProperty); }
        }

        [CategoryAttribute("Simulation")]
        [DisplayName("Processing Capacity")]
        public uint Capacity
        {
            get { return (uint) GetValue(CapacityProperty); }
            set { SetValue(CapacityProperty, value); }
        }

        #endregion

        #region Property Changed Events

        public static void OnStatisticChanged(DependencyObject obj, DependencyPropertyChangedEventArgs args)
        {
            var activity = obj as Wait;

            var statistic = args.NewValue as WaitStatisticInfo;

            if (statistic != null && activity.ModelLogic != null)
            {
                var activityML = activity.ModelLogic as ActivityWaitML;
                activityML.Statistic = statistic.ModelLogic as ActivityWaitStatisticInfoML;
            }
        }

        #endregion

        #endregion

        #region internal Properties (not for use in Xaml)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var activity = obj as Wait;
            var activityML = e.NewValue as ActivityWaitML;

            if (activityML != null)
            {
                activity.SetValue(StatisticProperty, new WaitStatisticInfo());

                activity.SetUpBinding(CapacityProperty);
            }
        }

        #endregion

        #region ModelLogic interaction

        #region overrides

        internal override void OnResetActivity()
        {
            base.OnResetActivity();
            Queue.Clear();
        }

        internal override void OnReceiveEntity(InConnector target, OutConnector source, EntityUI entity)
        {
            base.OnReceiveEntity(target, source, entity);

            Queue.Add(entity);

            // sort queue
            SortQueue();
        }

        private Dictionary<EntityML, EntityUI> currentlyProcessingEntities;

        protected override EntityML InteractionML_ProvideEntityML(OutConnectorML start)
        {
            // retrieve entity
            currentEntity = Queue.ElementAt(0);

            // remove entity from list
            Queue.RemoveAt(0);

            currentlyProcessingEntities.Add(currentEntity.ModelLogic, currentEntity);

            // return Entity
            return base.InteractionML_ProvideEntityML(start);
        }

        protected override InConnectorML InteractionML_SendEntity(OutConnectorML outConnectorML,
                                                         EntityML entityML, AutoResetEvent ev)
        {
            currentEntity = currentlyProcessingEntities[entityML];





            // start animation
            return base.InteractionML_SendEntity(outConnectorML, entityML, ev);
        }

        #endregion

        #endregion

        #region construction

        protected override void OnInitialized(EventArgs e)
        {
            ModelLogic = new ActivityWaitML();

            // The connectors will be registered, after all properties of 
            // the control have been initialized
            this.RegisterConnector(In);
            this.RegisterConnector(Out);

            base.OnInitialized(e);
        }



        static Wait()
        {
            UpdateModelLogicMetaData();

            // By overrindg the metadata of this property, the PropertyChangedCallback of the base class 
            // ActivityBase and this class will both be invoked when this property has been changed
            ModelLogicProperty.OverrideMetadata(typeof (Wait),
                                                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged));




        }

        public Wait()
        {
            currentlyProcessingEntities = new Dictionary<EntityML, EntityUI>();
            InitializeComponent();
        }

        #endregion

        public override string ToString()
        {
            return "Wait";
        }
    }
}