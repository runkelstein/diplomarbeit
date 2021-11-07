using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SimNet
{
    public class TriggerObj
    {
        /// <summary>
        /// Objekte die auf den Trigger warten
        /// </summary>
        public List<SimObj> WaitingObjects { get; set; }

        /// <summary>
        /// Objekt das den Trigger ausgelöst hat
        /// </summary>
        public SimObj ReleasedObj { get; set; }

        private bool fired;
        public bool Fired
        {
            get { return fired; }
            set { fired = value; }
        }

        public TriggerObj()
        {
            fired = false;
            WaitingObjects = new List<SimObj>();
        }

        /// <summary>
        /// Den Trigger asynchron ausführen, d.h. nicht warten
        /// </summary>
        public void Trigger()
        {
            //Objekt das den trigger ausgelöst hat supendieren

            if (WaitingObjects.Count > 0) {
                SimObj currObj = Scheduler.GetCurrentSchedObj();
                Scheduler.AddWaitForObj(currObj);
                Scheduler.RemoveSchedObj();

                currObj.Waitfor = this;
                Scheduler.SortSchedObjects();

                fired = true;
                WaitingObjects.Clear();

                ReleasedObj = null;
            }
        }

        /// <summary>
        /// Trigger synchron ausführen. Benötigt Unterstützung durch den Enhancer.
        /// </summary>
        public void Release()
        {
            if (WaitingObjects.Count > 0) {
                //Objekt das den trigger ausgelöst hat supendieren
                SimObj currObj = Scheduler.GetCurrentSchedObj();
                Scheduler.AddWaitForObj(currObj);
                Scheduler.RemoveSchedObj();

                Scheduler.SortSchedObjects();		//Liste neu sortieren		

                currObj.Waitfor = new List<SimObj>(WaitingObjects);

                WaitingObjects.Clear();

                fired = true;
                ReleasedObj = currObj;
           }
        }

    }
}
