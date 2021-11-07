using SimNetUI.ModelLogic.Base;
using SimNetUI.ModelLogic.Resources;

namespace SimNetUI.ModelLogic.Activities.ModelProperties.Resources
{
    public class ResourceDependencyML : ModelLogicBase
    {
        #region Properties
            #region Private members
                private int _count;
                private ResourceML _resource;
            #endregion

            #region Property wrapper

                public int Count
                {
                    get { return _count; }
                    set { _count = value; OnPropertyChanged("Count"); }
                }

                public ResourceML Resource
                {
                    get { return _resource; }
                    set { _resource = value; OnPropertyChanged("Resource"); }
                }

            #endregion


        #endregion
    }
}
