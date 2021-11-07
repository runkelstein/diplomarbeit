using SimNetUI.ModelLogic.Activities.ModelProperties.Distributions;
using SimNetUI.ModelLogic.Base;
using System.Collections.ObjectModel;

namespace SimNetUI.ModelLogic.Activities.ModelProperties.Schedule
{
    public class ScheduleML : ModelLogicBase
    {




        #region Properties
            #region private members
                private double _Start;
                private double _End;
                private ReadOnlyCollection<DistributionBaseML> _Content;
            #endregion

            #region property wrappers

                public double Start
                {
                    get { return _Start; }
                    set { _Start = value; OnPropertyChanged("Start"); }
                }

                public double Stop
                {
                    get { return _End; }
                    set { _End = value; OnPropertyChanged("Stop"); }
                }

                public ReadOnlyCollection<DistributionBaseML> Content
                {
                    get { return _Content; }
                    set { _Content = value; OnPropertyChanged("Content"); }
                }

            #endregion

        #endregion

    }
}
