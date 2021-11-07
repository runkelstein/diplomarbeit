using System.Collections.Generic;
using System.Windows.Media;
using System.Windows;
using System.ComponentModel;
using System.Windows.Data;
using SimNetUI.ModelLogic.Activities.ModelProperties.Connections;
using SimNetUI.Activities.PropertyObjects.Connections;

namespace SimNetUI.Activities.ControlParts.Connection
{
    internal class InConnector : Connector
    {
        public Dictionary<OutConnector, ConnectionPath> Incomming { get; set; }


        public override bool IsLimitReached
        {
            get { return Incomming.Count >= LimitConnections; }
        }

        #region internal not for use in xaml

        #region Dependency Property Registration

        internal static readonly DependencyProperty ModelLogicProperty =
            DependencyProperty.Register("ModelLogic",
                                        typeof (InConnectorML), typeof (InConnector),
                                        new FrameworkPropertyMetadata(OnModelPropertyChanged));

        #endregion

        #region Property Wrapper

        [Browsable(false)]
        internal InConnectorML ModelLogic
        {
            get { return (InConnectorML) GetValue(ModelLogicProperty); }
            set { SetValue(ModelLogicProperty, value); }
        }

        #endregion

        #region Property Changed Events

        private static void OnModelPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var inCon = obj as InConnector;
            var inConML = e.NewValue as InConnectorML;

            if (inConML != null)
            {
                var limit = inCon.LimitConnections;
                // setup Bindings
                BindingOperations.SetBinding(inCon, InConnector.LimitConnectionsProperty,
                                             new Binding
                                                 {
                                                     RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                                     Mode = BindingMode.OneWayToSource,
                                                     Path = new PropertyPath("ModelLogic.LimitConnections")
                                                 });
                inCon.LimitConnections = limit;

                var name = inCon.Name;
                BindingOperations.SetBinding(inCon, InConnector.NameProperty,
                                             new Binding
                                                 {
                                                     RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                                     Mode = BindingMode.OneWayToSource,
                                                     Path = new PropertyPath("ModelLogic.Name")
                                                 }
                    );
                inCon.Name = name;

                // set reference to modellogic parent
                inConML.ParentActivity = inCon.ParentActivity.ModelLogic;
            }
        }

        #endregion

        #endregion

        protected override Geometry Arrow
        {
            get { return Geometry.Parse("M 10,0 L 0,5 L 10,10"); }
        }

        static InConnector()
        {
            InConnector.LimitConnectionsProperty.OverrideMetadata(
                typeof (InConnector), new FrameworkPropertyMetadata(uint.MaxValue));
        }

        public InConnector()
        {
            Incomming = new Dictionary<OutConnector, ConnectionPath>();
        }
    }
}