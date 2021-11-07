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
using SimNetUI.Activities.Base;
using System.ComponentModel;

namespace SimNetUI.Companions.Controls
{
    /// <summary>
    /// Interaktionslogik für QueueCompanion.xaml
    /// </summary>
    [DesignTimeVisible(true)]
    public partial class QueueCompanion : UserControl
    {

        #region Xaml properties


        #region Dependency registration

        public static readonly DependencyProperty ActivityQueueProperty =
            DependencyProperty.Register("ActivityQueue", 
                                        typeof(ActivityQueueBase), typeof(QueueCompanion));  

        #endregion

        #region Property wrapper

        [CategoryAttribute("Simulation")]
        public ActivityQueueBase ActivityQueue
        {
            get { return (ActivityQueueBase)GetValue(ActivityQueueProperty); }
            set { SetValue(ActivityQueueProperty, value); }
        }

        #endregion

       
        #region Property changed events



        #endregion


        #endregion

        

        public QueueCompanion()
        {
            InitializeComponent();



        }
    }
}
