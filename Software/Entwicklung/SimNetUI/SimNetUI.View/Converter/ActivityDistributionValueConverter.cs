using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Data;
using System.Windows;
using SimNetUI.Activities.Base;
using SimNetUI.Activities.PropertyObjects.Distributions;

namespace SimNetUI.Converter
{
    internal class ActivityDistributionValueConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            var activity = parameter as ActivityDelayBase;
            if (activity != null)
                return activity.Distribution;

            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter,
                                  System.Globalization.CultureInfo culture)
        {
            var distribution = value as DistributionBase;
            if (distribution != null)
                return distribution.ModelLogic;

            return null;
        }
    }
}