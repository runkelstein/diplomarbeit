using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.Model;
using SimNetUI.VisualStudio.Design.Util;
using Microsoft.Windows.Design.Metadata;
using System.Windows;
using SimNetUI.Activities.Base;


namespace SimNetUI.VisualStudio.Design.DesignModeValueProviders
{
    internal class ActivityDesignModeValueProvider : DesignModeValueProvider
    {
        public ActivityDesignModeValueProvider()
        {
            Properties.Add(PropertyNames.ActivityBase.VisibilityProperty);
        }

        public override object TranslatePropertyValue(ModelItem item, PropertyIdentifier identifier, object value)
        {

            // activities will never be invisible at design time
            if (identifier.Name == "Visibility")
            {
                return Visibility.Visible;
            }

            return base.TranslatePropertyValue(item,identifier, value);
        }
    }
}
