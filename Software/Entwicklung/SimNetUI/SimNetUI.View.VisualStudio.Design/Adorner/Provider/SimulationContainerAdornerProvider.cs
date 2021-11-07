using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.Interaction;
using Microsoft.Windows.Design.Model;
using SimNetUI.Activities.Base;
using SimNetUI.Activities.ControlParts.Connection;
using SimNetUI.Controls;
using SimNetUI.VisualStudio.Design.Adorner.Panel;
using Microsoft.Windows.Design.Policies;
using System.Windows.Media;
using System.Collections;
using SimNetUI.VisualStudio.Design.Adorner.ToolWindows;

namespace SimNetUI.VisualStudio.Design.Adorner.Provider
{
    //[UsesItemPolicy(typeof(SelectionParentPolicy))]
    [UsesItemPolicy(typeof(SelectionPolicy))]
    internal class SimulationContainerAdornerProvider : AdornerProvider
    {


        #region Members

        #region private
            private AdornerPanel ToolbarPanel;
            private AdornerPanel LineMarkerPanel;
            private AdornerPanel ConnectorMarkerPanel;
            private ResourceEditorWindow resourceEditorWindow;
        #endregion

        #region public
            public SimulationContainer simulationContainer;
            public ModelItem adornedControlModel;
            public OptionsAdorner optionsAdorner { get; set; }
        #endregion

        #endregion

        #region common

        public SimulationContainerAdornerProvider()
        {
            
            optionsAdorner = new OptionsAdorner();

            resourceEditorWindow = new ResourceEditorWindow();
            
            // Hookup Events
            optionsAdorner.ReloadControl += OnReloadControl;
            optionsAdorner.ConnectionModeToggleActivated += OnConnectionModeActivated;
            optionsAdorner.ConnectionModeToggleDeactivated += OnConnectionModeDeactivated;
            optionsAdorner.LineModeToggleActivated += OnLineModeActivated;
            optionsAdorner.LineModeToggleDeactivated += OnLineModeDeactivated;
            optionsAdorner.OpenResourceEditor += OnOpenResourceEditor;
        }

        #endregion

        #region OptionsAdornerInteraction

        private void OnConnectionModeActivated(object sender, EventArgs e)
        {

            ConnectorMarkerPanel.Children.Clear();
            LineMarkerPanel.Children.Clear();

            foreach (var child in simulationContainer.Children)
            {
                if (child is ActivityBase)
                {
                    var activity = child as ActivityBase;

                    foreach (var connector in activity.OutConnectors)
                        ConnectorMarkerPanel.Children.Add(new ConnectorMarkerAdorner(this, connector.Value, Brushes.Red));

                    foreach (var connector in activity.InConnectors)
                        ConnectorMarkerPanel.Children.Add(new ConnectorMarkerAdorner(this, connector.Value, Brushes.Blue));

                }
            }

        }

        private void OnOpenResourceEditor(object sender, EventArgs e)
        {
            resourceEditorWindow = new ResourceEditorWindow();
            resourceEditorWindow.ControlModel = adornedControlModel;
            resourceEditorWindow.ShowDialog();
        }

        private void OnConnectionModeDeactivated(object sender, EventArgs e)
        {
            ConnectorMarkerPanel.Children.Clear();
        }


        private void OnLineModeActivated(object sender, EventArgs e)
        {

            ConnectorMarkerPanel.Children.Clear();
            LineMarkerPanel.Children.Clear();

            var inConnectorList = (from a in simulationContainer.Children.OfType<ActivityBase>()
                                  from c in a.InConnectors
                                  select c.Value);
                                 
            foreach (var child in simulationContainer.Children)
            {
                if (child is ActivityBase)
                {
                    var activity = child as ActivityBase;

                    // iterate through all outgoing connections
                    foreach (var o in activity.Output)
                    {

                        OutConnector outCon = activity.OutConnectors[o.Connector];

                        // iterate through all targets
                        foreach (var t in o.Targets)
                        {
                            InConnector inCon = (from c in inConnectorList
                                                 where c.ParentActivity.Name == t.Activity &&
                                                       c.Name == t.Connector
                                                 select c).First();


                            LineMarkerAdorner panel = new LineMarkerAdorner(this, inCon, outCon);
                            LineMarkerPanel.Children.Add(panel);
                        }

                    }
                }
            }

        }

        private void OnLineModeDeactivated(object sender, EventArgs e)
        {
            LineMarkerPanel.Children.Clear();
        }


        private void OnReloadControl(object sender, EventArgs e)
        {
            this.simulationContainer.UpdateActivityListInModelLogic();
            this.simulationContainer.InvalidateVisual();
        }

        #endregion

        #region overrides

        // The following method is called when the adorner is activated.
        // It creates the adorner control, sets up the adorner panel,
        // and attaches a ModelItem to the adorned control.
        protected override void Activate(ModelItem item)
        {
            // Save the ModelItem and hook into when it changes.
            adornedControlModel = item;


          

            // Create the adorner panel and adds it to the provider's 
            // Adorners collection.
            ToolbarPanel = new AdornerPanel();

            ToolbarPanel.Children.Add(optionsAdorner);

            // Add the panel to the Adorners collection.
            Adorners.Add(ToolbarPanel);

            // Position the adorner
            AdornerPanel.SetAdornerHorizontalAlignment(
                optionsAdorner,
                AdornerHorizontalAlignment.Stretch);

            AdornerPanel.SetAdornerVerticalAlignment(
                optionsAdorner,
                AdornerVerticalAlignment.OutsideTop);


            LineMarkerPanel = new AdornerPanel();


            // Add the panel to the Adorners collection.
            Adorners.Add(LineMarkerPanel);


            // Position the adorner
            AdornerPanel.SetAdornerHorizontalAlignment(
                LineMarkerPanel,
                AdornerHorizontalAlignment.Left);

            AdornerPanel.SetAdornerVerticalAlignment(
                LineMarkerPanel,
                AdornerVerticalAlignment.Top);




            ConnectorMarkerPanel = new AdornerPanel();

            Adorners.Add(ConnectorMarkerPanel);

            // Position the adorner
            AdornerPanel.SetAdornerHorizontalAlignment(
                ConnectorMarkerPanel,
                AdornerHorizontalAlignment.Left);

            AdornerPanel.SetAdornerVerticalAlignment(
                ConnectorMarkerPanel,
                AdornerVerticalAlignment.Top);





            simulationContainer = adornedControlModel.GetCurrentValue() as SimulationContainer;

            base.Activate(item);
        }


        // The following method deactivates the adorner.
        protected override void Deactivate()
        {
            ToolbarPanel.Children.Clear();
            Adorners.Clear();
            base.Deactivate();
        }


        #endregion

    }
}
