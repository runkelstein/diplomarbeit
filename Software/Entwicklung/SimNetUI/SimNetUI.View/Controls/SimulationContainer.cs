using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;
using System.Windows.Media;
using System.ComponentModel;
using SimNetUI.ModelLogic;
using SimNetUI.ModelLogic.Activities.Base;
using SimNetUI.Activities.Base;
using SimNetUI.Activities.ControlParts.Connection;
using System.Collections.ObjectModel;
using SimNetUI.Base;
using System.Windows.Media.Animation;
using System.Threading;

namespace SimNetUI.Controls
{
    [DesignTimeVisible(true)]
    public class SimulationContainer : Canvas
    {
        #region Xaml Properties

        #region register dependency properties

        public static readonly DependencyProperty SimulationTimeProperty =
            DependencyProperty.Register("SimulationTime",
                                        typeof (double), typeof (SimulationContainer),
                                        new FrameworkPropertyMetadata(0.0));

        public static readonly DependencyProperty AnimationClockSpeedProperty =
            DependencyProperty.Register("AnimationClockSpeed",
                                        typeof (double), typeof (SimulationContainer),
                                        new FrameworkPropertyMetadata(1.0, OnAnimationClockSpeedPropertyChanged),
                                        OnAnimationClockSpeedValidation);

        public static readonly DependencyProperty SimulationStopTimeProperty =
            DependencyProperty.Register("SimulationStopTime",
                                typeof(double), typeof(SimulationContainer),
                                new FrameworkPropertyMetadata(double.PositiveInfinity));


        #endregion

        #region property wrappers

        [Category("Simulation")]
        public double SimulationTime
        {
            get { return (double) GetValue(SimulationTimeProperty); }
        }

        [Category("Simulation")]
        public double AnimationClockSpeed
        {
            get { return (double) GetValue(AnimationClockSpeedProperty); }
            set { SetValue(AnimationClockSpeedProperty, value); }
        }

        [Category("Simulation")]
        public double SimulationStopTime
        {
            get { return (double)GetValue(SimulationStopTimeProperty); }
            set { SetValue(SimulationStopTimeProperty, value); }
        }

        #endregion

        #region callbacks

        private static void OnAnimationClockSpeedPropertyChanged(DependencyObject obj,
                                                                 DependencyPropertyChangedEventArgs e)
        {
            var simulationContainer = obj as SimulationContainer;
            var value = (double) e.NewValue;

            if (simulationContainer.pathAnimationStoryboard != null)
            {
                simulationContainer.pathAnimationStoryboard.SetSpeedRatio(simulationContainer, value);
            }
        }

        public static bool OnAnimationClockSpeedValidation(object value)
        {
            var v = (double) value;

            return
                !Double.IsInfinity(v) &&
                !Double.IsNaN(v) &&
                v > 0.1;
        }

        #endregion

        #endregion

        #region internal Properties (not for use in Xaml)

        internal static readonly DependencyProperty ModelLogicProperty =
            DependencyProperty.Register("ModelLogic",
                                        typeof (SimulationML), typeof (SimulationContainer),
                                        new FrameworkPropertyMetadata(OnModelLogicPropertyChanged));

        [Browsable(false)]
        internal SimulationML ModelLogic
        {
            get { return (SimulationML) GetValue(ModelLogicProperty); }
            set { SetValue(ModelLogicProperty, value); }
        }

        /// <summary>
        /// This helper method updates the activities collection of the modellogic object
        /// used by this SimulationContainer
        /// </summary>
        internal void UpdateActivityListInModelLogic()
        {
            var tempList = new List<ActivityBaseML>();

            foreach (var activity in Children.OfType<ActivityBase>())
            {
                if (activity.ModelLogic != null)
                {
                    tempList.Add(activity.ModelLogic);
                }
            }

            this.ModelLogic.Activities = new ReadOnlyCollection<ActivityBaseML>(tempList);
        }

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            // Scan through all children and if they are activities add them
            // to the list of activities of the ModelLogic Object


            var simulationContainer = obj as SimulationContainer;
            var simulationML = e.NewValue as SimulationML;

            if (simulationML != null)
            {
                simulationContainer.UpdateActivityListInModelLogic();

                // initialize bindings
                simulationContainer.SetUpBinding(SimulationTimeProperty, mode: BindingMode.OneWay);
                simulationContainer.SetUpBinding(SimulationStopTimeProperty);


            }
        }

        #endregion

        #region commands

        private bool _playCanExecute;
        private bool _stopCanExecute;

        private void PlayCanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = _playCanExecute;
            e.Handled = true;
        }

        private void PlayExecuted(object sender, ExecutedRoutedEventArgs e)
        {
            _playCanExecute = false;
            _stopCanExecute = !_playCanExecute;

            // invoke cleanup for every activity
            foreach (var activity in Children.OfType<ActivityBase>())
            {
                activity.OnResetActivity();
            }

            SimulationWorker.RunWorkerAsync(this.ModelLogic);
        }

        private void StopCanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = _stopCanExecute;
            e.Handled = true;
        }

        private void StopExecuted(object sender, ExecutedRoutedEventArgs e)
        {
            // stop animation
            if (this.pathAnimationStoryboard != null)
            {
                this.pathAnimationStoryboard.Stop(this);

                // since the "Completed" event of the storyboard gets
                // never fired after it got stoped, we need to execute the
                // coresponding delegate method here
                if (AnimationCompleted != null)
                    AnimationCompleted(this, new EventArgs());
            }

            // cancel simulation
            SimulationWorker.CancelAsync();
        }

        #endregion

        #region Simulation Logic

        private BackgroundWorker SimulationWorker;


        private void SimulationWorker_DoWork(object sender, DoWorkEventArgs e)
        {
            var worker = sender as BackgroundWorker;
            var simulationML = e.Argument as SimulationML;

            simulationML.SimulationCancelCheck += delegate()
                                                      {
                                                          if (worker.CancellationPending)
                                                          {
                                                              e.Cancel = true;
                                                          }


                                                          return e.Cancel;
                                                      };


            simulationML.CancelSimulation += delegate()
                                                {
                                                    e.Cancel = true;
                                                };

            

            simulationML.StartSimulation();
        }


        private void SimulationWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            _stopCanExecute = false;
            _playCanExecute = !_stopCanExecute;

            // invalidate command bindings
            CommandManager.InvalidateRequerySuggested();
        }

        #endregion

        #region Common

        public SimulationContainer()
        {
            // Register Commands
            _playCanExecute = true;
            _stopCanExecute = !_playCanExecute;

            CommandBinding playBinding = new CommandBinding();
            playBinding.Command = MediaCommands.Play;
            playBinding.CanExecute += PlayCanExecute;
            playBinding.Executed += PlayExecuted;


            CommandBinding stopBinding = new CommandBinding();
            stopBinding.Command = MediaCommands.Stop;
            stopBinding.CanExecute += StopCanExecute;
            stopBinding.Executed += StopExecuted;

            this.CommandBindings.Add(playBinding);
            this.CommandBindings.Add(stopBinding);

            SimulationWorker = new BackgroundWorker();
            SimulationWorker.WorkerSupportsCancellation = true;
            SimulationWorker.DoWork += SimulationWorker_DoWork;
            SimulationWorker.RunWorkerCompleted += SimulationWorker_RunWorkerCompleted;
        }

        protected override void OnInitialized(EventArgs e)
        {
            base.OnInitialized(e);


            ModelLogic = new SimulationML();
        }

        #endregion

        #region UtilMethods

        /// <summary>
        /// This method checks, if this control contains a activity with the specified name
        /// and if so, returns the activity
        /// </summary>
        /// <param name="name">The name of the DependencyObject we are looking for</param>
        /// <returns>The activity which the caller of this method was looking for, otherwise null</returns>
        internal ActivityBase ContainsActivity(string name)
        {
            foreach (var activity in Children.OfType<ActivityBase>())
            {
                if (activity.Name == name)
                    return activity;
            }

            return null;
        }

        /// <summary>
        /// Build up a binding to the objects "ModelLogic" companion object
        /// </summary>
        /// <param name="target">The DependencyProperty which shall be bound to the ModelLogic</param>        
        internal void SetUpBinding(DependencyProperty target, IValueConverter converter = null, object converterParameter
            = null, BindingMode mode = BindingMode.OneWayToSource)
        {
            // save intitial value
            var tmp = GetValue(target);

            // setup binding
            BindingOperations.SetBinding(this, target,
                             new Binding
                             {
                                 RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                 Converter = converter,
                                 ConverterParameter = converterParameter,
                                 Mode = mode,
                                 Path = new PropertyPath("ModelLogic." + target.Name)
                             });

            // restore initial value
            if (mode!=BindingMode.OneWay) SetValue(target, tmp);

        }

        #endregion

        #region Animation

        private Storyboard pathAnimationStoryboard;
        private EventHandler AnimationCompleted;

        internal void AnimateEntity(InConnector inConnector, OutConnector outConnector, Entity.Entity entity,
                                    ActivityBase targetActivity, AutoResetEvent ev)
        {
            // Further documetation about how animations work can be found here:
            // http://msdn.microsoft.com/de-de/library/aa970561.aspx  (08.07.2011)


            // First we add the visual to the SimulationContainer

            var element = entity.VisualAppearance;

            // Adjust margin, this ensures that the to be animated element is centered
            if (!Double.IsInfinity(element.Width) && !Double.IsInfinity(element.Height) &&
                !Double.IsNaN(element.Width) && !Double.IsNaN(element.Height))
            {
                element.Margin = new Thickness(-element.Width / 2, -element.Height / 2, 0, 0);
            }


            // prepare uiElement
            element.RenderTransform = new MatrixTransform();

            //add UIElement to SimulationContainer
            this.Children.Add(element);


            // Create Path

            PathGeometry path = new PathGeometry();

            path.AddGeometry(Geometry.Parse(outConnector.Outgoing[inConnector].GetFullPath()));

            path.Freeze();


            // Create Animation
            MatrixAnimationUsingPath matrixAnimation = new MatrixAnimationUsingPath();
            matrixAnimation.PathGeometry = path;

            matrixAnimation.Duration = new Duration(TimeSpan.FromSeconds(2));

            matrixAnimation.RepeatBehavior = new RepeatBehavior(1);
            matrixAnimation.DoesRotateWithTangent = false;


            // Assign Storyboard Properties
            Storyboard.SetTarget(matrixAnimation, element);
            Storyboard.SetTargetProperty(matrixAnimation, new PropertyPath("RenderTransform.Matrix"));

            // Create Storyboard
            pathAnimationStoryboard = new Storyboard();
            pathAnimationStoryboard.Children.Add(matrixAnimation);

            AnimationCompleted = delegate(object sender, EventArgs e)
                                     {
                                         this.Children.Remove(element);

                                         // reset RenderTransform
                                         element.RenderTransform = null;

                                         // reset Margin
                                         element.Margin = new Thickness(0);

                                         targetActivity.OnReceiveEntity(inConnector, outConnector, entity);

                                         ev.Set();
                                     };

            pathAnimationStoryboard.Completed += AnimationCompleted;


            // start animation

            pathAnimationStoryboard.Begin(this, true);
            pathAnimationStoryboard.SetSpeedRatio(this, this.AnimationClockSpeed);
        }

        #endregion

        #region overrides

        protected override void OnRender(DrawingContext dc)
        {
            if (!ActivityBase._lockRearange)
            {
                foreach (var activity in this.Children.OfType<ActivityBase>())
                {
                    // iterate through all outgoing connections
                    foreach (var o in activity.OutConnectors)
                    {
                        var outCon = o.Value;

                        // iterate through all targets
                        foreach (var con in outCon.Outgoing)
                        {
                            var inCon = con.Key;
                            var path = con.Value;

                            // A connection shall be drawn at runtime only if the connection is marked as visible
                            // At design time a connection will be drawn nevertheless, but with a different apearance
                            if (DesignerProperties.GetIsInDesignMode(this) || path.ConnectionVisibility)
                            {
                                // Line Pen
                                Pen linePen = new Pen();
                                linePen.Thickness = 2;
                                linePen.Brush = path.ConnectionVisibility ? Brushes.Black : Brushes.DimGray;
                                linePen.LineJoin = PenLineJoin.Round;
                                linePen.StartLineCap = PenLineCap.Triangle;
                                linePen.EndLineCap = PenLineCap.Triangle;
                                linePen.DashStyle = path.ConnectionVisibility ? DashStyles.Solid : DashStyles.Dash;


                                try
                                {
                                    dc.DrawGeometry(null,
                                                    linePen,
                                                    Geometry.Parse(path.GetFullPath())
                                        );
                                }
                                catch
                                {
                                    throw new SimNetUIViewException("Connection path could not be evaluated");
                                }
                            }
                        }
                    }
                }
            }
        }

        protected override Size ArrangeOverride(Size arrangeBounds)
        {
            Size s = base.ArrangeOverride(arrangeBounds);

            if (!ActivityBase._lockRearange)
            {
                foreach (var activity in Children.OfType<ActivityBase>())
                {
                    activity.CalculateConnectorPositions();
                }
            }


            return s;
        }

        #endregion
    }
}