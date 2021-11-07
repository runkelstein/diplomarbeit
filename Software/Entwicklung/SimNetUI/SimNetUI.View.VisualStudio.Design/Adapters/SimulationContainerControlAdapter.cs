using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.Interaction;
using Microsoft.Windows.Design.Model;
using SimNetUI.Controls;
using SimNetUI.VisualStudio.Design.Util;

namespace SimNetUI.VisualStudio.Design.Adapters
{
    internal class SimulationContainerControlAdapter : ParentAdapter
    {
        public override bool CanParent(ModelItem parent, Type childType)
        {
            // everything is accepted
            return true;
        }

        public override void Parent(ModelItem newParent, ModelItem child)
        {
            ModelProperty prop = newParent.Properties[PropertyNames.SimulationContainer.ChildrenProperty];
            ModelItemCollection items = (ModelItemCollection)prop.Value;
            items.Add(child);

            var simulationContainer = (newParent.GetCurrentValue() as SimulationContainer);

            simulationContainer.InvalidateVisual();

        }

        public override void RemoveParent(ModelItem currentParent, ModelItem newParent, ModelItem child)
        {
            // MessageBox.Show("you got deleted ;-)");
        }
    }
}
