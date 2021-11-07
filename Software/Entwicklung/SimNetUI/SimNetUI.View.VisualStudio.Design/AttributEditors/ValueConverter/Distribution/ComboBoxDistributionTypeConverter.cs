using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Data;
using System.Globalization;
using System.Windows;
using Microsoft.Windows.Design.PropertyEditing;
using System.Windows.Controls;
using SimNetUI.Activities.PropertyObjects.Distributions;

namespace SimNetUI.VisualStudio.Design.AttributEditors.ValueConverter
{
    internal class ComboBoxDistributionTypeConverter : IValueConverter
    {

        private ComboBox box;

        public ComboBoxDistributionTypeConverter()
        {
        }

        public ComboBoxDistributionTypeConverter(ComboBox box)
        {
            this.box = box;
        }

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {

            try
            {
                return ((box.DataContext as CategoryEntry)["Distribution"].PropertyValue.SubProperties["DistributionType"].PropertyValue.Value as Type).Name;
            }
            catch
            {
                return null;
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {

            var typeStr = value as string;

            if (typeStr != null)
            {
                

                switch (typeStr)
                {
                    case "Erlang": return new Erlang();
                    case "Exponential": return new Exponential();
                    case "Fixed": return new Fixed();
                    case "LogNormal": return new LogNormal();
                    case "NoEvent": return new NoEvent();
                    case "Normal": return new Normal();
                    case "Triangular": return new Triangular();
                    case "UniformDouble": return new UniformDouble();
                    case "UniformInt": return new UniformInt();
                    case "Weibull": return new Weibull();
                }
            }

            throw new NotImplementedException();
        }
    }
}
