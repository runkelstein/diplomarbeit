using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;
using Microsoft.Windows.Design.Model;
using SimNetUI.Resources;
using SimNetUI.VisualStudio.Design.Util;
using Microsoft.Windows.Design;
using System.Windows;

namespace SimNetUI.VisualStudio.Design.Adorner.ToolWindows
{
    public class ResourceContainer : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        private void OnPropertyChanged(string name) {
            if (PropertyChanged!=null)
                PropertyChanged(this,new PropertyChangedEventArgs(name));
        }


        private ModelProperty _Capacity;
        private ModelItem Key;
        private ModelItemDictionary Dictionary;
        private EditingContext Context;


        public void RemoveFromResourceDictionary()
        {
            Dictionary.Remove(Key);
        }

        public int Capacity {
            get { return (int)_Capacity.ComputedValue; }
            set { _Capacity.SetValue(value); OnPropertyChanged("Capacity"); }
        }

        public string Name {
            get { return (string)Key.GetCurrentValue(); }
            set { 

                // remove old entry
                Dictionary.Remove(Key);

                // create new entry
                var newResource = ModelFactory.CreateItem(Context, typeof(Resource));
                newResource.Properties[PropertyNames.Resource.CapacityProperty].SetValue(Capacity);
                Key = ModelFactory.CreateItem(Context,value);

                // add new entry
                Dictionary.Add(Key, newResource);

                OnPropertyChanged("Name");
                
            } 
        }

        public ResourceContainer(KeyValuePair<ModelItem,ModelItem> item,ModelProperty Parent)
        {

            this.Key = item.Key;
            this._Capacity = item.Value.Properties[PropertyNames.Resource.CapacityProperty];
            this.Dictionary = Parent.Dictionary;
            this.Context = Parent.Value.Context;
        }

    }
}
