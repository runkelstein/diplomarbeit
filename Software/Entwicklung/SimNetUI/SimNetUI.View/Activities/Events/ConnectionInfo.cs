using SimNetUI.Activities.Base;

namespace SimNetUI.Activities.Events
{
    public sealed class ConnectionInfo
    {

        /// <summary>
        /// Just a helper method which makes it a litle easier to obtain the activity
        /// in the right type
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public T GetActivity<T>()
            where T: ActivityBase,new()
        {
            return Activity as T;
        }


        public ActivityBase Activity { get; private set; }
        public string ConnectorName { get; private set; }

        /// <summary>
        /// The index of a "ConnectionInfo" item within a list. 
        /// If such an item is not contained within a list, this
        /// value should allways return 0
        /// </summary>
        public int index { get; private set; }

        public ConnectionInfo(ActivityBase Activity, string ConnectorName,int index=0)
        {
            this.Activity = Activity;
            this.ConnectorName = ConnectorName;
            this.index = index;
        }
    }
}