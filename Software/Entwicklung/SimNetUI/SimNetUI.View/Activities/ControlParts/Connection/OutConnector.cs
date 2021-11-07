using System.Collections.Generic;
using System.Windows.Media;
using System.Windows;
using System.ComponentModel;
using System.Windows.Data;
using SimNetUI.ModelLogic.Activities.ModelProperties.Connections;
using SimNetUI.Activities.PropertyObjects.Connections;

namespace SimNetUI.Activities.ControlParts.Connection
{
    internal class OutConnector : Connector
    {
        public Dictionary<InConnector, ConnectionPath> Outgoing { get; set; }

        public override bool IsLimitReached
        {
            get { return Outgoing.Count >= LimitConnections; }
        }

        internal static readonly DependencyProperty ModelLogicProperty =
            DependencyProperty.Register("ModelLogic",
                                        typeof (OutConnectorML), typeof (OutConnector),
                                        new FrameworkPropertyMetadata(OnModelPropertyChanged));

        [Browsable(false)]
        internal OutConnectorML ModelLogic
        {
            get { return (OutConnectorML) GetValue(ModelLogicProperty); }
            set { SetValue(ModelLogicProperty, value); }
        }

        private static void OnModelPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var outCon = obj as OutConnector;
            var outConML = e.NewValue as OutConnectorML;

            if (outConML != null)
            {
                // setup Bindings
                var limit = outCon.LimitConnections;
                BindingOperations.SetBinding(outCon, OutConnector.LimitConnectionsProperty,
                                             new Binding
                                                 {
                                                     RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                                     Mode = BindingMode.OneWayToSource,
                                                     Path = new PropertyPath("ModelLogic.LimitConnections")
                                                 });
                outCon.LimitConnections = limit;

                var name = outCon.Name;
                BindingOperations.SetBinding(outCon, OutConnector.NameProperty,
                                             new Binding
                                                 {
                                                     RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                                     Mode = BindingMode.OneWayToSource,
                                                     Path = new PropertyPath("ModelLogic.Name")
                                                 }
                    );
                outCon.Name = name;

                // set reference to modellogic parent
                outConML.ParentActivity = outCon.ParentActivity.ModelLogic;
            }
        }

        static OutConnector()
        {
            OutConnector.LimitConnectionsProperty.OverrideMetadata(
                typeof (OutConnector), new FrameworkPropertyMetadata(uint.MaxValue));
        }


        protected override Geometry Arrow
        {
            get { return Geometry.Parse("M 0,0 L 10,5 L 0,10"); }
        }

        public OutConnector()
        {
            Outgoing = new Dictionary<InConnector, ConnectionPath>();
        }
    }
}