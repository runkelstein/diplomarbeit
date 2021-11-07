using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Data;
using System.Globalization;
using System.Windows;
using Microsoft.Windows.Design.PropertyEditing;
using SimNetUI.Activities.PropertyObjects.Distributions;
using SimNetUI.Activities.PropertyObjects.Schedule;


namespace SimNetUI.VisualStudio.Design.AttributEditors.ValueConverter
{
    internal class DistributionDurationConverter : IValueConverter
    {

        private DistributionBase distribution;

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            
            distribution = value as DistributionBase;

            if (distribution != null)
                return Schedule.GetDuration(distribution).ToString();
            else
                return Double.NaN.ToString();
        
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var str = value as string;
            double result;


            if (Double.TryParse(str,out result))
            {
                Schedule.SetDuration(distribution, result);
            }

            return distribution;
        }
    }
}
