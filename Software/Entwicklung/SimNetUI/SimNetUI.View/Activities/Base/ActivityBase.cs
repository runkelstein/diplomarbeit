using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Windows.Markup;
using System.Windows.Controls;
using SimNetUI.ModelLogic.Activities.ModelProperties.Connections;
using SimNetUI.ModelLogic.Activities.Base;
using System.Windows.Data;
using System.Windows;
using System.Windows.Media;
using SimNetUI.Activities.ControlParts.Connection;
using SimNetUI.Activities.PropertyObjects.Connections;
using SimNetUI.Base;
using SimNetUI.Controls;
using System.Threading;
using SimNetUI.ModelLogic.Entity;
using SimNetUI.Util;
using SimNetUI.Activities.Events;

namespace SimNetUI.Activities.Base
{
    [DesignTimeVisible(false)]
    [ContentProperty("Output")]
    public class ActivityBase : UserControl, IEntityEntering
    {
        #region interface IEntityEntering

        public event EventHandler<EntityEnteringEventArgs> EntityEntered;

        #endregion


        #region ModelLogic interaction

        protected Entity.Entity currentEntity;

        /// <summary>
        /// This method will do a cleanup before a new simulation will
        /// be started.
        /// </summary>
        internal virtual void OnResetActivity()
        {
            currentEntity = null;
        }




        /// <summary>
        /// This method receives an entity and declares it to its current
        /// entity. Furthermore it updates the "ActivityEntered" timestamp of
        /// incomming entities. Library users may suscribe to the EntityEntered
        /// event to react on incomming entities. This event gets fired here.
        /// 
        /// 
        /// Deriving classes may override this method. If they do so, 
        /// its advised to call this base method too.
        /// </summary>
        /// <param name="currentEntity"></param>
        internal virtual void OnReceiveEntity(InConnector target, OutConnector source, Entity.Entity entity)
        {
            currentEntity = entity;

            var activity = source.ParentActivity;

            // update entering timestamp
            entity.ActivityEntered = (this.Parent as SimulationContainer).SimulationTime;

            if (EntityEntered != null)
            {
                EntityEntered(this, new EntityEnteringEventArgs(currentEntity, activity, source.Name));
            }
        }



        #endregion

        #region XAML Properties

        #region DependencyProperty Registration

        public static readonly DependencyProperty OutputProperty =
            DependencyProperty.Register("Output",
                                        typeof (FreezableCollection<Out>), typeof (ActivityBase),
                                        new FrameworkPropertyMetadata(new FreezableCollection<Out>(),
                                                                      FrameworkPropertyMetadataOptions.AffectsRender |
                                                                      FrameworkPropertyMetadataOptions.
                                                                          AffectsParentArrange |
                                                                      FrameworkPropertyMetadataOptions.AffectsArrange));

        public static readonly DependencyProperty VisualAppearanceTemplateProperty =
            DependencyProperty.Register("VisualAppearanceTemplate",
                                        typeof(UIElement), typeof(ActivityBase));

        public static readonly DependencyProperty ConnectorsVisibleProperty =
            DependencyProperty.Register("ConnectorsVisible",
                typeof(bool), typeof(ActivityBase),
                new FrameworkPropertyMetadata(true,OnConnectorsVisiblePropertyChanged));
        
        
        #endregion

        #region Property Wrapper

        [CategoryAttribute("Simulation")]
        public FreezableCollection<Out> Output
        {
            get { return (FreezableCollection<Out>) GetValue(OutputProperty); }
            set { SetValue(OutputProperty, value); }
        }

        [CategoryAttribute("Simulation")]
        public UIElement VisualAppearanceTemplate
        {
            get { return (UIElement)GetValue(VisualAppearanceTemplateProperty); }
            set { SetValue(VisualAppearanceTemplateProperty, value); }
        }

        [CategoryAttribute("Simulation")]
        [DisplayName("Connectors Visible")]
        public bool ConnectorsVisible
        {
            get { return (bool)GetValue(ConnectorsVisibleProperty); }
            set { SetValue(ConnectorsVisibleProperty, value); }
        }

        #endregion

        #region Property changed events

        private static void OnConnectorsVisiblePropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var activity = obj as ActivityBase;
            var visibility = (bool)e.NewValue;

            foreach (var connector in activity.OutConnectors)
                connector.Value.Visibility = visibility ? Visibility.Visible : Visibility.Hidden;

            foreach (var connector in activity.InConnectors)
                connector.Value.Visibility = visibility ? Visibility.Visible : Visibility.Hidden;         
        

        }

        /// <summary>
        /// Whenever the Output property has been updated, this method gets called.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OnOutputCollectionChanged(object sender, EventArgs e)
        {
            // Register the changed event on every item of this collection
            foreach (var o in Output)
            {
                o.Targets.Changed += OnTargetsChanged;

                foreach (var target in o.Targets)
                {
                    target.changed += OnTargetPropertyChanged;
                }
            }

            // Invalidation --> Rearange Connections
            if (!_lockRearange) RearangeConnections();
        }

        /// <summary>
        /// Whenever the "Targets" property of an "Out" object has been updated, this method gets called.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OnTargetsChanged(object sender, EventArgs e)
        {
            foreach (var target in sender as FreezableCollection<Target>)
            {
                target.changed += OnTargetPropertyChanged;
            }

            // Invalidation --> Rearange Connections
            if (!_lockRearange) RearangeConnections();
        }


        private void OnTargetPropertyChanged(object sender, EventArgs e)
        {
            // Invalidation --> Rearange Connections

            // Invalidate parent control, so that it's onrender method gets called
            (this.Parent as SimulationContainer).InvalidateVisual();
            //if(!_lockRearange) RearangeConnections();
        }

        #endregion

        #endregion

        #region internal Properties (not for use in Xaml)

        internal static readonly DependencyProperty InConnectorsProperty =
            DependencyProperty.Register("InConnectors",
                                        typeof (Dictionary<string, InConnector>),
                                        typeof (ActivityBase));

        internal static readonly DependencyProperty OutConnectorsProperty =
            DependencyProperty.Register("OutConnectors",
                                        typeof (Dictionary<string, OutConnector>),
                                        typeof (ActivityBase));

        internal static readonly DependencyProperty ModelLogicProperty =
            DependencyProperty.Register("ModelLogic",
                                        typeof (ActivityBaseML), typeof (ActivityBase),
                                        new FrameworkPropertyMetadata(OnModelLogicPropertyChanged));

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var activityBase = obj as ActivityBase;
            var activityBaseML = e.NewValue as ActivityBaseML;

            if (activityBaseML != null)
            {


                // set up binding
                activityBase.SetUpBinding(NameProperty);



            }
        }

        [Browsable(false)]
        internal ActivityBaseML ModelLogic
        {
            get { return (ActivityBaseML) GetValue(ModelLogicProperty); }
            set { SetValue(ModelLogicProperty, value); }
        }

        [Browsable(false)]
        internal Dictionary<string, InConnector> InConnectors
        {
            get { return (Dictionary<string, InConnector>) GetValue(InConnectorsProperty); }
            set { SetValue(InConnectorsProperty, value); }
        }

        [Browsable(false)]
        internal Dictionary<string, OutConnector> OutConnectors
        {
            get { return (Dictionary<string, OutConnector>) GetValue(OutConnectorsProperty); }
            set { SetValue(OutConnectorsProperty, value); }
        }

        #endregion

        #region constructor,initializing,loading

        public ActivityBase()
        {
            InConnectors = new Dictionary<string, InConnector>();
            OutConnectors = new Dictionary<string, OutConnector>();


            SetValue(OutputProperty, new FreezableCollection<Out>());

            Output.Changed += OnOutputCollectionChanged;

            // Register the routed event "Loaded" , it will be called before rendering
            // and after all elements in the element tree have been initialized.
            Loaded += OnLoaded;
        }

        protected override void OnInitialized(EventArgs e)
        {
            base.OnInitialized(e);
        }

        /// <summary>
        /// The Loaded event will be called before rendering and after 
        /// all elements in the element tree have been initialized.
        /// In this case it is particular neccessary, that this code will
        /// be run, after the OnInitialized method of all activities has been called,
        /// so that all connectors are already initialized.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OnLoaded(Object sender, RoutedEventArgs e)
        {
            // Invalidation --> Rearange Connections
            if (!_lockRearange) RearangeConnections();
        }

        public override string ToString()
        {
            return "SimulationBaseActivity";
        }

        #endregion

        #region Util Methods

        /// <summary>
        /// Build up a binding to the objects "ModelLogic" companion object
        /// </summary>
        /// <param name="target">The DependencyProperty which shall be bound to the ModelLogic</param>        
        internal void SetUpBinding(DependencyProperty target,IValueConverter _Converter=null,object _ConverterParameter=null)
        {
            // save intitial value
            var tmp = GetValue(target);

            // setup binding
            BindingOperations.SetBinding(this, target,
                             new Binding
                             {
                                 RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                 Converter = _Converter,
                                 ConverterParameter = _ConverterParameter,
                                 Mode = BindingMode.OneWayToSource,
                                 Path = new PropertyPath("ModelLogic." + target.Name)
                             });

            // restore initial value
            SetValue(target, tmp);

        }

        #endregion

        #region Connection Management

        /// <summary>
        /// Every Connector needs to be registered so that
        /// it can be added to the Connectors - Dictionary
        /// </summary>
        /// <param name="con"></param>
        internal void RegisterConnector(Connector con)
        {
            // set reference to activity where this connector belongs to
            con.ParentActivity = this;

            // create ModelLogic Object
            if (con is OutConnector)
            {
                var outCon = con as OutConnector;
                outCon.ModelLogic = new OutConnectorML();


                // Add Connector to ML dictionary
                this.ModelLogic.OutConnectors.Add(outCon.Name, outCon.ModelLogic);
                OutConnectors.Add(con.Name, outCon);
            }
            else
            {
                var inCon = con as InConnector;
                inCon.ModelLogic = new InConnectorML();

                this.ModelLogic.InConnectors.Add(inCon.Name, inCon.ModelLogic);
                InConnectors.Add(inCon.Name, inCon);
            }
        }

        /// <summary>
        /// Start and end points of all connectors within the "Simulation" control have to be calculated
        /// whenever the position of an activity changes 
        /// </summary>
        internal void CalculateConnectorPositions()
        {
            if (IsLoaded && this.Parent is SimulationContainer)
            {
                // Calculate the start points für outgoing Connections
                foreach (var connection in OutConnectors)
                {
                    // Retrieve the offset position of the connector 
                    // up to the the enclosing simulation control
                    Point p = connection.Value.TransformToAncestor(this.Parent as Visual).Transform(new Point(0, 0));
                    connection.Value.Position = new Point(p.X + connection.Value.ActualWidth,
                                                          p.Y + connection.Value.ActualHeight/2);
                }

                // Calculate the end points für incomming Connections
                foreach (var connection in InConnectors)
                {
                    // Retrieve the offset position of the connector 
                    // up to the the enclosing simulation control
                    Point p = connection.Value.TransformToAncestor(this.Parent as Visual).Transform(new Point(0, 0));
                    connection.Value.Position = new Point(p.X, p.Y + connection.Value.ActualHeight/2);
                }
            }
        }

        internal static bool _lockRearange = false;

        /// <summary>
        /// This method should be called whenever modifications on properties
        /// related to connection settings as been occured (This considers the "Output" collection which 
        /// is defined as content property of this class, and its sub objects ("Target")) 
        /// 
        /// There is one drawback when using bindings for objects like Out and Target. Since these objects are used as
        /// DependencyProperties a recursive call to this method whenever a change occurs.
        /// A recursive call would completly destroy the expected beaviour. Because of that a lock variable "_lockRearange"
        /// is used to prevent recursive processing of this method.
        /// </summary>
        private void RearangeConnections()
        {
            if (IsLoaded && !_lockRearange)
            {
                _lockRearange = true;

                // This controll will only work properly with a Simulation control as parent
                // Errors may occur if used in a different context.
                if (this.Parent is SimulationContainer)
                {
                    // start by clearing all connections
                    foreach (var connector in OutConnectors)
                    {
                        connector.Value.ModelLogic.Outgoing.Clear();
                        connector.Value.Outgoing.Clear();
                    }


                    //foreach (var connector in InConnectors)
                    //{
                    //    connector.Value.ModelLogic.Incomming.Clear();
                    //} 


                    // Validate Connections defined in Xaml, and connect Connectors
                    foreach (var o in Output)
                    {
                        // Check if there is an OutConnector with the name
                        // specified by this out-object, if there is proceed
                        // otherwise throw an exception
                        if (OutConnectors.ContainsKey(o.Connector))
                        {
                            foreach (var t in o.Targets)
                            {
                                // check  if there is an activity withe the name
                                // specified by this target-object, if so proceed
                                // otherwise throw an exception

                                //ActivityBaseML activityML = this.ModelLogic;
                                ActivityBase activityTarget;

                                if ((activityTarget = (this.Parent as SimulationContainer).ContainsActivity(t.Activity)) !=
                                    null)
                                {
                                    // Check if the target-activity does have an "InConnector"
                                    // specified by the "Connector" property of the target object
                                    // otherwise throw an exception

                                    if (activityTarget.InConnectors.ContainsKey(t.Connector))
                                    {
                                        //var activityTargetML = activityTarget.ModelLogic;
                                        var inCon = activityTarget.InConnectors[t.Connector];
                                        var outCon = this.OutConnectors[o.Connector];
                                        //var inConML = inCon.ModelLogic;
                                        //var outConML = outCon.ModelLogic;
                                        // Connect In and Out Connectors

                                        // First check the constraint limitConnections
                                        if (this.OutConnectors[o.Connector].IsLimitReached)
                                            throw new SimNetUIViewException("The outgoing connector \"" + o.Connector +
                                                                            "\" of activity \"" + this.Name + "\" (" +
                                                                            this + ") does not allow more than " +
                                                                            outCon.LimitConnections +
                                                                            " outgoing connections");


                                        if (activityTarget.InConnectors[t.Connector].IsLimitReached)
                                            throw new SimNetUIViewException("The incomming connector \"" + t.Connector +
                                                                            "\" of activity \"" + activityTarget.Name +
                                                                            "\" (" + this +
                                                                            ") does not allow more than " +
                                                                            inCon.LimitConnections +
                                                                            " incomming connections");

                                        // If everything is allright proceed

                                        ConnectionPath path = new ConnectionPath();

                                        Action<DependencyObject, DependencyProperty, DependencyProperty> SetUpBinding =
                                            (sourceObj, sourceProperty, targetProperty) =>
                                                {
                                                    BindingOperations.SetBinding(
                                                        path,
                                                        targetProperty,
                                                        new Binding
                                                            {
                                                                Source = sourceObj,
                                                                Mode = BindingMode.OneWay,
                                                                Path = new PropertyPath(sourceProperty)
                                                            }
                                                        );
                                                };


                                        SetUpBinding(inCon, InConnector.PositionProperty, ConnectionPath.EndProperty);
                                        SetUpBinding(outCon, OutConnector.PositionProperty, ConnectionPath.StartProperty);
                                        SetUpBinding(t, Target.ConnectionPointsProperty,
                                                     ConnectionPath.ConnectionPointsProperty);
                                        SetUpBinding(t, Target.ConnectionVisibilityProperty,
                                                     ConnectionPath.ConnectionVisibilityProperty);


                                        if (activityTarget.InConnectors[t.Connector].Incomming.ContainsKey(outCon))
                                        {
                                            activityTarget.ModelLogic.InConnectors[t.Connector].Incomming.Remove(
                                                outCon.ModelLogic);
                                            activityTarget.InConnectors[t.Connector].Incomming.Remove(outCon);
                                        }

                                        activityTarget.InConnectors[t.Connector].Incomming.Add(outCon, path);
                                        activityTarget.ModelLogic.InConnectors[t.Connector].Incomming.Add(
                                            outCon.ModelLogic);

                                        this.OutConnectors[o.Connector].Outgoing.Add(inCon, path);
                                        this.ModelLogic.OutConnectors[o.Connector].Outgoing.Add(inCon.ModelLogic);
                                    }
                                    else
                                    {
                                        throw new SimNetUIViewException("The Activity \"" + activityTarget.Name +
                                                                        "\" of type \"" + activityTarget +
                                                                        "\" does not have an incomming Connecter named \"" +
                                                                        t.Connector + "\". But the activity \"" +
                                                                        this.Name + "\" of type \"" + this +
                                                                        "\" is refering to this connector.");
                                    }
                                }
                                else
                                {
                                    throw new SimNetUIViewException("The Activity \"" + this.Name + "\" of type \"" +
                                                                    this +
                                                                    "\" trys to refer to another activity called \"" +
                                                                    t.Activity +
                                                                    "\" wich doesnt exist within the scope of the enclosing \"SimulationContainer\" control ");
                                }
                            }
                        }
                        else
                        {
                            throw new SimNetUIViewException("The Activity \"" + this.Name + "\" of type \"" + this +
                                                            "\" does not have an outgoing connector \"" + o.Connector +
                                                            "\"");
                        }
                    }

                    // Invalidate parent control, so that it's onrender method gets called
                    (this.Parent as SimulationContainer).InvalidateVisual();
                }

                _lockRearange = false;
            }
        }

        #endregion

        #region overrides

        /// <summary>
        /// As soon as the position or size within the parent control has changed, this method will get called.
        /// It invalidates its parent so that its "OnRender" method gets called. 
        /// If the parent control is the simulation control, a line between this activity and the next one will be drawn
        /// </summary>
        /// <param name="arrangeBounds"></param>
        /// <returns></returns>
        protected override Size ArrangeOverride(Size arrangeBounds)
        {
            if (this.Parent != null && this.Parent is SimulationContainer)
            {
                (this.Parent as SimulationContainer).InvalidateVisual();
            }
            return base.ArrangeOverride(arrangeBounds);
        }

        #endregion
    }
}