using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.Interaction;
using System.Windows.Shapes;
using System.Windows.Controls;
using SimNetUI.Activities.ControlParts.Connection;
using SimNetUI.VisualStudio.Design.Adorner.Tasks;
using SimNetUI.VisualStudio.Design.Adorner.Provider;
using System.Windows.Media;
using System.Windows.Input;
using System.Windows;
using Microsoft.Windows.Design.Model;
using SimNetUI.VisualStudio.Design.Util;

namespace SimNetUI.VisualStudio.Design.Adorner.Panel
{
    internal class LineMarkerAdorner : AdornerPanel
    {
        private OutConnector outConnector { get; set; }
        private InConnector inConnector { get; set; }
        private Path path { get; set; }

        private MenuItem lineVisibilityMenuItem;

        private LineTask task;
        private bool _lineActive;

        private SimulationContainerAdornerProvider provider;

        public bool lineActive
        {
            get
            {
                return _lineActive;
            }
            set
            {
                _lineActive = value;
                path.Opacity = value ? 1.0 : 0.0;



                if (value)
                {

                    // only one line shall be active at any time
                    foreach (var children in (this.Parent as AdornerPanel).Children)
                    {
                        if (children != this)
                        {
                            (children as LineMarkerAdorner).lineActive = false;
                        }
                    }
                }


            }
        }

        public LineMarkerAdorner(SimulationContainerAdornerProvider provider, InConnector inConnector, OutConnector outConnector)
        {

            this.outConnector = outConnector;
            this.inConnector = inConnector;
            this.provider = provider;



            task = new LineTask();
            task.lineLeftClickedEvent += OnLineLeftClicked;


            path = new Path();
            path.StrokeThickness = 4;
            path.StrokeLineJoin = PenLineJoin.Round;
            path.StrokeStartLineCap = PenLineCap.Triangle;
            path.StrokeEndLineCap = PenLineCap.Triangle;
            path.Stroke = Brushes.Red;
            path.Cursor = Cursors.Hand;

            path.ContextMenu = new ContextMenu();
            path.ContextMenu.Opened += OnMenuOpened;
            path.ContextMenu.Closed += OnMenuClosed;

            MenuItem deleteMenuItem = new MenuItem();
            deleteMenuItem.Header = "Delete Connection";
            deleteMenuItem.Click += OnDeleteClicked;

            MenuItem rearangeMenuItem = new MenuItem();
            rearangeMenuItem.Header = "Rearange Connection";

            lineVisibilityMenuItem = new MenuItem();
            lineVisibilityMenuItem.Header = "Line visible";
            lineVisibilityMenuItem.IsCheckable = true;

            ModelItem targetXamlProperty = UtilMethods.RetrieveTargetModelObject(provider.adornedControlModel, outConnector, inConnector);

            if ((targetXamlProperty.Properties[PropertyNames.ActivityBase.Out.Target.ConnectionVisibilityProperty].ComputedValue as bool?) == true)
                lineVisibilityMenuItem.IsChecked = true;
            else
                lineVisibilityMenuItem.IsChecked = false;

            lineVisibilityMenuItem.Click += OnMenuLineVisibilityClicked;

            MenuItem item = new MenuItem();
            item.Header = "Direct";
            item.Click += OnRearangeConnectionDirectClicked;
            rearangeMenuItem.Items.Add(item);

            item = new MenuItem();
            item.Header = "Lines";
            item.Click += OnRearangeConnectionLinesClicked;
            rearangeMenuItem.Items.Add(item);

            item = new MenuItem();
            item.Header = "Spline";
            item.Click += OnRearangeConnectionSplineClicked;
            rearangeMenuItem.Items.Add(item);


            path.ContextMenu.Items.Add(deleteMenuItem);
            path.ContextMenu.Items.Add(lineVisibilityMenuItem);
            path.ContextMenu.Items.Add(rearangeMenuItem);


            lineActive = false;

            //linePen.DashStyle = target.ConnectionVisibility ? DashStyles.Solid : DashStyles.Dash;
            //if (!target.ConnectionVisibility) {
            //    path.StrokeDashArray = new DoubleCollection();
            //    path.StrokeDashArray.Add(2);
            //    path.StrokeDashArray.Add(2);
            //}

            AdornerPanel.SetAdornerHorizontalAlignment(path, AdornerHorizontalAlignment.Left);
            AdornerPanel.SetAdornerVerticalAlignment(path, AdornerVerticalAlignment.Top);

            AdornerPanel.SetTask(path, task);


            // Since the Zoom-Level might be changed by the user, this adorner needs to 
            // react to this event
            DesignerView view = DesignerView.FromContext(provider.adornedControlModel.Context);
            this.RenderTransform = new ScaleTransform(view.ZoomLevel, view.ZoomLevel);
            view.ZoomLevelChanged += OnZoomLevelChanged;

            ReDrawLine();

            this.Children.Add(path);

        }

        private void ReDrawLine()
        {
           
            path.Data = Geometry.Parse(outConnector.Outgoing[inConnector].GetFullPath());

        }

        private void OnZoomLevelChanged(object sender, EventArgs args)
        {
            var view = sender as DesignerView;

            (this.RenderTransform as ScaleTransform).ScaleX = view.ZoomLevel;
            (this.RenderTransform as ScaleTransform).ScaleY = view.ZoomLevel;
        }


        private void OnLineLeftClicked(object sender, ExecutedToolEventArgs args)
        {
            lineActive = !lineActive;
        }

        private void OnMenuOpened(Object sender, RoutedEventArgs e)
        {
            lineActive = true;
        }

        private void OnMenuClosed(object sender, RoutedEventArgs e)
        {
            lineActive = false;
        }

        private void OnMenuLineVisibilityClicked(object sender, RoutedEventArgs e)
        {

            ModelItem targetXamlProperty = UtilMethods.RetrieveTargetModelObject(provider.adornedControlModel, outConnector, inConnector);
            if (targetXamlProperty != null)
            {
                targetXamlProperty.Properties[PropertyNames.ActivityBase.Out.Target.ConnectionVisibilityProperty].SetValue(lineVisibilityMenuItem.IsChecked);
                provider.simulationContainer.InvalidateVisual();
            }



        }

        private void OnRearangeConnectionDirectClicked(object sender, RoutedEventArgs e)
        {
            UpdateConnection(LineType.Direct);
        }

        private void OnRearangeConnectionSplineClicked(object sender, RoutedEventArgs e)
        {
            UpdateConnection(LineType.Spline);
        }

        private void OnRearangeConnectionLinesClicked(object sender, RoutedEventArgs e)
        {
            UpdateConnection(LineType.Lines);
        }


        private void UpdateConnection(LineType lineType)
        {

            ModelItem targetXamlProperty = UtilMethods.RetrieveTargetModelObject(provider.adornedControlModel, outConnector, inConnector);
            if (targetXamlProperty != null)
            {
                targetXamlProperty.Properties[PropertyNames.ActivityBase.Out.Target.ConnectionPointsProperty].SetValue(Util.UtilMethods.CalculatePoints(outConnector.Position, inConnector.Position, lineType));
                provider.simulationContainer.InvalidateVisual();
                ReDrawLine();
            }

        }


        private void OnDeleteClicked(object sender, RoutedEventArgs e)
        {

            ModelItem targetXamlProperty = UtilMethods.RetrieveTargetModelObject(provider.adornedControlModel, outConnector, inConnector);
            ModelItem outXamlProperty = UtilMethods.RetrieveOutModelObject(provider.adornedControlModel, outConnector);
            if (targetXamlProperty != null && outXamlProperty != null)
            {
                // delete connection by removing the target object
                outXamlProperty.Properties[PropertyNames.ActivityBase.Out.TargetsProperty].Collection.Remove(targetXamlProperty);

                // remove this Adorner
                (this.Parent as AdornerPanel).Children.Remove(this);
            }





        }


    }
}
