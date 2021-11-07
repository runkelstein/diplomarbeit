using SimNetUI.ModelLogic.Base;
using SimNet;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;

namespace SimNetUI.ModelLogic.Resources
{
    public class ResourceML : ModelLogicBase, IStatisticInfo<ResourceStatisticInfoML>
    {

        #region Properties
            #region private members
                private int _Capacity;
                private ResourceStatisticInfoML _Statistic;
            #endregion

            #region property wrappers
                public int Capacity
                {
                    get { return _Capacity; }
                    set {

                        if (_Capacity < value)
                            obj.IncrementResources(value - _Capacity);
                        _Capacity = value;                         
                        OnPropertyChanged("Capacity"); 
                    
                    }
                }

                public ResourceStatisticInfoML Statistic
                {
                    get { return _Statistic; }
                    set {
                        _Statistic = value;
                        _Statistic.Resource = this;

                        OnPropertyChanged("Statistic"); 
                    }
                }

            #endregion
        #endregion


        internal ResourceObj obj { get; set; }

        internal void clearResource() {

            if (Statistic!=null)
                Statistic.UnSuscribePropertyChanged();

            obj = new ResourceObj();
            obj.CreateResource(_Capacity);

            if (Statistic != null)
                Statistic.SuscribePropertyChanged();
        }

        public ResourceML()
        {
            
            clearResource();           
        }

    }
}
