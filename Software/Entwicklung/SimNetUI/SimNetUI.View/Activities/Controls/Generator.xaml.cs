using System;
using System.Windows;
using System.Windows.Data;
using SimNetUI.ModelLogic.Activities.ModelProperties.Connections;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;
using System.ComponentModel;
using SimNetUI.ModelLogic.Activities;
using SimNetUI.Activities.Base;
using SimNetUI.Activities.Events;
using SimNetUI.Activities.PropertyObjects.Schedule;
using SimNetUI.Activities.PropertyObjects.Statistics;
using SimNetUI.Controls;
using System.Windows.Markup;
using System.Xml;
using System.IO;
using SimNetUI.ModelLogic.Entity;
using System.Threading;

namespace SimNetUI.Activities.Controls
{
    /// <summary>
    /// Interaktionslogik für Generator.xaml
    /// </summary>
    [DesignTimeVisible(true)]
    public partial class Generator : ActivityRouteBase
    {


        
        /// <summary>
        /// Hide event, because a generator does not accept any incomming entities
        /// this may seem like a dirty hack, and it maybe is, but since c# doesn't allow
        /// multiple inheritance through concepts like mixins or traits its hard to come up with
        /// a reliable architecture without reimplementing stuff over and over again. So therefore its
        /// possibliy the easiest thing to do, to just hide this event to outside users of this library
        /// </summary>
        new private event EventHandler<EntityEnteringEventArgs> EntityEntered;

        #region ModelLogic interaction

        /// <summary>
        /// This Method creates a new Entity and calls its base class method
        /// </summary>
        /// <returns></returns>
        protected override EntityML InteractionML_ProvideEntityML(OutConnectorML start)
        {
            // create new Entity and use default values
            currentEntity = new Entity.Entity
                                {
                                    Type = Entity.Type,
                                    //Entity.Type,
                                    ID = entityCount++,
                                    Priority = Entity.Priority,
                                };


            //clone Visual
            string xamlCode = XamlWriter.Save(Entity.VisualAppearance);
            currentEntity.VisualAppearance =
                XamlReader.Load(new XmlTextReader(new StringReader(xamlCode))) as FrameworkElement;

            // return Entity
            return base.InteractionML_ProvideEntityML(start);
        }

        #endregion

        #region private members

        // this variable is not related to the statistics, its only used for
        // creation purposes, so that an uniqe id for every generated entity 
        // can be set
        private ulong entityCount = 0;

        #endregion

        #region internal Properties (not for use in Xaml)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var activity = obj as Generator;
            var activityML = e.NewValue as ActivityGeneratorML;

            if (activityML != null)
            {


                // set statistics
                activity.SetValue(StatisticProperty, new GeneratorStatisticInfo());

                // setup Binding
                activity.SetUpBinding(EntityMaxCountProperty);
                
            }
        }

        #endregion

        #region XAML Properties

        #region DependencyProperty Registration

        public static readonly DependencyProperty ScheduleProperty =
            DependencyProperty.Register("Schedule",
                                        typeof (Schedule), typeof (Generator),
                                        new FrameworkPropertyMetadata(OnScheduleChanged));

        public static readonly DependencyProperty EntityProperty =
            DependencyProperty.Register("Entity",
                                        typeof (Entity.Entity), typeof (ActivityBase));

        public static readonly DependencyProperty EntityMaxCountProperty =
            DependencyProperty.Register("EntityMaxCount", typeof (uint), typeof (ActivityBase),
                                        new FrameworkPropertyMetadata(uint.MaxValue));

        public static readonly DependencyProperty StatisticProperty =
            DependencyProperty.Register("Statistics", typeof (GeneratorStatisticInfo), typeof (Generator),
                                        new FrameworkPropertyMetadata(OnStatisticChanged));

        #endregion

        #region Property Wrapper

        [CategoryAttribute("Simulation")]
        public Schedule Schedule
        {
            get { return (Schedule) GetValue(ScheduleProperty); }
            set { SetValue(ScheduleProperty, value); }
        }

        [CategoryAttribute("Simulation")]
        public Entity.Entity Entity
        {
            get { return (Entity.Entity) GetValue(EntityProperty); }
            set { SetValue(EntityProperty, value); }
        }

        [CategoryAttribute("Simulation")]
        [DisplayName("Entity max count")]
        public uint EntityMaxCount
        {
            get { return (uint) GetValue(EntityMaxCountProperty); }
            set { SetValue(EntityMaxCountProperty, value); }
        }

        [CategoryAttribute("Simulation")]
        public GeneratorStatisticInfo Statistics
        {
            get { return (GeneratorStatisticInfo) GetValue(StatisticProperty); }
        }

        #endregion

        #region Property Changed Events

        public static void OnScheduleChanged(DependencyObject obj, DependencyPropertyChangedEventArgs args)
        {
            var activity = obj as Generator;

            var schedule = args.NewValue as Schedule;

            if (schedule != null && activity.ModelLogic != null)
            {
                var activityML = activity.ModelLogic as ActivityGeneratorML;
                activityML.Schedule = schedule.ModelLogic;
            }
        }

        public static void OnStatisticChanged(DependencyObject obj, DependencyPropertyChangedEventArgs args)
        {
            var activity = obj as Generator;

            var statistic = args.NewValue as GeneratorStatisticInfo;

            if (statistic != null && activity.ModelLogic != null)
            {
                var activityML = activity.ModelLogic as ActivityGeneratorML;
                activityML.Statistic = statistic.ModelLogic as ActivityGeneratorStatisticInfoML;
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
        }


        static Generator()
        {
            UpdateModelLogicMetaData();

            // By overrindg the metadata of this property, the PropertyChangedCallback of the base class 
            // ActivityBase and this class will both be invoked when this property has been changed
            ModelLogicProperty.OverrideMetadata(typeof (Generator),
                                                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged));
        }

        public Generator()
        {

            ModelLogic = new ActivityGeneratorML();
            InitializeComponent();
        }

        #endregion

        public override string ToString()
        {
            return "Generator";
        }
    }
}