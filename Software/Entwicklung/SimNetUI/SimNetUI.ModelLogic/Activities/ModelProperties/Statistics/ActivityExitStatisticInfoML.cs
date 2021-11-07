using SimNetUI.ModelLogic.Base;
namespace SimNetUI.ModelLogic.Activities.ModelProperties.Statistics
{
    public class ActivityExitStatisticInfoML : StatisticInfoBaseML
    {
        internal override void Reset()
        {
            base.Reset();

            // Properties
            ArrivedEntities = 0;
        }

        #region Properties

            #region private members

                private uint _ArrivedEntities;

            #endregion

            #region property wrapper

                public uint ArrivedEntities {
                    get {
                        return _ArrivedEntities;
                    }
                    set {
                        _ArrivedEntities = value;
                        OnPropertyChanged("ArrivedEntities");
                    }
                }

            #endregion

        #endregion
    }
}
