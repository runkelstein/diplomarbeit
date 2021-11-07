using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SimNetUI.ModelLogic.Activities.ModelProperties.Resources;
using SimNetUI.ModelLogic.Base;
using System.Collections.ObjectModel;


namespace SimNetUI.ModelLogic.Entity
{
    public class EntityML : ModelLogicBase
    {


        #region Properties
            #region private members
                private string _Type;
                private uint _Priority;
                private ulong _ID;
                private ReadOnlyCollection<ResourceDependencyML> _ResourceDependencies;
            #endregion

            #region property wrappers
                public string Type
                {
                    get { return _Type; }
                    set { _Type = value; OnPropertyChanged("Type"); }
                }

                public uint Priority
                {
                    get { return _Priority; }
                    set { _Priority = value; OnPropertyChanged("Priority"); }
                }

                public ulong ID
                {
                    get { return _ID; }
                    set { _ID = value; OnPropertyChanged("ID"); }
                }

                public ReadOnlyCollection<ResourceDependencyML> ResourceDependencies
                {
                    get { return _ResourceDependencies; }
                    set { _ResourceDependencies = value; OnPropertyChanged("ResourceDependencies"); }
                }
            
            #endregion

        #endregion



    }
}
