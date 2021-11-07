using System.Windows;
using System.Globalization;

namespace SimNetUI.Activities.PropertyObjects.Connections
{
    public class ConnectionPath : DependencyObject
    {
        #region private util methods

        private string PointToString(Point p)
        {
            return p.ToString(CultureInfo.InvariantCulture);
        }

        #endregion

        #region public methods

        public string GetFullPath()
        {
            if (ConnectionPoints != null)
                return "M " + PointToString(Start) + " " + ConnectionPoints + " " + PointToString(End);
            else
                return "M " + PointToString(Start) + " L " + PointToString(End);
        }

        #endregion

        #region Properties

        #region Dependency Registration

        public static readonly DependencyProperty ConnectionPointsProperty =
            DependencyProperty.Register("ConnectionPoints", typeof (string), typeof (ConnectionPath));

        public static readonly DependencyProperty StartProperty =
            DependencyProperty.Register("Start", typeof (Point), typeof (ConnectionPath));

        public static readonly DependencyProperty EndProperty =
            DependencyProperty.Register("End", typeof (Point), typeof (ConnectionPath));

        public static readonly DependencyProperty ConnectionVisibilityProperty =
            DependencyProperty.Register("ConnectionVisibility", typeof (bool), typeof (ConnectionPath));

        #endregion

        #region Property Wrapper

        public string ConnectionPoints
        {
            get { return (string) GetValue(ConnectionPointsProperty); }
            set { SetValue(ConnectionPointsProperty, value); }
        }

        public Point Start
        {
            get { return (Point) GetValue(StartProperty); }
            set { SetValue(StartProperty, value); }
        }

        public Point End
        {
            get { return (Point) GetValue(EndProperty); }
            set { SetValue(EndProperty, value); }
        }

        public bool ConnectionVisibility
        {
            get { return (bool) GetValue(ConnectionVisibilityProperty); }
            set { SetValue(ConnectionVisibilityProperty, value); }
        }

        #endregion

        #endregion
    }
}