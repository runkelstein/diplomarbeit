using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SimNetUI.Base;
using System.Windows;
using SimNetUI.ModelLogic.Resources;

namespace SimNetUI.Resources
{
    public class ResourceStatisticInfo : StatisticInfoBase
    {
        #region Properties

        #region Dependency Registration

        public static readonly DependencyProperty AvailableResourcesProperty =
            DependencyProperty.Register("AvailableResources", 
                                        typeof(uint), typeof(ResourceStatisticInfo),
                                        new FrameworkPropertyMetadata(0U));

        public static readonly DependencyProperty PendingResourcesProperty =
            DependencyProperty.Register("PendingResources",
                                typeof(uint), typeof(ResourceStatisticInfo),
                                new FrameworkPropertyMetadata(0U));

        public static readonly DependencyProperty MaxAvailableResourcesProperty =
            DependencyProperty.Register("MaxAvailableResources",
                                typeof(uint), typeof(ResourceStatisticInfo),
                                new FrameworkPropertyMetadata(0U));


        #endregion

        #region Property wrappers

        public uint AvailableResources
        {
            get { return (uint) GetValue(AvailableResourcesProperty); }
        }

        public uint PendingResources
        {
            get { return (uint)GetValue(PendingResourcesProperty); }
        }

        public uint MaxAvailableResources
        {
            get { return (uint)GetValue(MaxAvailableResourcesProperty); }
        }

        #endregion

        #endregion

        #region internal (reference to modell)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var statInfo = obj as ResourceStatisticInfo;
            var statInfoML = e.NewValue as ResourceStatisticInfoML;

            if (statInfoML != null)
            {
                statInfo.SetUpBinding(AvailableResourcesProperty);
                statInfo.SetUpBinding(PendingResourcesProperty);
                statInfo.SetUpBinding(MaxAvailableResourcesProperty);
            }
        }

        #endregion

        static ResourceStatisticInfo()
        {


            ModelLogicProperty.OverrideMetadata(
                typeof (ResourceStatisticInfo),
                new FrameworkPropertyMetadata(OnModelLogicPropertyChanged)
                );
        }

        public ResourceStatisticInfo()
        {
            this.ModelLogic = new ResourceStatisticInfoML();
        }


    }
}
