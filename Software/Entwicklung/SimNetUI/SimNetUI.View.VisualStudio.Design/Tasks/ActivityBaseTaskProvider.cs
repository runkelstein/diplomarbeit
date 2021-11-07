using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.Interaction;
using Microsoft.Windows.Design.Model;
using System.Windows.Input;
using SimNetUI.Activities.Base;
using SimNetUI.Controls;
using SimNetUI.VisualStudio.Design.Util;

namespace SimNetUI.VisualStudio.Design.Tasks
{
    internal class ActivityBaseTaskProvider : PrimarySelectionTaskProvider
    {
        private ModelItem ActivityControlModel;

        protected override void Activate(ModelItem item)
        {
            ActivityControlModel = item;

            if (item.IsItemOfType(typeof(ActivityBase)))
            {
                Task task = new Task();
                task.CommandBindings.Add(new CommandBinding(ApplicationCommands.Delete, OnDelete));
                this.Tasks.Add(task);
            }
        }


        public void OnDelete(Object sender, ExecutedRoutedEventArgs e)
        {
            ModelItem parent = ActivityControlModel.Parent;



            var ConnectorNames =
                    from i in (ActivityControlModel.GetCurrentValue() as ActivityBase).InConnectors
                    select i.Key;

            var activityName = ActivityControlModel.Name;

            var targets = from activity in parent.Properties[PropertyNames.SimulationContainer.ChildrenProperty].Collection
                          where activity.IsItemOfType(typeof(ActivityBase))
                          from output in activity.Properties[PropertyNames.ActivityBase.OutputProperty].Collection
                          from target in output.Properties[PropertyNames.ActivityBase.Out.TargetsProperty].Collection
                          where
                                (target.Properties[PropertyNames.ActivityBase.Out.Target.ActivityProperty].ComputedValue as string) == activityName &&
                                ConnectorNames.Contains(target.Properties[PropertyNames.ActivityBase.Out.Target.ConnectorProperty].ComputedValue as string)
                          select new
                          {
                              activityName = activity.Name,
                              outXamlProperty = output,
                              targetXamlProperty = target
                          };


            // In this case "foreach" is not allways working properly (but sometimes it is?) 
            // the cause could be related to the strange bug, which gets explained in more detail below
            /* foreach (var obj in targets)
             {
                 MessageBox.Show(obj.activityName);
                 obj.outXamlProperty.Properties["Targets"].Collection.Remove(obj.targetXamlProperty);
             }*/


            // There seems to be an odd bug in .net Framework (v. 4).
            // What happens is that since Target Object gets
            // removed the whole entry of the collection containing an instance of 
            // an anonymous class, which contains a reference to the object
            // we are about to remove, gets removed from the collection completly. This is not to be
            // expected! Instead obj.targetXamlProperty should point to null and "obj" should not get removed
            // completly.
            // 
            // Because of that we are always retrieving the first element of the collection.
            // Oddly enough, if this problem gets fixed, the following code will break.
            int count = targets.Count();
            for (int i = 0; i < count; i++)
            {
                var obj = targets.ElementAt(0);
                obj.outXamlProperty.Properties[PropertyNames.ActivityBase.Out.TargetsProperty].Collection.Remove(obj.targetXamlProperty);
            }


  
            parent.Properties[PropertyNames.SimulationContainer.ChildrenProperty].Collection.Remove(ActivityControlModel);
            var simulationContainer = (parent.GetCurrentValue() as SimulationContainer);

            // we need to ensure that the ModelLogic is updatet too, because otherwise
            // the old lines might still be drawn
            simulationContainer.UpdateActivityListInModelLogic();
            simulationContainer.InvalidateVisual();



        }

    }
}
