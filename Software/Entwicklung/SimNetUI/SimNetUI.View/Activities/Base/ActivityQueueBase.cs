using System.Linq;
using System.Windows;
using System.ComponentModel;
using SimNetUI.ModelLogic.Activities.Base;
using SimNetUI.Activities.PropertyObjects.Queue;

using System.Collections.Generic;

namespace SimNetUI.Activities.Base
{
    public class ActivityQueueBase : ActivityRouteBase
    {
        #region XAML Properties

        #region DependencyProperty Registration

        public static readonly DependencyProperty QueueTypeProperty =
            DependencyProperty.Register("QueueType",
                                        typeof (QueueType),
                                        typeof (ActivityDelayBase));

        public static readonly DependencyProperty QueueProperty =
            DependencyProperty.Register("Queue",
                                        typeof (FreezableCollection<Entity.Entity>),
                                        typeof (ActivityDelayBase),
                                        new FrameworkPropertyMetadata(new FreezableCollection<Entity.Entity>()));

        #endregion

        #region Property wrappers

        [CategoryAttribute("Simulation")]
        public QueueType QueueType
        {
            get { return (QueueType) GetValue(QueueTypeProperty); }
            set { SetValue(QueueTypeProperty, value); }
        }


        [CategoryAttribute("Simulation")]
        public FreezableCollection<Entity.Entity> Queue
        {
            get { return (FreezableCollection<Entity.Entity>) GetValue(QueueProperty); }
            set { SetValue(QueueProperty, value); }
        }

        #endregion

        #endregion

        #region internal Properties (not for use in Xaml)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var activity = obj as ActivityQueueBase;
            var activityML = e.NewValue as ActivityQueueBaseML;

            if (activityML != null)
            {
            }
        }

        private static bool MetaDataInitialized = false;
        new internal static void UpdateModelLogicMetaData()
        {
            if (!MetaDataInitialized)
            {
                ActivityRouteBase.UpdateModelLogicMetaData();

                // By overriding the metadata of this property, the PropertyChangedCallback of the base class 
                // ActivityBase and this class will both be invoked when this property has been changed
                ModelLogicProperty.OverrideMetadata(typeof(ActivityQueueBase),
                                                    new FrameworkPropertyMetadata(OnModelLogicPropertyChanged));
                MetaDataInitialized = true;
            }
        }

        #endregion



       

        /// <summary>
        /// This method will do a cleanup before a new simulation will
        /// be started.
        /// </summary>
        internal override void OnResetActivity()
        {
            Queue.Clear();
            base.OnResetActivity();
        }


        ///// <summary>
        ///// 
        ///// </summary>
        ///// 
        ///// <param name="one"></param>
        ///// <param name="two"></param>
        ///// <returns>returns true if one is lower than two</returns>
        //private delegate bool CompareDelegate(Entity.Entity one, Entity.Entity two);


        //private Entity.Entity[] QuickSort_List;
        //private CompareDelegate Sort_Compare;
        ///// <summary>
        ///// Quicksort algorithm ported from C to C#
        ///// http://www.win-tux.de/c_024_002.htm#RxxobKap02400204002BF81F0151BF
        ///// </summary>
        ///// <param name="left"></param>
        ///// <param name="right"></param>
        //private void QuickSort(int left, int right)
        //{
        //    Entity.Entity pivot = QuickSort_List[(int)(left + (right - left) / 2)];
        //    Entity.Entity swap = null;
        //    int ptr1 = left;
        //    int ptr2 = right;

        //    do
        //    {
        //        while (Sort_Compare(QuickSort_List[ptr1], pivot)) ptr1++;
        //        while (Sort_Compare(pivot, QuickSort_List[ptr2])) ptr2--;

        //        if (ptr1 > ptr2)
        //            break;

        //        swap = QuickSort_List[ptr2];
        //        QuickSort_List[ptr2] = QuickSort_List[ptr1];
        //        QuickSort_List[ptr1] = swap;


        //    } while (++ptr1 < --ptr2);

        //    if (left < ptr2) QuickSort(left, ptr2);
        //    if (right > ptr1) QuickSort(ptr1, right);

        //}

        protected void SortQueue()
        {
            // First in First out is default, 
            // there is no need for a time consuming sorting operation
            if (QueueType != QueueType.FIFO)
            {
                //QuickSort_List = Queue.ToArray();

                //switch (QueueType)
                //{
                //    case QueueType.LIFO:
                //        Sort_Compare = (one, two) => one.ActivityEntered > two.ActivityEntered;
                //        break;
                //}

                //QuickSort(0, QuickSort_List.Length - 1);
                //Queue = new FreezableCollection<Entity.Entity>(QuickSort_List);

                //new FreezableCollection<Entity.Entity>(Queue.ToArray());

                switch (QueueType)
                {
                    case QueueType.LIFO:

                        Queue = new FreezableCollection<Entity.Entity>(
                            Queue
                                .OrderByDescending(q => q.ActivityEntered)
                            );
                        break;

                    case QueueType.PRIORITY_FIFO:
                        Queue = new FreezableCollection<Entity.Entity>(
                            Queue
                                .OrderBy(q => q.Priority)
                                .ThenBy(q => q.ActivityEntered)
                            );
                        break;
                    case QueueType.PRIORITY_LIFO:
                        Queue = new FreezableCollection<Entity.Entity>(
                            Queue
                                .OrderBy(q => q.Priority)
                                .ThenByDescending(q => q.ActivityEntered)
                            );
                        break;
                    case QueueType.PRIORITY_DESC_FIFO:
                        Queue = new FreezableCollection<Entity.Entity>(
                            Queue
                                .OrderByDescending(q => q.Priority)
                                .ThenBy(q => q.ActivityEntered)
                            );
                        break;
                    case QueueType.PRIORITY_DESC_LIFO:
                        Queue = new FreezableCollection<Entity.Entity>(
                            Queue
                                .OrderByDescending(q => q.Priority)
                                .ThenByDescending(q => q.ActivityEntered)
                            );
                        break;
                }
            }
        }

        public ActivityQueueBase()
            : base()
        {
            SetValue(QueueProperty, new FreezableCollection<Entity.Entity>());
        }
    }
}