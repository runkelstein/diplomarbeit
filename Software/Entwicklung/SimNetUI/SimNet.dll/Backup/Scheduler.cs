using System;
using System.Collections;

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
		private static ArrayList schedObj = new ArrayList(); //Objekte die sequentiell abgearbeitet werden
		private static ArrayList interruptObj = new ArrayList(); //unterbrochene Objekte
		private static ArrayList waitForObj = new ArrayList(); //wartende Objekte
		private static ArrayList resourcePendingObj = new ArrayList(); //auf Ressourcen wartende Objekte
		private static double simTime = 0.0;	//Aktuelle Simulationszeit
		private static bool stop=false;


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
			get{return simTime;}
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
		public static ArrayList GetSchedObjects()
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
		public static void AddWaitForObj(SimObj obj)
		{
			waitForObj.Add(obj);
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
			foreach (SimObj iObj in interruptObj)
			{
				foreach (SimObj obj in schedObj)
				{
					if(iObj==obj)
					{
						obj.FutureTime=simTime;
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
			ArrayList tmpWObj=new ArrayList();

			bool active=false;

			foreach (SimObj wObj in waitForObj)
			{
				//Prüfen ob auf eine Tellmethode gewartet wurde
				foreach (SimObj obj in schedObj)
				{
					if(wObj.Waitfor==obj)
					{
						active=true;	
					}
				}

				//Prüfen ob auf eine ResourceObj-Methode gewartet wurde
				foreach (ResObj robj in resourcePendingObj)
				{
					if(wObj.Waitfor==robj.Obj)
					{
						active=true;	
					}
				}

				//WaitFor-Objekt ist beendet, suspendierte Methode kann Arbeit wiederaufnehmen
				if(!active)
				{
					//aktuelle Simtime eintragen und Objekt wieder in Liste aufnehmen
					wObj.FutureTime=simTime;
					AddNewSchedObj(wObj);
					SortSchedObjects(); //Liste neu sortieren
					tmpWObj.Add(wObj);
				}
			}
			foreach (SimObj wObj in tmpWObj)
			{
				waitForObj.Remove(wObj); //wartendes Objekt aus Liste entfernen
			}
		}

		/// <summary>
		/// Sortiert die Schedulerliste neu.
		/// </summary>
		public static void SortSchedObjects()
		{
			int i,j;
			SimObj obj1,obj2;

			if(schedObj.Count>1)
			{
				for(i=0; i<schedObj.Count; i++)
				{
					for(j=i+1; j<=schedObj.Count-1; j++)
					{
						obj1 = (SimObj)schedObj[i];
						obj2 = (SimObj)schedObj[j];
						if(obj1.FutureTime>obj2.FutureTime)
						{
							schedObj[i]=obj2;
							schedObj[j]=obj1;
						}
						if(obj1.FutureTime==obj2.FutureTime)
						{
							if(obj1.Priority<obj2.Priority)
							{
								schedObj[i]=obj2;
								schedObj[j]=obj1;
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
			simTime=obj.FutureTime;
			tm(obj.FutureTime,obj.Priority,obj.Params);
		}

		/// <summary>
		/// Löschen des aktuellen Objektes.
		/// </summary>
		public static void RemoveSchedObj()
		{
			schedObj.RemoveAt(0);
		}

		/// <summary>
		/// Starten der Simulation.
		/// </summary>
		public static void Start()
		{
			simTime=0;
			while(schedObj.Count!=0 || waitForObj.Count!=0 || stop)
			{
				ScheduleInterruptObjects();
				ScheduleWaitForObjects();
				ScheduleObject();
			}
		}

		/// <summary>
		/// Stoppen der Simulation.
		/// </summary>
		public static void Stop()
		{
			stop=true;
		}

	}
}
