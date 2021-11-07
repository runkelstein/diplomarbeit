using SimNetUI.ModelLogic.Base;
namespace SimNetUI.ModelLogic.Activities.ModelProperties.Statistics
{
    public class ActivityReleaseResourceStatisticInfoML : StatisticInfoBaseML
    {

        internal override void Reset()
        {
            base.Reset();

            // Properties
            ProcessedEntities = 0;
            ReleasedResources = 0;
        }

        #region Properties

            #region private members

                private uint _ProcessedEntities;
                private uint _ReleasedResources;

            #endregion

            #region property wrapper

                public uint ProcessedEntities
                {
                    get { return _ProcessedEntities; }
                    set { _ProcessedEntities = value; OnPropertyChanged("ProcessedEntities"); }
                }

                public uint ReleasedResources
                {
                    get { return _ReleasedResources; }
                    set { _ReleasedResources = value; OnPropertyChanged("ReleasedResources"); }
                }

            #endregion

        #endregion
    }
}
