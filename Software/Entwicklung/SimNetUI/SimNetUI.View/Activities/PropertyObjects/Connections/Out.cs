using System.Windows.Markup;
using System.Windows;

namespace SimNetUI.Activities.PropertyObjects.Connections
{
    [ContentProperty("Targets")]
    public class Out : DependencyObject
    {
        private static readonly DependencyProperty ConnectorProperty =
            DependencyProperty.Register("Connector",
                                        typeof (string), typeof (Out),
                                        new FrameworkPropertyMetadata(null,
                                                                      FrameworkPropertyMetadataOptions.AffectsRender |
                                                                      FrameworkPropertyMetadataOptions.
                                                                          AffectsParentArrange |
                                                                      FrameworkPropertyMetadataOptions.AffectsArrange));

        public string Connector
        {
            get { return (string) GetValue(ConnectorProperty); }
            set { SetValue(ConnectorProperty, value); }
        }

        private static readonly DependencyProperty TargetsProperty =
            DependencyProperty.Register("Targets",
                                        typeof (FreezableCollection<Target>), typeof (Out),
                                        new FrameworkPropertyMetadata(new FreezableCollection<Target>(),
                                                                      FrameworkPropertyMetadataOptions.AffectsRender |
                                                                      FrameworkPropertyMetadataOptions.
                                                                          AffectsParentArrange |
                                                                      FrameworkPropertyMetadataOptions.AffectsArrange));


        public FreezableCollection<Target> Targets
        {
            get { return (FreezableCollection<Target>) GetValue(TargetsProperty); }
            set { SetValue(TargetsProperty, value); }
        }


        public Out()
            : base()
        {
            SetValue(TargetsProperty, new FreezableCollection<Target>());
        }
    }
}