using System;
using System.Windows;
using System.Windows.Media;
using SimNetUI.Activities.Base;

namespace SimNetUI.Activities.ControlParts.Connection
{
    internal abstract class Connector : FrameworkElement
    {
        #region XAML Properties

        #region DependencyProperty Registration

        public static readonly DependencyProperty LimitConnectionsProperty = DependencyProperty.Register(
            "LimitConnections", typeof (uint), typeof (Connector));

        public static readonly DependencyProperty PositionProperty = DependencyProperty.Register(
            "PositionProperty", typeof (Point), typeof (Connector),
            new FrameworkPropertyMetadata(new Point(0, 0),
                                          FrameworkPropertyMetadataOptions.BindsTwoWayByDefault));

        #endregion

        #region Property Wrapper

        public uint LimitConnections
        {
            get { return (uint) GetValue(LimitConnectionsProperty); }
            set { SetValue(LimitConnectionsProperty, value); }
        }

        public Point Position
        {
            get { return (Point) GetValue(PositionProperty); }
            set { SetValue(PositionProperty, value); }
        }

        #endregion

        #endregion

        private DrawingVisual visual = null;
        protected abstract Geometry Arrow { get; }
        public ActivityBase ParentActivity { get; set; }

        #region constructor

        public Connector()
        {
            visual = new DrawingVisual();
            using (DrawingContext dc = visual.RenderOpen())
            {
                dc.DrawGeometry(Brushes.Black, null, Arrow);
            }

            Width = 10;
            Height = 10;
        }

        #endregion

        #region overrides

        protected override int VisualChildrenCount
        {
            get { return 1; // we only got one child
            }
        }

        protected override Visual GetVisualChild(int index)
        {
            if (index != 0)
                throw new ArgumentOutOfRangeException("index");

            return visual;
        }

        #endregion

        #region abstract

        public abstract bool IsLimitReached { get; }

        #endregion
    }
}