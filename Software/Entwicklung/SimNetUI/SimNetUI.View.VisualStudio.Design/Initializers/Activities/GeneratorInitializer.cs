using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.Model;
using SimNetUI.Activities.PropertyObjects.Distributions;
using SimNetUI.Activities.PropertyObjects.Schedule;
using SimNetUI.VisualStudio.Design.Util;

namespace SimNetUI.VisualStudio.Design.Initializers.Activities
{
    internal class GeneratorInitializer : ActivityBaseInitializer
    {
        /// <summary>
        /// Callback when the designer has created the FeedbackControl.
        /// </summary>
        public override void InitializeDefaults(ModelItem item)
        {
            if (item != null)
            {
                base.InitializeDefaults(item);

                // This ensures that the "Schedule" property is initialized properly
                // in xaml at creation time. If there is no Schedule-Object in Xaml-Code
                // binding to Property of the Schedule-Object will fail 

                ModelItem schedule = ModelFactory.CreateItem(item.Context, typeof(Schedule));
                ModelItem distribution = ModelFactory.CreateItem(item.Context, typeof(UniformDouble));

                distribution.Properties[PropertyNames.UniformDouble.SeedProperty].SetValue(1);
                distribution.Properties[PropertyNames.UniformDouble.MinProperty].SetValue(0.0);
                distribution.Properties[PropertyNames.UniformDouble.MaxProperty].SetValue(5.0);
                distribution.Properties[PropertyNames.Schedule.DurationProperty].SetValue(double.PositiveInfinity);
                schedule.Properties[PropertyNames.Schedule.ContentProperty].Collection.Add(distribution);
                item.Properties[PropertyNames.Generator.ScheduleProperty].SetValue(schedule);


                // This ensures that the "Entity" property is initialized properly
                // in xaml at creation time. If there is no Entity-Object in Xaml-Code
                // binding to Property of the Schedule-Object will fail
                ModelItem entity = ModelFactory.CreateItem(item.Context,typeof(Entity.Entity));
                item.Properties[PropertyNames.Generator.EntityProperty].SetValue(entity);


            }

        }





    }
}
