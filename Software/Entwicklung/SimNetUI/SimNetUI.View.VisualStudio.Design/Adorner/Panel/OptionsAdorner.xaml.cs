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
using SimNetUI.VisualStudio.Design.Util;
using System.Windows.Controls.Primitives;

namespace SimNetUI.VisualStudio.Design.Adorner.Panel
{
    /// <summary>
    /// This Adorner is used for visual interaction purposes only
    /// It communicates entirely through events with the SimulationAdornerProvider Class.
    /// </summary>
    internal partial class OptionsAdorner : UserControl
    {
        public event EventHandler ConnectionModeToggleActivated;
        public event EventHandler ConnectionModeToggleDeactivated;

        public event EventHandler LineModeToggleActivated;
        public event EventHandler LineModeToggleDeactivated;

        public event EventHandler ReloadControl;

        public event EventHandler OpenResourceEditor;

        public LineType lineType { get; private set; }

        public OptionsAdorner()
        {
            
            InitializeComponent();
        }



        /// <summary>
        /// Our Tooglebuttons behave to some degree like a RadioButtion, with the
        /// exception that its still possible to uncheck them
        /// </summary>
        private void StartConnectionModeToogleEvent(ToggleButton button)
        {


            // Since unchecking a toggle button will raise the Unchecked event automaticly 
            // we have to be carefull and remove these event handlers before setting this value
            // and undo all this after we are done
            Action<ToggleButton> SetToggleUnChecked = (target) =>
            {
                // don't uncheck teh button which just got checked
                if (button != target)
                {
                    target.Unchecked -= ToogleConnector_Unchecked;
                    target.IsChecked = false;
                    target.Unchecked += ToogleConnector_Unchecked;
                }
            };

            // Uncheck toggle buttons
            SetToggleUnChecked(ToggleSplineConnector);
            SetToggleUnChecked(ToggleLinesConnector);
            SetToggleUnChecked(ToggleConnector);

            // If Line-Mode is still activated raise ToogleLineMode_Unchecked Event which will raise 
            // the LineModeToggleDeactivated event
            if (ToggleLineMode.IsChecked == true) ToggleLineMode.IsChecked = false;

            // Raise ConnectionModeToogleActivated event
            if (ConnectionModeToggleActivated != null)
                ConnectionModeToggleActivated(this, new EventArgs());

        }


        private void ToogleConnector_Checked(object sender, RoutedEventArgs e)
        {
            lineType = LineType.Direct;
            StartConnectionModeToogleEvent(ToggleConnector);
        }

        private void ToogleConnector_Unchecked(object sender, RoutedEventArgs e)
        {
            if (ConnectionModeToggleDeactivated!=null)
                ConnectionModeToggleDeactivated(this, new EventArgs());
        }

        private void ToogleLinesConnector_Checked(object sender, RoutedEventArgs e)
        {
            lineType = LineType.Lines;
            StartConnectionModeToogleEvent(ToggleLinesConnector);
        }

        private void ToogleSplineConnector_Checked(object sender, RoutedEventArgs e)
        {
            lineType = LineType.Spline;
            StartConnectionModeToogleEvent(ToggleSplineConnector);

        }

        private void ToogleLineMode_Checked(object sender, RoutedEventArgs e)
        {

            // If ConnectorMode is still active, the ConnectionModeToogleDeactivated Event will be raised
            if (ToggleSplineConnector.IsChecked == true ||
                ToggleLinesConnector.IsChecked == true ||
                ToggleConnector.IsChecked == true
                )
            {
                if (ConnectionModeToggleDeactivated != null)
                    ConnectionModeToggleDeactivated(this, new EventArgs());
            }


            // Since unchecking a toggle button will raise the Unchecked event automaticly 
            // we have to be carefull and remove these event handlers before setting this value
            // and undo all this after we are done
            Action<ToggleButton> SetToggleUnChecked = (target) =>
            {
                // don't uncheck the button which just got checked
                target.Unchecked -= ToogleConnector_Unchecked;
                target.IsChecked = false;
                target.Unchecked += ToogleConnector_Unchecked;
            };

            // Reset Toggles
            SetToggleUnChecked(ToggleSplineConnector);
            SetToggleUnChecked(ToggleLinesConnector);
            SetToggleUnChecked(ToggleConnector);

            // Raise 
            if (LineModeToggleActivated != null)
                LineModeToggleActivated(this, new EventArgs());


        }

        private void ToogleLineMode_Unchecked(object sender, RoutedEventArgs e)
        {
            if (LineModeToggleDeactivated != null)
                LineModeToggleDeactivated(this, new EventArgs());
        }

        private void btnReload_Click(object sender, RoutedEventArgs e)
        {
            if (ReloadControl != null)
                ReloadControl(sender, e);
        }

        private void btnResourceEditor_Click(object sender, RoutedEventArgs e)
        {
            if (OpenResourceEditor != null)
                OpenResourceEditor(sender, e);
        }



    }
    
}
