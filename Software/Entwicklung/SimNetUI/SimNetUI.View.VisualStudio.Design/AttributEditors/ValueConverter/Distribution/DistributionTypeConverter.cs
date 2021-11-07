using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Data;
using System.Globalization;
using System.Windows;
using Microsoft.Windows.Design.PropertyEditing;
using System.Windows.Controls;

namespace SimNetUI.VisualStudio.Design.AttributEditors.ValueConverter
{
    internal class DistributionTypeConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null)
                return value.GetType().Name;
            else
                return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {


            throw new NotImplementedException();
        }
    }
}
