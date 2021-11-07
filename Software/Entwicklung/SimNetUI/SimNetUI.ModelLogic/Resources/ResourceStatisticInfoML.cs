using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SimNetUI.ModelLogic.Base;
using System.ComponentModel;

namespace SimNetUI.ModelLogic.Resources
{
    /// <summary>
    /// This class works as some kind of a proxy class for resource statistics, to make them available
    /// for the view. A view class might bind to properties of this class
    /// </summary>
    public class ResourceStatisticInfoML : StatisticInfoBaseML
    {
        
        private ResourceML _Resource;

        #region Properties
            #region private members
                public uint _AvailableResources;
                public uint _PendingResources;
                public uint _MaxAvailableResources;
            #endregion

            #region property wrappers
                public uint AvailableResources
                {
                    get { return _Resource!=null ? (uint)_Resource.obj.Resources : 0U; }
                }

                public uint PendingResources
                {
                    get { return _Resource!=null ? (uint)_Resource.obj.PendingResources : 0U; }
                }

                public uint MaxAvailableResources
                {
                    get { return _Resource!=null ? (uint)_Resource.obj.MaxResources : 0U; }
                }

            #endregion

        #endregion

        internal void SuscribePropertyChanged()
        {
            if (_Resource != null)
            {
                _Resource.obj.PropertyChanged += OnResourcePropertyUpdated;

                // Notifiy values changed
                OnPropertyChanged("AvailableResources");
                OnPropertyChanged("PendingResources");
                OnPropertyChanged("MaxAvailableResources");
            }
        }

        internal void UnSuscribePropertyChanged()
        {
            if (_Resource != null)
                _Resource.obj.PropertyChanged -= OnResourcePropertyUpdated;
        }


        /// <summary>
        /// This reference allows access to the ResourceObj of the SimNet-Lib
        /// </summary>
        internal ResourceML Resource { 
            get { return _Resource; }
            set {
                UnSuscribePropertyChanged();
                _Resource = value;
                SuscribePropertyChanged();
            }
        }

        /// <summary>
        /// This method forwards property changed messages
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void OnResourcePropertyUpdated(object sender, PropertyChangedEventArgs e)
        {

            switch (e.PropertyName)
            {
                // SimNet.ResourceObj Property -->  SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML Property
                case "Resources":                   OnPropertyChanged("AvailableResources"); break;
                case "PendingResources":            OnPropertyChanged("PendingResources"); break;
                case "MaxResources":                OnPropertyChanged("MaxAvailableResources"); break;          
            }

        }

    }
}
