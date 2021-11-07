using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Data;
using Microsoft.Windows.Design.PropertyEditing;

namespace SimNetUI.VisualStudio.Design.AttributEditors.ValueConverter
{
    internal class DistributionPropertyFilter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            var entries = value as PropertyEntryCollection;
            if (entries != null)
            {
                var result = from e in entries
                             where e.CategoryName == "Simulation"
                             select e;

                return result;
            }

            return null;

        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
