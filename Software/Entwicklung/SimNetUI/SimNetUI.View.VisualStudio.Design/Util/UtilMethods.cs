using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.Model;
using System.Windows;
using System.Globalization;
using SimNetUI.Activities.ControlParts.Connection;

namespace SimNetUI.VisualStudio.Design.Util
{
    static class UtilMethods
    {

        public static ModelItem RetrieveOutModelObject(ModelItem SimulationControlModel, OutConnector outCon)
        {

            // search the modelitem which wraps the activity
            var child =
                (from c in SimulationControlModel.Properties[PropertyNames.SimulationContainer.ChildrenProperty].Collection
                 where (c.Name == outCon.ParentActivity.Name)
                 select c).First();

            // search Out Object
            var outXamlProperty =
                (from o in child.Properties[PropertyNames.ActivityBase.OutputProperty].Collection
                 where (o.Properties[PropertyNames.ActivityBase.Out.ConnectorProperty].ComputedValue as string) == outCon.Name
                 select o).First();

            return outXamlProperty;

        }


        public static ModelItem RetrieveTargetModelObject(ModelItem SimulationControlModel, OutConnector outCon, InConnector inCon)
        {

            var outXamlProperty = RetrieveOutModelObject(SimulationControlModel, outCon);

            // search Target Object
            var target =
                (from t in outXamlProperty.Properties[PropertyNames.ActivityBase.Out.TargetsProperty].Collection
                 where (t.Properties[PropertyNames.ActivityBase.Out.Target.ConnectorProperty].ComputedValue as string) == inCon.Name &&
                       (t.Properties[PropertyNames.ActivityBase.Out.Target.ActivityProperty].ComputedValue as string) == inCon.ParentActivity.Name
                 select t).First();

            return target;

        }


        public static string CalculatePoints(Point start, Point end, LineType lineType)
        {

            // Note: Points string representation is based on the system culture settings, in germany a "," might be used as a decimal separator
            // WPF is only working properly with dots
            Func<Point, string> PointToString = p => new Point(Math.Round(p.X,2), Math.Round(p.Y,2)).ToString(CultureInfo.InvariantCulture);

            string connectionPoints = string.Empty;
            if (lineType == LineType.Spline)
            {

                Queue<Point> points = new Queue<Point>();

                // The layout of the connections is determined by 
                // the positions of the connected activities

                // 1. NextActivity is placed behind activity but not on the same line                       
                if (start.X < end.X && start.Y != end.Y)
                {
                    points.Enqueue(new Point(start.X + (end.X - start.X) / 3, start.Y));
                    points.Enqueue(new Point(start.X + (end.X - start.X) / 3, end.Y));
                }
                // 2. NextActivity is placed before activity
                else if (start.X > end.X)
                {
                    double xoffset = 25;
                    double yoffset = 48;


                    points.Enqueue(new Point(start.X + xoffset, start.Y));

                    // 2.1 
                    if (end.Y - start.Y < yoffset && end.Y - start.Y > 0)
                    {
                        points.Enqueue(new Point(start.X + xoffset, start.Y - yoffset));
                        points.Enqueue(new Point((end.X - xoffset) + ((start.X + xoffset) - (end.X - xoffset)) / 2, start.Y - yoffset));
                        points.Enqueue(new Point(end.X - xoffset, start.Y - yoffset));
                    }
                    else if (start.Y - end.Y < yoffset && start.Y - end.Y >= 0)
                    {
                        points.Enqueue(new Point(start.X + xoffset, start.Y + yoffset));
                        points.Enqueue(new Point((end.X - xoffset) + ((start.X + xoffset) - (end.X - xoffset)) / 2, start.Y + yoffset));
                        points.Enqueue(new Point(end.X - xoffset, start.Y + yoffset));
                    }
                    else
                    {
                        points.Enqueue(new Point(start.X + xoffset, start.Y + (end.Y - start.Y) / 2));
                        points.Enqueue(new Point((end.X - xoffset) + ((start.X + xoffset) - (end.X - xoffset)) / 2, start.Y + (end.Y - start.Y) / 2));
                        points.Enqueue(new Point(end.X - xoffset, start.Y + (end.Y - start.Y) / 2));
                    }

                    points.Enqueue(new Point(end.X - xoffset, end.Y));

                }

                if ((points.Count + 1) % 3 == 0)
                {

                    // Create the string for the property ConnectionPoints

                    Func<string> CreateConnectionString = null;
                    CreateConnectionString = () =>
                           "C " + PointToString(points.Dequeue()) + " " + PointToString(points.Dequeue()) + (points.Count > 1 ? " " + PointToString(points.Dequeue()) + " " + CreateConnectionString() : "");

                    // Update ConnectionPoints property
                    connectionPoints = CreateConnectionString();
                }
            }
            else if (lineType == LineType.Lines)
            {

                Queue<Point> points = new Queue<Point>();

                // The layout of the connections determined by 
                // the positions of the connect activities

                // 1. NextActivity is placed behind activity but not on the same line                       
                if (start.X < end.X && start.Y != end.Y)
                {
                    points.Enqueue(new Point(start.X + (end.X - start.X) / 2, start.Y));
                    points.Enqueue(new Point(start.X + (end.X - start.X) / 2, end.Y));
                }
                // 2. NextActivity is placed before activity
                else if (start.X > end.X)
                {
                    double xoffset = 25;
                    double yoffset = 48;


                    points.Enqueue(new Point(start.X + xoffset, start.Y));

                    // 2.1 
                    if (end.Y - start.Y < yoffset && end.Y - start.Y > 0)
                    {
                        points.Enqueue(new Point(start.X + xoffset, start.Y - yoffset));
                        points.Enqueue(new Point(end.X - xoffset, start.Y - yoffset));
                    }
                    else if (start.Y - end.Y < yoffset && start.Y - end.Y >= 0)
                    {
                        points.Enqueue(new Point(start.X + xoffset, start.Y + yoffset));
                        points.Enqueue(new Point(end.X - xoffset, start.Y + yoffset));
                    }
                    else
                    {
                        points.Enqueue(new Point(start.X + xoffset, start.Y + (end.Y - start.Y) / 2));
                        points.Enqueue(new Point(end.X - xoffset, start.Y + (end.Y - start.Y) / 2));
                    }

                    points.Enqueue(new Point(end.X - xoffset, end.Y));

                }

                if (points.Count > 0)
                {
                    // Create the string for the property ConnectionPoints
                    Func<string> CreateConnectionString = null;
                    CreateConnectionString = () =>
                            "L " + PointToString(points.Dequeue()) + (points.Count > 0 ? " " + CreateConnectionString() : " L");

                    // Update ConnectionPoints property
                    connectionPoints = CreateConnectionString();
                }
            }


            return connectionPoints;

        }



    }
}
