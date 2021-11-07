using System;
using System.Windows;

namespace SimNetUI.Activities.PropertyObjects.Connections
{
    public class Target : DependencyObject
    {
        public event EventHandler changed;

        private static readonly DependencyProperty ActivityProperty =
            DependencyProperty.Register("Activity",
                                        typeof (string), typeof (Target),
                                        new FrameworkPropertyMetadata(null,
                                                                      FrameworkPropertyMetadataOptions.AffectsRender |
                                                                      FrameworkPropertyMetadataOptions.
                                                                          AffectsParentArrange |
                                                                      FrameworkPropertyMetadataOptions.AffectsArrange,
                                                                      OnTargetPropertyChanged)
                );

        private static readonly DependencyProperty ConnectorProperty =
            DependencyProperty.Register("Connector",
                                        typeof (string), typeof (Target),
                                        new FrameworkPropertyMetadata(null,
                                                                      FrameworkPropertyMetadataOptions.AffectsRender |
                                                                      FrameworkPropertyMetadataOptions.
                                                                          AffectsParentArrange |
                                                                      FrameworkPropertyMetadataOptions.AffectsArrange,
                                                                      OnTargetPropertyChanged));


        public static readonly DependencyProperty ConnectionPointsProperty =
            DependencyProperty.Register("ConnectionPoints",
                                        typeof (String),
                                        typeof (Target),
                                        new FrameworkPropertyMetadata(null,
                                                                      FrameworkPropertyMetadataOptions.AffectsRender |
                                                                      FrameworkPropertyMetadataOptions.
                                                                          AffectsParentArrange |
                                                                      FrameworkPropertyMetadataOptions.AffectsArrange,
                                                                      OnTargetPropertyChanged));


        public String ConnectionPoints
        {
            get { return GetValue(ConnectionPointsProperty) as String; }
            set { SetValue(ConnectionPointsProperty, value); }
        }

        public static readonly DependencyProperty ConnectionVisibilityProperty =
            DependencyProperty.Register("ConnectionVisibility",
                                        typeof (Boolean),
                                        typeof (Target),
                                        new FrameworkPropertyMetadata(true,
                                                                      FrameworkPropertyMetadataOptions.AffectsRender |
                                                                      FrameworkPropertyMetadataOptions.
                                                                          AffectsParentArrange |
                                                                      FrameworkPropertyMetadataOptions.AffectsArrange,
                                                                      OnTargetPropertyChanged));

        public Boolean ConnectionVisibility
        {
            get { return (Boolean) GetValue(ConnectionVisibilityProperty); }
            set { SetValue(ConnectionVisibilityProperty, value); }
        }


        public string Activity
        {
            get { return (string) GetValue(ActivityProperty); }
            set { SetValue(ActivityProperty, value); }
        }


        public string Connector
        {
            get { return (string) GetValue(ConnectorProperty); }
            set { SetValue(ConnectorProperty, value); }
        }


        private static void OnTargetPropertyChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            var target = d as Target;

            if (target.changed != null)
                target.changed(d, new EventArgs());
        }
    }
}