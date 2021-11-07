using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.Model;

namespace SimNetUI.VisualStudio.Design.Initializers.Activities
{
    internal class ActivityBaseInitializer : DefaultInitializer
    {
        /// <summary>
        /// Callback when the designer has created the FeedbackControl.
        /// </summary>
        public override void InitializeDefaults(ModelItem item)
        {
            if (item != null)
            {
                base.InitializeDefaults(item);

            }
        }
    }
}
