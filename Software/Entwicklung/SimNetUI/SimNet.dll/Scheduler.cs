using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;

namespace SimNet
{
    /// <summary>
    /// Der Scheduler verwaltet die Listen der Aktivitäten, der wartenden Objekte, der unterbrochen Objekte
    /// und der auf Ressourcen wartenden Objekte.
    /// Der Scheduler führt die Abarbeitung dieser Listen durch. Sind zu einem Zeitpunkt alle Liste abgearbeitet
    /// und keine Aktivitäten mehr vorhanden, so wird die Simulationszeit auf den nächsten Zeitpunkt, an dem
    /// wieder Aktivitäten ausstehen, gesetzt.
    /// </summary>
    public class Scheduler
    {
        private static List<SimObj> schedObj = new List<SimObj>(); //Objekte die sequentiell abgearbeitet werden
        private static ArrayList interruptObj = new ArrayList(); //unterbrochene Objekte
        private static List<SimObj> waitForObj = new List<SimObj>(); //wartende Objekte
        private static ArrayList resourcePendingObj = new ArrayList(); //auf Ressourcen wartende Objekte
        private static double simTime = 0.0;	//Aktuelle Simulationszeit
        private static bool stop=true;

        public static Boolean HasStoped { get { return stop; } }

        private static SimObj lastObject;

        public static void ResetSimTime()
        {
            simTime = 0.0;
        }

        /// <summary>
        /// Konstruktor
        /// </summary>
        public Scheduler()
        {
        }

        /// <summary>
        /// Property der Simulationszeit.
        /// </summary>
        public static double SimTime
        {
            get { return simTime; }
            //set{simTime = value;}
        }

        /// <summary>
        /// Gibt aktuelles Objekt zurück.
        /// </summary>
        /// <returns>Erstes Element in der Schedulerliste.</returns>
        public static SimObj GetCurrentSchedObj()
        {
            return (SimObj)schedObj[0];
        }

        /// <summary>
        /// Gibt Schedulerliste zurück.
        /// </summary>
        /// <returns></returns>
        public static List<SimObj> GetSchedObjects()
        {
            return schedObj;
        }

        /// <summary>
        /// Fügt neues Objekt in die Schedulerliste ein.
        /// Anschlißend wird Liste neu sortiert.
        /// </summary>
        /// <param name="obj">Objekt´vom Typ SimObj</param>
        public static void AddNewSchedObj(SimObj obj)
        {
            schedObj.Add(obj);
            SortSchedObjects();
        }

        /// <summary>
        /// Fügt ein Objekt in die Interruptliste ein.
        /// </summary>
        /// <param name="obj">Objekt vom Typ SimObj</param>
        public static void AddInterruptObj(SimObj obj)
        {
            interruptObj.Add(obj);
        }

        /// <summary>
        /// Fügt ein Objekt in die Warteliste ein.
        /// </summary>
        /// <param name="obj">Objekt vom Typ SimObj</param>
        /// <param name="priority">Give Priority</param>
        public static void AddWaitForObj(SimObj obj, double priority = 0.0)
        {
            try {
                //Console.WriteLine(priority + " " + resObj.Priority);
                int pos = waitForObj.IndexOf(waitForObj.First((p) => p.Priority < obj.Priority));
                waitForObj.Insert(pos, obj);
            }
            catch (Exception) {
                waitForObj.Add(obj);
            }
        }

        /// <summary>
        /// Fügt ein Objekt in die Warteliste der Ressourcen ein.
        /// </summary>
        /// <param name="obj">Objekt vom Typ ResObj</param>
        public static void AddResourcePendingObj(ResObj obj)
        {
            resourcePendingObj.Add(obj);
        }

        /// <summary>
        /// Löscht ein Objekt aus der Warteliste der Ressourcen.
        /// </summary>
        /// <param name="obj">Zu löschendes Objekt (vom Typ ResObj)</param>
        public static void RemoveResourcePendingObj(ResObj obj)
        {
            resourcePendingObj.Remove(obj);
        }

        //Hier wird die Interruptliste abgearbeitet.
        //Jedes Objekt, das sich in dieser Liste befindet wird
        //in der Schedulerliste gesucht. Wird dieses gefunden,
        //so wird die Zeit auf die aktuelle Simulationzeit gesetzt.
        //Anschließend wird die Interuptliste geleert und die Scheduler-
        //liste neu geordnet. Somit stehen alle unterbrochenen Objekte
        //am Anfang der Schedulerliste und werden demnach sofort als 
        //nächstes abgearbeitet.
        private static void ScheduleInterruptObjects()
        {
            foreach (SimObj iObj in interruptObj) {
                foreach (SimObj obj in schedObj) {
                    if (iObj == obj) {
                        obj.FutureTime = simTime;
                    }
                }
            }
            interruptObj.Clear();
            SortSchedObjects();
        }

        //Hier wird die Warteliste (WAITFOR) und die Ressourcewarteliste abgearbeitet.
        //Von jedem Objekt, das sich in dieser Liste befindet wird
        //in der Schedulerliste nach dem im Member Waitfor abgelegten 
        //Objekt gesucht. Wird dieses gefunden, so ist dieses noch aktiv
        //und das Objekt muss noch warten. Wird diese Objekt nicht gefunden,
        //so ist das Objekt nicht mehr aktiv und das wartende kann die Arbeit 
        //wieder aufnehmen. Dazu wird die Zeit des wartenden Objektes auf die
        //aktuelle Simulationszeit gestetzt und das Objekt wieder in die
        //Schedulerliste eingetragen und aus der Warteliste entfernt.
        private static void ScheduleWaitForObjects()
        {
            //Console.WriteLine("sched");
            List<SimObj> tmpWObj = new List<SimObj>();

            bool active = false;

            #region some debugging output
            //Console.WriteLine("    BEGIN-------------------------------------------------");
            //schedObj.ForEach(tmp => {
            //    string name = "";
            //    string name2 = "";
            //    if (tmp.Params != null && tmp.Params.Count() == 2 && tmp.Params[1] is string)
            //        name = tmp.Params[1] as string;

            //    if (tmp.Waitfor != null && tmp.Waitfor is SimObj) {
            //        SimObj tmp2 = tmp.Waitfor as SimObj;
            //        name2 = "unnamed";
            //        if (tmp2.Params != null && tmp2.Params.Count() == 2 && tmp2.Params[1] is string)
            //            name2 = tmp2.Params[1] as string;
            //    }

            //    Console.WriteLine("    sched name: " + name);

            //});
            //Console.WriteLine();
            //waitForObj.ForEach(tmp => {
            //    string name = "";
            //    string name2 = "";
            //    if (tmp.Params != null && tmp.Params.Count() == 2 && tmp.Params[1] is string)
            //        name = tmp.Params[1] as string;

            //    if (tmp.Waitfor != null && tmp.Waitfor is SimObj) {
            //        SimObj tmp2 = tmp.Waitfor as SimObj;
            //        if (tmp2.Params != null && tmp2.Params.Count() == 2 && tmp2.Params[1] is string)
            //            name2 = tmp2.Params[1] as string;
            //    }

            //    Console.WriteLine("    wait name: " + name + " waiting for " + name2);
            //});
            //Console.WriteLine("    END-------------------------------------------------");
            #endregion

            foreach (SimObj wObj in waitForObj) {
                #region some more debugging output
                //SimObj debTmp = wObj as SimObj;
                //string name = "";
                //string name2 = "";
                //if (debTmp.Params != null && debTmp.Params.Count() == 2 && debTmp.Params[1] is string)
                //    name = debTmp.Params[1] as string;

                //if (debTmp.Waitfor != null && debTmp.Waitfor is SimObj) {
                //    SimObj tmp2 = debTmp.Waitfor as SimObj;
                //    if (tmp2.Params != null && tmp2.Params.Count() == 2 && tmp2.Params[1] is string)
                //        name2 = tmp2.Params[1] as string;
                //}
                //Console.Write("    DEBUG wait name: " + name + " waiting for " + name2);
                #endregion


                if (wObj.Waitfor is SimObj && (schedObj.Contains(wObj.Waitfor as SimObj) || waitForObj.Contains(wObj.Waitfor as SimObj))) {
                    //Prüfen ob auf eine Tell - Methode gewartet wird

                    //Console.Write(" sim");
                    //Console.WriteLine("    DEBUG wait name: " + name + " waiting for " + name2 );
                    active = true;
                }
                else if (wObj.Waitfor is TriggerObj) {
                    //wartet auf trigger
                    TriggerObj tmp = wObj.Waitfor as TriggerObj;
                    active = !tmp.Fired;
                }
                else if (wObj.Waitfor is List<SimObj>) {
                    //trigger wurde synchron released
                    List<SimObj> tmp = wObj.Waitfor as List<SimObj>;

                    if (tmp.Any(s => schedObj.Contains(s)) || tmp.Any(s => s.Waitfor is SimObj && waitForObj.Contains(s)))
                        active = true;
                }
                else
                {
                    //Prüfen ob auf eine ResourceObj-Methode gewartet wurde
                    //TODO: Optimize just put an if around it
                    foreach (ResObj robj in resourcePendingObj)
                    {
                        if (wObj.Waitfor == robj.Obj)
                        {
                            active = true;
                        }
                    }
                }
                //Console.WriteLine();
                //WaitFor-Objekt ist beendet, suspendierte Methode kann Arbeit wiederaufnehmen
                if (!active) {
                    //aktuelle Simtime eintragen und Objekt wieder in Liste aufnehmen
                    wObj.FutureTime = simTime;
                    AddNewSchedObj(wObj);
                    tmpWObj.Add(wObj);
                }
                active = false;
            }

            foreach (SimObj wObj in tmpWObj) {
                //wurde ein Trigger ausgeloest, resette diesen
                if (wObj.Waitfor is TriggerObj && (wObj.Waitfor as TriggerObj).Fired) {
                    (wObj.Waitfor as TriggerObj).Fired = false;
                }

                waitForObj.Remove(wObj); //wartendes Objekt aus Liste entfernen
            }
        }

        /// <summary>
        /// Sortiert die Schedulerliste neu.
        /// </summary>
        public static void SortSchedObjects()
        {
            int i, j;
            SimObj obj1, obj2;


            if (schedObj.Count > 1) {
                for (i = 0; i < schedObj.Count; i++) {
                    for (j = i + 1; j <= schedObj.Count - 1; j++) {
                        obj1 = (SimObj)schedObj[i];
                        obj2 = (SimObj)schedObj[j];
                        if (obj1.FutureTime > obj2.FutureTime) {
                            schedObj[i] = obj2;
                            schedObj[j] = obj1;
                        }
                        if (obj1.FutureTime == obj2.FutureTime) {
                            if (obj1.Priority < obj2.Priority) {
                                schedObj[i] = obj2;
                                schedObj[j] = obj1;
                            }
                        }
                    }
                }
            }
        }

        //Aktuelle Aktivität wird abgearbeitet. Die TELL-Methode dieser Aktivität
        //wird gestartet. Die Simulationszeit wird auch die Zeit dieser Aktivität gesetzt.
        private static void ScheduleObject()
        {

            SimObj obj = (SimObj)schedObj[0];
            TellMethod tm = (TellMethod)obj.Method;
            simTime = obj.FutureTime;
            lastObject = obj;
                    tm(obj.FutureTime, obj.Priority, obj.Params);
        }

        /// <summary>
        /// Löschen des aktuellen Objektes.
        /// </summary>
        public static void RemoveSchedObj()
        {
            if (schedObj.Count > 0)
            {
                if (schedObj[0] == lastObject)
                {
                    schedObj.RemoveAt(0);
                }
                else
                    schedObj.Remove(lastObject);
            }
        }

        /// <summary>
        /// Löscht alle Objekte aus dem Scheduler
        /// </summary>
        public static void RemoveAllSchedObj()
        {
            schedObj.Clear();
        }

        /// <summary>
        /// Löscht alle wartenden Objekte aus dem Scheduler
        /// </summary>
        public static void RemoveAllWaitForObj()
        {
            waitForObj.Clear();
        }

        /// <summary>
        /// Starten der Simulation.
        /// </summary>
        public static void Start()
        {
            stop = false;
            simTime = 0.0;
            while ((schedObj.Count != 0 || waitForObj.Count != 0) && !stop)
            {
                ScheduleInterruptObjects();
                ScheduleWaitForObjects();

                //Sollte die Schedulerliste zu diesem Zeitpunkt noch leer sein wurde
                //das Ende der Simulation erreicht
                //TODO: mit Beispielen prüfen
                if (schedObj.Count == 0)
                    break;

                ScheduleObject();
            }
        }

        /// <summary>
        /// Stoppen der Simulation.
        /// </summary>
        public static void Stop()
        {
            
            stop = true;
        }

    }
}
