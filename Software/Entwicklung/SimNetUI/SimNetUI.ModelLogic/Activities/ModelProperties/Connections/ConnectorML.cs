using SimNetUI.ModelLogic.Activities.Base;
using SimNetUI.ModelLogic.Base;

namespace SimNetUI.ModelLogic.Activities.ModelProperties.Connections
{
    public abstract class ConnectorML : ModelLogicBase
    {

        #region Properties
        
            #region private members
                private uint _LimitConnections;
                private ActivityBaseML _ParentActivity;
            #endregion

            #region Properties
                public uint LimitConnections
                {
                    get { return _LimitConnections; }
                    set { 
                        _LimitConnections = value;                       
                        OnPropertyChanged("LimitConnections"); }
                }


                public ActivityBaseML ParentActivity
                {
                    get { return _ParentActivity; }
                    set
                    {
                        _ParentActivity = value;
                        OnPropertyChanged("ParentActivity");
                    }
                }
            #endregion

        #endregion

        #region abstract
                public abstract bool IsLimitReached { get; }
        #endregion


    }
}
