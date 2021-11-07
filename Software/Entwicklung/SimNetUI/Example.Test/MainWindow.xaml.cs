using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using SimNetUI.Activities.Controls;

namespace Example.Test
{
    /// <summary>
    /// Interaktionslogik für MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

        }

        private void generator1_EntityRouted(object sender, SimNetUI.Activities.Events.EntityRoutingEventArgs e)
        {
            // find lowest value for entities in queue
            var minInQueue = e.Targets.Min((target) => target.GetActivity<Wait>().Statistics.InQueue + target.GetActivity<Wait>().Statistics.InWork);

            // select activities which meet minInQueue requirement
            var selection = (from target in e.Targets
                             where target.GetActivity<Wait>().Statistics.InQueue + target.GetActivity<Wait>().Statistics.InWork == minInQueue
                             select target).ToArray();

            // set targetindex to the index of the activity the current entity shall be routed to
            // we choose the activity with the lowest index
            e.TargetIndex = selection[0].index;
        }



    }
}
