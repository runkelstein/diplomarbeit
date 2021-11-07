using System;
using System.Linq;
using System.Windows;
using SimNetUI.ModelLogic.Activities.ModelProperties.Distributions;
using SimNetUI.ModelLogic.Activities.ModelProperties.Schedule;
using System.Windows.Markup;
using System.ComponentModel;
using System.Windows.Data;
using System.Collections.ObjectModel;
using SimNetUI.Activities.PropertyObjects.Distributions;

namespace SimNetUI.Activities.PropertyObjects.Schedule
{
    [ContentProperty("Content")]
    public class Schedule : DependencyObject
    {
        #region internal Properties (not for use in Xaml)

        internal static readonly DependencyProperty ModelLogicProperty =
            DependencyProperty.Register("ModelLogic",
                                        typeof (ScheduleML), typeof (Schedule),
                                        new FrameworkPropertyMetadata(OnModelPropertyChanged));

        [Browsable(false)]
        internal ScheduleML ModelLogic
        {
            get { return (ScheduleML) GetValue(ModelLogicProperty); }
            set { SetValue(ModelLogicProperty, value); }
        }

        private static void OnModelPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var schedule = obj as Schedule;
            var scheduleML = e.NewValue as ScheduleML;

            if (scheduleML != null)
            {
                // Copy user values, so that they dont get overriden from
                // binding code below
                scheduleML.Start = schedule.Start;
                scheduleML.Stop = schedule.Stop;

                // setup Bindings
                BindingOperations.SetBinding(schedule, Schedule.StartProperty,
                                             new Binding
                                                 {
                                                     Mode = BindingMode.TwoWay,
                                                     RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                                     Path = new PropertyPath("ModelLogic.Start")
                                                 });

                BindingOperations.SetBinding(schedule, Schedule.StopProperty,
                                             new Binding
                                                 {
                                                     Mode = BindingMode.TwoWay,
                                                     RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                                     Path = new PropertyPath("ModelLogic.Stop")
                                                 });

                var tempList = (from distribution in schedule.Content
                                select distribution.ModelLogic).ToList();

                scheduleML.Content =
                    new ReadOnlyCollection<DistributionBaseML>(tempList);
            }
        }

        #endregion

        public static readonly DependencyProperty StartProperty =
            DependencyProperty.Register("Start",
                                        typeof (double), typeof (Schedule),
                                        new FrameworkPropertyMetadata(0.0));

        public double Start
        {
            get { return (double) GetValue(StartProperty); }
            set { SetValue(StartProperty, value); }
        }

        public static readonly DependencyProperty StopProperty =
            DependencyProperty.Register("Stop",
                                        typeof (double), typeof (Schedule),
                                        new FrameworkPropertyMetadata(double.PositiveInfinity));

        public double Stop
        {
            get { return (double) GetValue(StopProperty); }
            set { SetValue(StopProperty, value); }
        }


        public static readonly DependencyProperty ContentProperty =
            DependencyProperty.Register("Content",
                                        typeof (FreezableCollection<DistributionBase>), typeof (Schedule),
                                        new FrameworkPropertyMetadata(new FreezableCollection<DistributionBase>()));

        public FreezableCollection<DistributionBase> Content
        {
            get { return (FreezableCollection<DistributionBase>) GetValue(ContentProperty); }
            set { SetValue(ContentProperty, value); }
        }

        public static readonly DependencyProperty DurationProperty =
            DependencyProperty.RegisterAttached("Duration",
                                                typeof (double), typeof (Schedule),
                                                new FrameworkPropertyMetadata(double.MaxValue));


        public static void SetDuration(DistributionBase distribution, double value)
        {
            if (distribution == null)
            {
                throw new ArgumentException("distribution");
            }
            distribution.SetValue(DurationProperty, value);
        }

        [CategoryAttribute("Simulation")]
        [AttachedPropertyBrowsableForChildren]
        public static double GetDuration(DistributionBase distribution)
        {
            if (distribution == null)
            {
                throw new ArgumentException("distribution");
            }
            return (double) distribution.GetValue(DurationProperty);
        }

        public Schedule()
        {
            SetValue(ContentProperty, new FreezableCollection<DistributionBase>());
            ModelLogic = new ScheduleML();
            Content.Changed += OnContentChanged;
        }

        private void OnContentChanged(object sender, EventArgs e)
        {
            var tempList = (from distribution in Content
                            select distribution.ModelLogic).ToList();

            ModelLogic.Content =
                new ReadOnlyCollection<DistributionBaseML>(tempList);
        }
    }
}