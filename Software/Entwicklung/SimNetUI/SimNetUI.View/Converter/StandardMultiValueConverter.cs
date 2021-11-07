using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Data;
using System.Globalization;
using System.Windows.Controls;
using SimNetUI.ModelLogic.Activities.Base;
using System.Collections.ObjectModel;
using System.Windows;

namespace SimNetUI.Converter
{
    internal class StandardMultiValueConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            if (values != null || values.Length > 0)
                return values[0];
            else
                return null;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            var values = new object[targetTypes.Length];
            for (int i = 0; i < targetTypes.Length; i++)
                values[i] = value;

            return values;
        }
    }
}