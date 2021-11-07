using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.Interaction;
using System.Windows;
using SimNetUI.Activities.ControlParts.Connection;
using SimNetUI.Activities.PropertyObjects.Connections;
using SimNetUI.VisualStudio.Design.Adorner.Provider;
using SimNetUI.VisualStudio.Design.Adorner.Tasks;
using System.Windows.Media;
using System.Windows.Shapes;
using System.Windows.Input;
using SimNetUI.VisualStudio.Design.Util;

namespace SimNetUI.VisualStudio.Design.Adorner.Panel
{
    internal class ConnectorMarkerAdorner : AdornerPanel
    {

        private Connector connector { get; set; }
        private SimulationContainerAdornerProvider provider;
        private Point delta,rectangleDelta;
        private ConnectTask task;
        private DesignerView designerView;

        public Rectangle rectangle
        {
            get;
            private set;
        }

        public Line line
        {
            get;
            private set;
        }


        public ConnectorMarkerAdorner(SimulationContainerAdornerProvider provider, Connector connector, Brush brush)
        {
            this.connector = connector;
            this.provider = provider;

            rectangle = new Rectangle();
            rectangle.Fill = brush;
            rectangle.Opacity = 0.5;
            rectangle.Width = 12;
            rectangle.Height = 12;
            rectangle.Cursor = Cursors.Hand;
            rectangle.MouseMove += OnRectangleMouseMove;

            AdornerPanel.SetAdornerHorizontalAlignment(rectangle, AdornerHorizontalAlignment.Left);
            AdornerPanel.SetAdornerVerticalAlignment(rectangle, AdornerVerticalAlignment.Top);



            task = new ConnectTask();
            task.BeginMoveEvent += OnBeginMove;
            task.EndMoveEvent += OnEndMove;

            AdornerPanel.SetTask(rectangle, task);

            line = new Line();
            lineReset();

            line.Stroke = Brushes.Red;
            line.StrokeThickness = 2;



            // Since the Zoom-Level might be changed by the user, this adorner needs to 
            // react to this event
            designerView = DesignerView.FromContext(provider.adornedControlModel.Context);
            rectangle.RenderTransform = new ScaleTransform(designerView.ZoomLevel, designerView.ZoomLevel);
            line.RenderTransform = new ScaleTransform(designerView.ZoomLevel, designerView.ZoomLevel);
            designerView.ZoomLevelChanged += OnZoomLevelChanged;
            Point p = connector.TransformToAncestor(provider.simulationContainer).Transform(new Point(0, 0));
            AdornerPanel.SetAdornerMargin(rectangle, new Thickness(p.X - 1, p.Y - 1, 0, 0));



            Children.Add(rectangle);
            Children.Add(line);



        }

        private void OnRectangleMouseMove(object sender, MouseEventArgs args)
        {
            Point point = args.GetPosition(this);
            rectangleDelta = new Point(point.X / designerView.ZoomLevel, point.Y / designerView.ZoomLevel);

        }

        private void OnBeginMove(object sender, ExecutedToolEventArgs args)
        {
            MouseGestureData data = MouseGestureData.FromEventArgs(args);

            delta = new Point(data.CurrentPosition.X - rectangleDelta.X, data.CurrentPosition.Y - rectangleDelta.Y);

            line.Visibility = Visibility.Visible;

            task.MoveEvent += OnMove;

            // MessageBox.Show("start");
        }

        private void OnMove(object sender, ExecutedToolEventArgs args)
        {
            MouseGestureData data = MouseGestureData.FromEventArgs(args);

            line.X2 = data.CurrentPosition.X - delta.X;
            line.Y2 = data.CurrentPosition.Y - delta.Y;
        }

        private void OnEndMove(object sender, ExecutedToolEventArgs args)
        {
            MouseGestureData data = MouseGestureData.FromEventArgs(args);

            line.Visibility = Visibility.Collapsed;

            task.MoveEvent -= OnMove;

            var x = line.X2;
            var y = line.Y2;

            foreach (var child in (this.Parent as AdornerPanel).Children)
            {
                var panel = child as ConnectorMarkerAdorner;

                Thickness t = AdornerPanel.GetAdornerMargin(panel.rectangle);
                if (x >= t.Left && y >= t.Top && x <= t.Left + panel.rectangle.Width && y <= t.Top + panel.rectangle.Height)
                {

                    // Connect Activities

                    // Only a connection between an OutConnector and an InConnector is valid
                    OutConnector outCon; InConnector inCon;
                    if (connector is OutConnector && panel.connector is InConnector)
                    {
                        outCon = connector as OutConnector;
                        inCon = panel.connector as InConnector;
                    }
                    else if (connector is InConnector && panel.connector is OutConnector)
                    {
                        inCon = connector as InConnector;
                        outCon = panel.connector as OutConnector;
                    }
                    else
                    {
                        MessageBox.Show("Connection not possible due to wrong connector type");
                        return;
                    }

                    // Check limit constraints wheter they are prohibiting an connection between these
                    // 2 connectors.
                    if (inCon.IsLimitReached)
                    {
                        MessageBox.Show("Connection not possible since the incomming Connector doesn't accept more than " + inCon.LimitConnections + " incomming connections");
                        return;
                    }

                    if (outCon.IsLimitReached)
                    {
                        MessageBox.Show("Connection not possible since the outgoing Connector doesn't accept more than " + outCon.LimitConnections + " outgoing connections");
                        return;
                    }

                    // Build up connection




                    // now calculate string for ConnectionPoints property
                    string connectionPoints = UtilMethods.CalculatePoints(outCon.Position, inCon.Position, provider.optionsAdorner.lineType);


                    Target targetXamlProperty = new Target();
                    targetXamlProperty.Activity = inCon.ParentActivity.Name;
                    targetXamlProperty.Connector = inCon.Name;

                    if (connectionPoints.Length > 0)
                        targetXamlProperty.ConnectionPoints = connectionPoints;

                    foreach (var activity in provider.adornedControlModel.Properties[PropertyNames.SimulationContainer.ChildrenProperty].Collection)
                    {
                        if (activity.Name == outCon.ParentActivity.Name)
                        {

                            bool found = false;
                            // search Out Object


                            foreach (var outXamlProperty in activity.Properties[PropertyNames.ActivityBase.OutputProperty].Collection)
                            {

                                if ((outXamlProperty.Properties[PropertyNames.ActivityBase.Out.ConnectorProperty].ComputedValue as string) == outCon.Name)
                                {
                                    // if an Out object exists add target to its targets collection
                                    found = true;
                                    outXamlProperty.Properties[PropertyNames.ActivityBase.Out.TargetsProperty].Collection.Add(targetXamlProperty);
                                }

                            }

                            // if there is no Out-object create one and add it to the activity Output collection
                            if (!found)
                            {
                                Out outProperty = new Out();
                                outProperty.Connector = outCon.Name;
                                outProperty.Targets.Add(targetXamlProperty);

                                activity.Properties[PropertyNames.ActivityBase.OutputProperty].Collection.Add(outProperty);
                            }

                        }
                    }

                }


            }

            lineReset();
        }


        private void OnZoomLevelChanged(object sender, EventArgs args)
        {
            var view = sender as DesignerView;

            (rectangle.RenderTransform as ScaleTransform).ScaleX = view.ZoomLevel;
            (rectangle.RenderTransform as ScaleTransform).ScaleY = view.ZoomLevel;
            (line.RenderTransform as ScaleTransform).ScaleX = view.ZoomLevel;
            (line.RenderTransform as ScaleTransform).ScaleY = view.ZoomLevel;
            lineReset();

            Point p = connector.TransformToAncestor(provider.simulationContainer).Transform(new Point(0, 0));
            AdornerPanel.SetAdornerMargin(rectangle, new Thickness(p.X - 1, p.Y - 1, 0, 0));

        }

        private void lineReset()
        {
            line.X1 = connector.Position.X;
            line.X2 = line.X1;
            line.Y1 = connector.Position.Y;
            line.Y2 = line.Y1;
        }

    }
}
