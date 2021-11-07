using SimNetUI.ModelLogic.Base;
namespace SimNetUI.ModelLogic.Activities.ModelProperties.Statistics
{
    public class ActivityGeneratorStatisticInfoML : ActivityRouteBaseStatisticInfoML
    {

        internal override void Reset()
        {
            base.Reset();

            // Properties
            DepartedEntities = 0;
        }


        #region Properties

            #region private members

                private uint _DepartedEntities;

            #endregion

            #region property wrapper

                public uint DepartedEntities
                {
                    get {
                        return _DepartedEntities;
                    }
                    set {
                        _DepartedEntities = value;
                        OnPropertyChanged("DepartedEntities");
                    }
                }

            #endregion

        #endregion
    }
}
