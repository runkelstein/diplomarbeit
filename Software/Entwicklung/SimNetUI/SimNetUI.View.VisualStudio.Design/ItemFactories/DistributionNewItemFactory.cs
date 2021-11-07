using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.PropertyEditing;
using Microsoft.Windows.Design.Model;
using SimNetUI.Activities.PropertyObjects.Distributions;
using SimNetUI.Activities.PropertyObjects.Schedule;
using SimNetUI.VisualStudio.Design.Util;

namespace SimNetUI.VisualStudio.Design.ItemFactories
{
    internal class DistributionNewItemFactory : NewItemFactory
    {
        public override Object CreateInstance(Type type)
        {

            var distribution = base.CreateInstance(type) as DistributionBase;
            
            // Add attached property "Schedule.Duration", so it will be shown at design time
            // in the property grid

            Schedule.SetDuration(distribution, double.PositiveInfinity);

            return distribution;

        }
    }
}
