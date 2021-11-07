﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.Model;
using SimNetUI.VisualStudio.Design.Util;
using SimNetUI.Activities.PropertyObjects.Distributions;

namespace SimNetUI.VisualStudio.Design.Initializers.Activities
{
    internal class ActivityDelayBaseInitializer : ActivityBaseInitializer
    {
        /// <summary>
        /// Callback when the designer has created the FeedbackControl.
        /// </summary>
        public override void InitializeDefaults(ModelItem item)
        {
            if (item != null)
            {
                base.InitializeDefaults(item);

                ModelItem distribution = ModelFactory.CreateItem(item.Context, typeof(UniformDouble));
                distribution.Properties[PropertyNames.UniformDouble.SeedProperty].SetValue(1);
                distribution.Properties[PropertyNames.UniformDouble.MinProperty].SetValue(0.0);
                distribution.Properties[PropertyNames.UniformDouble.MaxProperty].SetValue(5.0);

                item.Properties[PropertyNames.ActivityDelayBase.DistributionProperty].SetValue(distribution);

            }

        }





    }
}