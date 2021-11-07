namespace SimNetUI.ModelLogic.Activities.ModelProperties.Statistics
{
    public class ActivityAssignResourceStatisticInfoML : ActivityQueueBaseStatisticInfoML
    {
        internal override void Reset()
        {
            base.Reset();

            // Properties
            ProcessedEntities = 0;
            AssignedResources = 0;
        }

        #region Properties

            #region private members

                private uint _ProcessedEntities;
                private uint _AssignedResources;

            #endregion

            #region property wrapper

                public uint ProcessedEntities
                {
                    get { return _ProcessedEntities; }
                    set { _ProcessedEntities = value; OnPropertyChanged("ProcessedEntities"); }
                }

                public uint AssignedResources
                {
                    get { return _AssignedResources; }
                    set { _AssignedResources = value; OnPropertyChanged("AssignedResources"); }
                }

            #endregion

        #endregion
    }
}
