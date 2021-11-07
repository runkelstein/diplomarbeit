using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Data;

namespace Example.MarketPlace.Converter
{
    class TimeValueConverter : IValueConverter
    {
        static private double startTime = 8*60*60; // 8 Hours in seconds


        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            double timeUnits    =      (double)value + startTime;
            var hours           =      ((int)Math.Floor(timeUnits/3600.0))%24;
            var minutes         =      ((int)Math.Floor((timeUnits/60.0)))%60;
            var seconds         =      ((int)Math.Floor(timeUnits))%60;
            //var milliseconds    =      ((int)Math.Floor(timeUnits * 1000))%1000;
            

            return new TimeSpan(hours, minutes, seconds).ToString();
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
