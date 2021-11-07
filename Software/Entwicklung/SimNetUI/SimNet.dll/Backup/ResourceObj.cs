using System;
using System.Collections;

namespace SimNet
{
	/// <summary>
	/// Delegate der Give-Methode
	/// </summary>
	public delegate bool GiveMethod(object obj, int numberDesired);
//	public delegate void WaitForTimedGive(object obj, int numberDesired, double timePeroid);
//	public delegate void WaitForPriorityGive(object obj, int numberDesired, double priority);
//	public delegate void WaitForGetResource(object obj, int numberDesired, double timePeroid, double priority);

	/// <summary>
	/// Jede Instanz von ResourceObj beschreibt genau eine Ressource. 
	/// Objekte koennen einen oder mehrere Plaetze der Ressource belegen
	/// bzw. anfordern. Bei den meisten Anwendungen wird jedoch ein
	/// Objekt auch genau einen Platz anfordern. Beispielsweise nimmt
	/// jeder Kunde in einer Kaufhalle auch genau einen Einkaufskorb.
	/// Andererseits belegt auch jeder PKW genau einen Stellplatz,
	/// ein LKW belegt jedoch 8 Stellplaetze. 
	/// Die Statistik wird vorerst jedoch nur fuer die Plaetze gefuehrt,
	/// eine auf die belegenden Objekte bezogene Statistik kann ebenfalls
	/// noch realisiert werden. Fuer den Fall, dass ein Objekt immer
	/// nur einen Platz belegt, stimmt die Statistik fuer die Plaetze
	/// mit der Statistik fuer die belegenden Objekte ueberein. 
	/// </summary>
	public class ResourceObj
	{
		/// <summary>
		/// Liste der verwendeten Resourcen
		/// </summary>
		private ArrayList resourceList;

		/// <summary>
		/// Liste der wartenden Resourcen.
		/// </summary>
		private ArrayList pendingList;
		

		private int maxResources;


		private int resources;

		
		private int pendingResources;

		/// <summary>
		/// Zeitintegral Ressource
		/// wesentliche Groesse zur Ermittlung weiterer statistischer Werte
		/// </summary>
		private double ZI;
		
		/// <summary>
		/// Mittlerer Inhalt Ressource (ZI/SimTime())
		/// ( = 0, falls SimTime() kleiner gleich 0 ist)
		/// </summary>
		private double mi;

		/// <summary>
		/// Maximaler Inhalt Ressource
		/// </summary>
		private double maxi;

		/// <summary>
		/// Mittlere Belegungsdauer Ressource (ZI/ae)
		/// (= 0, falls ae kleiner gleich 0 ist)
		/// </summary>
		private double mb;

		/// <summary>
		/// Anzahl Eintritte gesamt in Ressource (akkumuliert)
		/// </summary>
		private ulong ae;
		
		/// <summary>
		/// Mittlere Auslastung (ZI/(SimTime()* maxResources)),
		/// (= 0, falls (SimTime()* maxResources) kleiner gleich 0 ist)
		/// </summary>
		private double ma;

		/// <summary>
		/// Mittlere Verweilzeit Resources (ZI/ae)
		/// (0, falls ae kleiner gleich 0)
		/// </summary>
		private double mv;

		/// <summary>
		/// Zeitintegral Queue
		/// </summary>
		private double ZIQ;
		
		/// <summary>
		/// Anzahl Eintritte Queue (akkumuliert) mit Wartezeit größer gleich 0
		/// </summary>
		private ulong aeq;
		
		/// <summary>
		/// Anzahl Eintritte Queue (akkumuliert) mit Wartezeit gleich 0
		/// </summary>
		private ulong aeq0;

		/// <summary>
		/// Mittlerer Laenge Queue (ZIQ/SimTime())
		/// (= 0, falls SimTime() kleiner gleich 0 ist)
		/// </summary>
		private double mlq;
		
		/// <summary>
		/// Maximale Laenge Queue
		/// </summary>
		private double maxq;

		/// <summary>
		/// Mittlere Verweilzeit Queue (ZIQ/aeq)
		/// (0, falls aeq kleiner gleich 0 ist)
		/// </summary>
		private double mvq;

		/// <summary>
		/// Mittlere Verweilzeit Queue (ZIQ/(aeq-aeq0)) fuer alle Eintritte mit Wartezeit größer 0
		/// (= 0, falls aeq-aeq0 kleiner gleich 0 ist)
		/// </summary>
		private double mvq0;

		/// <summary>
		/// Letzte Belegung an Ressourcenplätzen
		/// </summary>
		private int iold;

		/// <summary>
		/// Letzter Zeitpunkt der Änderung von Resourcenplätzen
		/// </summary>
		private double told;

		/// <summary>
		/// Neue Belegung an Plätzen in der Queue
		/// </summary>
		private double maxnew;

		/// <summary>
		/// Letzter Zeitpunkt der Änderung der Queue
		/// </summary>
		private double tolq;

		

		/// <summary>
		/// Property des Member resources.
		/// Anzahl der aktuell verfügbaren Ressourcen.
		/// </summary>
		public int Resources
		{
			get{return resources;}
			set{resources=value;}
		}

		/// <summary>
		/// Property des Member maxResources.
		/// Maximale Anzahl der Ressourcen.
		/// </summary>
		public int MaxResources
		{
			get{return maxResources;}
			set{maxResources=value;}
		}

		/// <summary>
		/// Property des Member pendingResources.
		/// Anzahl der wartenden Ressourcen.
		/// </summary>
		public int PendingResources
		{
			get{return pendingResources;}
			set{pendingResources=value;}
		}

		/// <summary>
		/// Gibt Liste der auf Ressourcen wartenden Objekte zurück.
		/// </summary>
		/// <returns>PendingList</returns>
		public ArrayList GetPendingList()
		{
			return pendingList;
		}

		/// <summary>
		/// Gibt Liste der Objekte, die gerade Ressourcen verwenden zurück.
		/// </summary>
		/// <returns>ResourceList</returns>
		public ArrayList GetResourceList()
		{
			return resourceList;
		}

		/// <summary>
		/// Gibt das Zeitintegral der Ressourcen zurück.
		/// </summary>
		/// <returns>Zeitintegral</returns>
		public double GetZI()
		{
			return ZI;
		}

		/// <summary>
		/// Gibt Zeitintegral der Warteschlange zurück.
		/// </summary>
		/// <returns>Zeitintegral</returns>
		public double GetZIQ()
		{
			return ZIQ;
		}

		/// <summary>
		/// Gibt mittleren Inhalt der Ressource zurück.
		/// </summary>
		/// <returns>mittlerer Inhalt</returns>
		public double GetMi()
		{
			if(Scheduler.SimTime>0.0)
				mi=ZI/Scheduler.SimTime;
			else
				mi=0.0;

			return mi;
		}

		/// <summary>
		/// Gibt maximalen Inhalt der Ressource zurück.
		/// </summary>
		/// <returns>maximaler Inhalt</returns>
		public double GetMaxi()
		{
			return maxi;
		}

		/// <summary>
		/// Gibt mittlere Belegungsdauer zurück.
		/// </summary>
		/// <returns>mittlere Belegungsdauer</returns>
		public double GetMb()
		{
			return mb;
		}

		/// <summary>
		/// Gibt Anzahl der Eintritte in Ressource zurück.
		/// </summary>
		/// <returns>Anzahl der Eintritte</returns>
		public ulong GetAe()
		{
			return ae;
		}

		/// <summary>
		/// Gibt mittlere Auslastung der Ressource zurück.
		/// </summary>
		/// <returns>mittlere Auslastung</returns>
		public double GetMa()
		{
			ma=100.0*(ZI/(maxResources*Scheduler.SimTime));
			return ma;
		}

		/// <summary>
		/// Gibt mittlere Verweilzeit der Ressource zurück.
		/// </summary>
		/// <returns>mittlere Verweilzeit</returns>
		public double GetMv()
		{
			if(ae>0)
				mv=ZI/ae;
			else
				mv=0.0;
			return mv;
		}

		/// <summary>
		/// Gibt Anzahl der Eintritte in Warteschlange zurück.
		/// </summary>
		/// <returns>Anzahl Eintritte</returns>
		public ulong GetAeq()
		{
			return aeq;
		}

		/// <summary>
		/// Gibt Anzahl der Eintritte in Warteschlange zurück, bei denen Wartezeit gleich null ist.
		/// </summary>
		/// <returns>Anzahl Eintritte</returns>
		public ulong GetAeq0()
		{
			return aeq0;
		}

		/// <summary>
		/// Gibt die mittlere Länge der Warteschlange zurück.
		/// </summary>
		/// <returns>mittlere Länge</returns>
		public double GetMlq()
		{
			if(Scheduler.SimTime>0.0)
				mlq=ZIQ/Scheduler.SimTime;
			else
				mlq=0.0;

			return mlq;
		}

		/// <summary>
		/// Gibt die maximale Länge der Warteschlange zurück.
		/// </summary>
		/// <returns>maximale Länge</returns>
		public double GetMaxq()
		{
			return maxq;
		}

		/// <summary>
		/// Gibt mittlere Verweilzeit der Warteschlange zurück.
		/// </summary>
		/// <returns>mittlere Verweilzeit</returns>
		public double GetMvq()
		{
			if(aeq>0)
				mvq=ZIQ/aeq;
			else
				mvq=0.0;
			return mvq;
		}

		/// <summary>
		/// Gibt mittlere Verweilzeit der Warteschlange zurück.
		/// </summary>
		/// <returns>mittlere Verweilzeit</returns>
		public double GetMvq0()
		{
			return mvq0;
		}



		/// <summary>
		/// Konstruktor.
		/// Initialisierung der Member.
		/// </summary>
		public ResourceObj()
		{
			resourceList = new ArrayList();
			pendingList = new ArrayList();
			maxResources = 0;
			resources = 0;
			pendingResources = 0;
		}

		/// <summary>
		/// Initialisiert das Resource-Objekt mit der angegeben Anzahl von Resourcen.
		/// Es wird also die Kapazität der Resource festgelegt.
		/// </summary>
		/// <param name="numberOfResources">Anzahl der Resourcen</param>
		public void CreateResource(int numberOfResources)
		{
			resourceList.Capacity=numberOfResources;
			maxResources=numberOfResources;
			resources=numberOfResources;
		}

		/// <summary>
		/// Vergrösseren der Kapazität des Resource-Objektes um den angegebenen Wert.
		/// </summary>
		/// <param name="increaseBy">Um diesen Wert wird Kapazität verkleinert.</param>
		public void IncrementResources(int increaseBy)
		{
			resourceList.Capacity = resourceList.Capacity + increaseBy; 
		}

		/// <summary>
		/// Stellt eine Anzahl von benötigten Resourcen dem anfragendem Objekt zur Verfügung.
		/// Die aufrufende Methode wird solange geblockt, bis die Resourcen verfügbar sind.
		/// Die Anfragen werden in der Warteliste (PendingList) nach dem Prinzip Frist-In First-Out
		/// verarbeitet.
		/// </summary>
		/// <param name="obj">Objekt das Resourcen benötigt</param>
		/// <param name="numberDesired">Anzahl der Resourcen</param>
		public bool Give(object obj, int numberDesired)
		{
			bool pending=false;
			ResObj resObj;

//			Console.WriteLine("		---GIVE---------> Anfrage Resourcen, Anzahl: "+numberDesired);
//			Console.WriteLine("		---GIVE---------> MAXQUEUE                 : "+maxq);

			if(resources>=numberDesired)
			{
				if(pendingList.Count!=0)
				{
					if(object.ReferenceEquals(obj,((ResObj)pendingList[0]).Obj))
					{
						pending=true;
						resources-=numberDesired;
						resObj = (ResObj)pendingList[0];
						resourceList.Add(resObj);
						pendingResources-=numberDesired;
//						Console.WriteLine("		---GIVE--TRUE---> Resourcen                : "+resources);

						if(Scheduler.SimTime==tolq)
						{
							aeq  -= (ulong)numberDesired;
							maxnew = maxq;
//							Console.WriteLine("		---GIVE--TRUE---> MAXNEW                : "+maxnew);
						}
						if(maxnew>maxq)
						{
							maxq=maxnew;
//							Console.WriteLine("		---GIVE--TRUE---> MAXQ                : "+maxq);
							maxnew=0;
						}

						ZIQ+=(Scheduler.SimTime-tolq)*numberDesired;
						tolq=Scheduler.SimTime;
					}
				}
				if(!pending)
				{
					resources-=numberDesired;
					resObj = new ResObj();
					resObj.Obj=obj;
					resObj.NumberDesired=numberDesired;
					resourceList.Add(resObj);
//					Console.WriteLine("		---GIVE--TRUE---> Resourcen                : "+resources);
				}
//				Console.WriteLine("		---GIVE--TRUE---> Laenge ResourceList      : "+resourceList.Count);
//				Console.WriteLine("		---GIVE--TRUE---> Laenge PendingList       : "+pendingList.Count);
				
				if(maxi<maxResources-resources)
					maxi=maxResources-resources;

				ae+=(ulong)numberDesired;
				ZI+=(Scheduler.SimTime-told)*iold;
				iold=maxResources-resources;
				told=Scheduler.SimTime;
				
				return true;
			}
			else
			{
				if(pendingList.Count!=0)
				{
					if(object.ReferenceEquals(obj,((ResObj)pendingList[0]).Obj))
					{
						pending=true;
//						Console.WriteLine("		---GIVE--FALSE--> Bereits in PendingList vorhanden");
//						Console.WriteLine("		---GIVE--FALSE--> PendingResources         : "+pendingResources);
					}
				}
				if(!pending)
				{	
					aeq  += (ulong)numberDesired;
					if(maxq<pendingResources+numberDesired)
						maxnew=pendingResources+numberDesired;
					tolq=Scheduler.SimTime;

					pendingResources+=numberDesired;
					resObj = new ResObj();
					resObj.Obj=obj;
					resObj.NumberDesired=numberDesired;
					pendingList.Add(resObj);
					Scheduler.AddResourcePendingObj(resObj);
//					Console.WriteLine("		---GIVE--FALSE--> PendingResources         : "+pendingResources);	
				}
//				Console.WriteLine("		---GIVE--FALSE--> Laenge ResourceList      : "+resourceList.Count);
//				Console.WriteLine("		---GIVE--FALSE--> Laenge PendingList       : "+pendingList.Count);
				return false;
			}
		}

		/// <summary>
		/// Hat die selbe Aufgabe wie <see cref="Give"/>, mit dem Unterschied das die aufrufende Methode
		/// unterbrochen wird, wenn in der angegebenen Zeit <c>timePeriod</c> die Resourcen nicht zur Verfügung
		/// gestellt werden können.
		/// </summary>
		/// <param name="obj">Objekt das Resourcen benötigt</param>
		/// <param name="numberDesired">Anzahl der Resourcen</param>
		/// <param name="timePeroid">Zeiteinheiten die vergehen dürfen bis Resourcen zur Verfügung gestellt sein müssen</param>
		public void TimedGive(object obj, int numberDesired, double timePeroid)
		{

		}

		/// <summary>
		/// Hat die selbe Aufgabe wie <see cref="Give"/>, mit dem Unterschied das die Anfrage nach der Priorität behandelt wird.
		/// D.h. je höher die Priorität, desto weiter vorn in der Warteliste wird die Anfrage eingeordnet.
		/// </summary>
		/// <param name="obj">Objekt das Resourcen benötigt</param>
		/// <param name="numberDesired">Anzahl der Resourcen</param>
		/// <param name="priority">Priorität</param>
		public void PriorityGive(object obj, int numberDesired, double priority)
		{

		}

		/// <summary>
		/// Ist eine Kombination aus <see cref="TimedGive"/> und <see cref="PriorityGive"/>. Die anfragende Methode wird unterbrochen
		/// wenn die Resourcen nicht innerhalb der angegebenen Zeiteinheiten zur Verfügung stehen. Die Anfragen werden hier aber
		/// auch nach Priorität in die Warteliste eingeordnet. 
		/// </summary>
		/// <param name="obj">Objekt das Resourcen benötigt</param>
		/// <param name="numberDesired">Anzahl der Resourcen</param>
		/// <param name="timePeroid">Zeiteinheiten die vergehen dürfen</param>
		/// <param name="priority">Priorität</param>
		public void GetResource(object obj, int numberDesired, double timePeroid, double priority)
		{

		}

		/// <summary>
		/// Gibt die angegebene Anzahl von Resourcen wieder frei.
		/// </summary>
		/// <param name="obj">Objekt das Resourcen frei gibt</param>
		/// <param name="numberReturned">Anzahl der Resourcen</param>
		public void TakeBack(object obj, int numberReturned)
		{
//			Console.WriteLine("		---TAKEBACK-----> Laenge ResourceList          : "+resourceList.Count);
			foreach (ResObj r in resourceList)	
			{
				if(object.ReferenceEquals(obj,r.Obj))
				{
					if(r.NumberDesired<numberReturned)
					{
						//Fehler
//						Console.WriteLine("		---TAKEBACK-----> FEHLER ");
						break;
					}
					if(r.NumberDesired==numberReturned)
					{
						resources+=numberReturned;
						resourceList.Remove(r);
//						Console.WriteLine("		---TAKEBACK-----> Entfernt, Laenge ResourceList: "+resourceList.Count);
						ProcessPendingList();
						ZI+=(Scheduler.SimTime-told)*iold;
						iold=maxResources-resources;
						told=Scheduler.SimTime;
						break;
					}
					if(r.NumberDesired>numberReturned)
					{
						resources+=numberReturned;
						r.NumberDesired-=numberReturned;
//						Console.WriteLine("		---TAKEBACK-----> Bleibt in Liste, Laenge ResourceList: "+resourceList.Count);
						ProcessPendingList();
						ZI+=(Scheduler.SimTime-told)*iold;
						iold=maxResources-resources;
						told=Scheduler.SimTime;
						break;
					}
				}
//				Console.WriteLine("		---TAKEBACK-----> KEIN OBJEKT GEFUNDEN !!!");
			}
			
		}

		private void ProcessPendingList()
		{
//			Console.WriteLine("		---PROCESSLIST--> Laenge PendingList           : "+pendingList.Count);
			if(pendingList.Count!=0)
			{
				ResObj resObj=(ResObj)pendingList[0];
				bool rc=false;
				while(rc=Give(resObj.Obj,resObj.NumberDesired))
				{
					if(rc)
					{
						pendingList.RemoveAt(0);
						Scheduler.RemoveResourcePendingObj(resObj);
//						Console.WriteLine("		---PROCESSLIST-TRUE-> Laenge PendingList       : "+pendingList.Count);
						if((pendingList.Count!=0))
							resObj=(ResObj)pendingList[0];
						else
							break;
					}
				}
			}
		}
	}
}
