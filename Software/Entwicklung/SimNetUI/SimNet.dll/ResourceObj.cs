using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Diagnostics;
using System.ComponentModel;

namespace SimNet
{
	/// <summary>
	/// Delegate der Give-Methode
	/// </summary>
	public delegate bool GiveMethod(object obj, int numberDesired, double priority=0.0);
//	public delegate void WaitForTimedGive(object obj, int numberDesired, double timePeroid);
//	public delegate void PriorityGiveMethod(object obj, int numberDesired, double priority);
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
	public class ResourceObj : INotifyPropertyChanged
	{
        #region INotifyPropertyChanged Members

        /// Code Referenz: http://msdn.microsoft.com/de-de/magazine/dd419663.aspx 

        /// <summary>
        /// Raised when a property on this object has a new value.
        /// </summary>
        public event PropertyChangedEventHandler PropertyChanged;

        /// <summary>
        /// Raises this object's PropertyChanged event.
        /// </summary>
        /// <param name="propertyName">The property that has a new value.</param>
        protected virtual void OnPropertyChanged(string propertyName)
        {
            this.VerifyPropertyName(propertyName);

            PropertyChangedEventHandler handler = this.PropertyChanged;
            if (handler != null)
            {
                var e = new PropertyChangedEventArgs(propertyName);
                handler(this, e);
            }
        }

        /// <summary>
        /// Warns the developer if this object does not have
        /// a public property with the specified name. This 
        /// method does not exist in a Release build.
        /// </summary>
        [Conditional("DEBUG")]
        [DebuggerStepThrough]
        public void VerifyPropertyName(string propertyName)
        {
            // Verify that the property name matches a real,  
            // public, instance property on this object.
            if (TypeDescriptor.GetProperties(this)[propertyName] == null)
            {
                string msg = "Invalid property name: " + propertyName;

                if (this.ThrowOnInvalidPropertyName)
                    throw new Exception(msg);
                else
                    Debug.Fail(msg);
            }
        }

        /// <summary>
        /// Returns whether an exception is thrown, or if a Debug.Fail() is used
        /// when an invalid property name is passed to the VerifyPropertyName method.
        /// The default value is false, but subclasses used by unit tests might 
        /// override this property's getter to return true.
        /// </summary>
        protected virtual bool ThrowOnInvalidPropertyName { get; private set; }


        #endregion // INotifyPropertyChanged Members

        /// <summary>
		/// Liste der verwendeten Resourcen
		/// </summary>
        public List<ResObj> ResourceList
        {
            get { return _ResourceList; }
            private set { _ResourceList = value; OnPropertyChanged("ResourceList"); }
        }

        private List<ResObj> _ResourceList;

		/// <summary>
		/// Liste der wartenden Resourcen.
		/// </summary>
        public List<ResObj> PendingList
        {
            get { return _PendingList; }
            private set { _PendingList = value; OnPropertyChanged("PendingList"); }
        }


        private List<ResObj> _PendingList;
		






		


		/// <summary>
		/// Zeitintegral Ressource
		/// wesentliche Groesse zur Ermittlung weiterer statistischer Werte
		/// </summary>
        public double ZI
        {
            get { return _ZI; }
            private set { 

                _ZI = value;
                
                // Kalkulation der Werte die durch das Zeitintegral beeinflusst werden
                if (Scheduler.SimTime > 0.0)
                {
                    Mi = _ZI / Scheduler.SimTime;
                }
                else
                {
                    Mi = 0.0;
                }

                Ma = 100.0 * (_ZI / (_MaxResources * Scheduler.SimTime));
                    
                if (_Ae > 0) {
                    Mv = _ZI / _Ae;
                }
                else {
                    Mv = 0.0;
                }


                OnPropertyChanged("ZI");


            
            }
        }

        private Double _ZI;
		
		/// <summary>
		/// Mittlerer Inhalt Ressource (ZI/SimTime())
		/// ( = 0, falls SimTime() kleiner gleich 0 ist)
		/// </summary>
        public double Mi
        {
            get { return _Mi; }
            set { _Mi = value; OnPropertyChanged("Mi"); }
        }

        private double _Mi;

		/// <summary>
		/// Maximaler Inhalt Ressource
		/// </summary>
        public double Maxi
        {
            get { return _Maxi; }
            private set { _Maxi = value; OnPropertyChanged("Maxi"); }
        }

        private double _Maxi;

		/// <summary>
		/// Mittlere Belegungsdauer Ressource (ZI/ae)
		/// (= 0, falls ae kleiner gleich 0 ist)
		/// </summary>
        public double Mb
        {
            get { return _Mb; }
            private set { _Mb = value; OnPropertyChanged("Mb"); }
        }

        private double _Mb;

		/// <summary>
		/// Anzahl Eintritte gesamt in Ressource (akkumuliert)
		/// </summary>
        public ulong Ae
        {
            get { return _Ae; }
            private set { _Ae = value;

                if (_Ae > 0)
                {
                    Mvq = _ZIQ / _Aeq;
                    Mv = _ZI / _Ae;
                }
                else
                {
                    Mvq = 0.0;
                    Mv = 0.0;
                }
                
                OnPropertyChanged("Ae"); }
        }

        private ulong _Ae;
		
		/// <summary>
		/// Mittlere Auslastung (ZI/(SimTime()* maxResources)),
		/// (= 0, falls (SimTime()* maxResources) kleiner gleich 0 ist)
		/// </summary>
        public double Ma
        {
            get { return _Ma; }
            private set { _Ma = value; OnPropertyChanged("Ma"); }
        }

        private double _Ma;

		/// <summary>
		/// Mittlere Verweilzeit Resources (ZI/ae)
		/// (0, falls ae kleiner gleich 0)
		/// </summary>
		public double Mv
        {
            get { return _Mv; }
            private set { _Mv = value; OnPropertyChanged("Mv"); }
        }

        private double _Mv;

		/// <summary>
		/// Zeitintegral Queue
		/// </summary>
		public double ZIQ
        {
            get { return _ZIQ; }
            private set { 
                _ZIQ = value;

                // Kalkulation der Werte die durch das Zeitintegral beeinflusst werden
                if (Scheduler.SimTime > 0.0)
                {
                    Mlq = _ZIQ / Scheduler.SimTime;
                }
                else
                {
                    Mlq = 0.0;
                }


                if (Ae > 0)
                {
                    Mvq = _ZIQ / Aeq;
                }
                else
                {
                    Mvq = 0.0;
                }

                OnPropertyChanged("ZIQ"); 
           
            
            }
        }

        private double _ZIQ;
		
		/// <summary>
		/// Anzahl Eintritte Queue (akkumuliert) mit Wartezeit größer gleich 0
		/// </summary>
		public ulong Aeq
        {
            get { return _Aeq; }
            private set { _Aeq = value; OnPropertyChanged("Aeq"); }
        }

        private ulong _Aeq;
		
		/// <summary>
		/// Anzahl Eintritte Queue (akkumuliert) mit Wartezeit gleich 0
		/// </summary>
		public ulong Aeq0
        {
            get { return _Aeq0; }
            private set { _Aeq0 = value; OnPropertyChanged("Aeq0"); }
        }

        private ulong _Aeq0;


		/// <summary>
		/// Mittlerer Laenge Queue (ZIQ/SimTime())
		/// (= 0, falls SimTime() kleiner gleich 0 ist)
		/// </summary>
        public double Mlq
        {
            get { return _Mlq; }
            private set { _Mlq = value; OnPropertyChanged("Mlq"); }
        }

        private double _Mlq;
		
		/// <summary>
		/// Maximale Laenge Queue
		/// </summary>
        public double Maxq
        {
            get { return _Maxq; }
            private set { _Maxq = value; OnPropertyChanged("Maxq"); }
        }

        private double _Maxq;

		/// <summary>
		/// Mittlere Verweilzeit Queue (ZIQ/aeq)
		/// (0, falls aeq kleiner gleich 0 ist)
		/// </summary>
		public double Mvq
        {
            get { return _Mvq; }
            private set { _Mvq = value; OnPropertyChanged("Mvq"); }
        }

        private double _Mvq;

		/// <summary>
		/// Mittlere Verweilzeit Queue (ZIQ/(aeq-aeq0)) fuer alle Eintritte mit Wartezeit größer 0
		/// (= 0, falls aeq-aeq0 kleiner gleich 0 ist)
		/// </summary>
		public double Mvq0
        {
            get { return _Mvq0; }
            private set { _Mvq0 = value; OnPropertyChanged("Mvq0"); }
        }


        private double _Mvq0;

		/// <summary>
		/// Letzte Belegung an Ressourcenplätzen
		/// </summary>
		public int Iold
        {
            get { return _Iold; }
            private set { _Iold = value; OnPropertyChanged("Iold"); }
        }

        private int _Iold;

		/// <summary>
		/// Letzter Zeitpunkt der Änderung von Resourcenplätzen
		/// </summary>
        public double Told
        {
            get { return _Told; }
            private set { _Told = value; OnPropertyChanged("Told"); }
        }

        private double _Told;

		/// <summary>
		/// Neue Belegung an Plätzen in der Queue
		/// </summary>
		public double MaxNew
        {
            get { return _MaxNew; }
            private set { _MaxNew = value; OnPropertyChanged("MaxNew"); }
        }

        private double _MaxNew;

		/// <summary>
		/// Letzter Zeitpunkt der Änderung der Queue
		/// </summary>
		public double Tolq
        {
            get { return _Tolq; }
            private set { _Tolq = value; OnPropertyChanged("Tolq"); }
        }

        private double _Tolq;

		

		/// <summary>
		/// Property des Member resources.
		/// Anzahl der aktuell verfügbaren Ressourcen.
		/// </summary>
		public int Resources
		{
			get{return _Resources;}
            set {_Resources = value; OnPropertyChanged("Resources"); }
		}

        private int _Resources;

		/// <summary>
		/// Property des Member maxResources.
		/// Maximale Anzahl der Ressourcen.
		/// </summary>
		public int MaxResources
		{
			get{return _MaxResources;}
            set
            {
                _MaxResources = value;

                Ma = 100.0 * (_ZI / (_MaxResources * Scheduler.SimTime));
                
                OnPropertyChanged("MaxResources");
            }
		}

        private int _MaxResources;

		/// <summary>
		/// Property des Member pendingResources.
		/// Anzahl der wartenden Ressourcen.
		/// </summary>
		public int PendingResources
		{
			get{return _PendingResources;}
            set { _PendingResources = value; OnPropertyChanged("PendingResources"); }
		}

        private int _PendingResources;



        #region Legacy Code


        /// <summary>
        /// Gibt Liste der auf Ressourcen wartenden Objekte zurück.
        /// </summary>
        /// <returns>PendingList</returns>
        [Obsolete("Property PendingList verwenden")]
        public List<ResObj> GetPendingList()
        {
            return PendingList;
        }

        /// <summary>
        /// Gibt Liste der Objekte, die gerade Ressourcen verwenden zurück.
        /// </summary>
        /// <returns>ResourceList</returns>
        [Obsolete("Property ResourceList verwenden")]
        public List<ResObj> GetResourceList()
        {
            return ResourceList;
        }

        /// <summary>
        /// Gibt das Zeitintegral der Ressourcen zurück.
        /// </summary>
        /// <returns>Zeitintegral</returns>
        [Obsolete("Property ZI verwenden")]
        public double GetZI()
        {
            return ZI;
        }

        /// <summary>
        /// Gibt Zeitintegral der Warteschlange zurück.
        /// </summary>
        /// <returns>Zeitintegral</returns>
        [Obsolete("Property ZIQ verwenden")]
        public double GetZIQ()
        {
            return ZIQ;
        }


        /// <summary>
		/// Gibt mittleren Inhalt der Ressource zurück.
		/// </summary>
		/// <returns>mittlerer Inhalt</returns>
        [Obsolete("Property Mi verwenden")]
        public double GetMi()
        {
            return Mi;
        }

		/// <summary>
		/// Gibt maximalen Inhalt der Ressource zurück.
		/// </summary>
		/// <returns>maximaler Inhalt</returns>
        [Obsolete("Property Maxi verwenden")]
		public double GetMaxi()
		{
			return Maxi;
		}

		/// <summary>
		/// Gibt mittlere Belegungsdauer zurück.
		/// </summary>
		/// <returns>mittlere Belegungsdauer</returns>
        [Obsolete("Property Mb verwenden")]
		public double GetMb()
		{
			return Mb;
		}

		/// <summary>
		/// Gibt Anzahl der Eintritte in Ressource zurück.
		/// </summary>
		/// <returns>Anzahl der Eintritte</returns>
        [Obsolete("Property Ae verwenden")]
		public ulong GetAe()
		{
			return Ae;
		}

		/// <summary>
		/// Gibt mittlere Auslastung der Ressource zurück.
		/// </summary>
		/// <returns>mittlere Auslastung</returns>
        [Obsolete("Property Ma verwenden")]
		public double GetMa()
		{
			return Ma;
		}

		/// <summary>
		/// Gibt mittlere Verweilzeit der Ressource zurück.
		/// </summary>
		/// <returns>mittlere Verweilzeit</returns>
        [Obsolete("Property Mv verwenden")]
		public double GetMv()
		{
			return Mv;
		}

		/// <summary>
		/// Gibt Anzahl der Eintritte in Warteschlange zurück.
		/// </summary>
		/// <returns>Anzahl Eintritte</returns>
        [Obsolete("Property Aeq verwenden")]
		public ulong GetAeq()
		{
			return Aeq;
		}

		/// <summary>
		/// Gibt Anzahl der Eintritte in Warteschlange zurück, bei denen Wartezeit gleich null ist.
		/// </summary>
		/// <returns>Anzahl Eintritte</returns>
        [Obsolete("Property Aeq0 verwenden")]
		public ulong GetAeq0()
		{
			return Aeq0;
		}

		/// <summary>
		/// Gibt die mittlere Länge der Warteschlange zurück.
		/// </summary>
		/// <returns>mittlere Länge</returns>
        [Obsolete("Property Mlq verwenden")]
		public double GetMlq()
		{
			return Mlq;
		}

		/// <summary>
		/// Gibt die maximale Länge der Warteschlange zurück.
		/// </summary>
		/// <returns>maximale Länge</returns>
        [Obsolete("Property Maxq verwenden")]
		public double GetMaxq()
		{
			return Maxq;
		}

		/// <summary>
		/// Gibt mittlere Verweilzeit der Warteschlange zurück.
		/// </summary>
		/// <returns>mittlere Verweilzeit</returns>
        [Obsolete("Property Mvq verwenden")]
		public double GetMvq()
		{
			return Mvq;
		}

		/// <summary>
		/// Gibt mittlere Verweilzeit der Warteschlange zurück.
		/// </summary>
		/// <returns>mittlere Verweilzeit</returns>
        [Obsolete("Property Mvq0 verwenden")]
		public double GetMvq0()
		{
			return Mvq0;
		}

        #endregion



        /// <summary>
		/// Konstruktor.
		/// Initialisierung der Member.
		/// </summary>
		public ResourceObj()
		{
            ResourceList = new List<ResObj>();
            PendingList = new List<ResObj>();
			MaxResources = 0;
			Resources = 0;
			PendingResources = 0;
		}

		/// <summary>
		/// Initialisiert das Resource-Objekt mit der angegeben Anzahl von Resourcen.
		/// Es wird also die Kapazität der Resource festgelegt.
		/// </summary>
		/// <param name="numberOfResources">Anzahl der Resourcen</param>
		public void CreateResource(int numberOfResources)
		{
			ResourceList.Capacity=numberOfResources;
			MaxResources=numberOfResources;
			Resources=numberOfResources;
		}

		/// <summary>
		/// Vergrösseren der Kapazität des Resource-Objektes um den angegebenen Wert.
		/// </summary>
		/// <param name="increaseBy">Um diesen Wert wird Kapazität verkleinert.</param>
		public void IncrementResources(int increaseBy)
		{
			ResourceList.Capacity += increaseBy;
            MaxResources += increaseBy;
            Resources += increaseBy;
		}

		/// <summary>
		/// Stellt eine Anzahl von benötigten Resourcen dem anfragendem Objekt zur Verfügung.
		/// Die aufrufende Methode wird solange geblockt, bis die Resourcen verfügbar sind.
		/// Die Anfragen werden in der Warteliste (PendingList) nach dem Prinzip Frist-In First-Out
		/// verarbeitet.
		/// </summary>
		/// <param name="obj">Objekt das Resourcen benötigt</param>
		/// <param name="numberDesired">Anzahl der Resourcen</param>
        /// <param name="priority">Give Priority</param>
		public bool Give(object obj, int numberDesired, double priority=0.0)
		{
			bool pending=false;
			ResObj resObj;

//			Console.WriteLine("		---GIVE---------> Anfrage Resourcen, Anzahl: "+numberDesired);
//			Console.WriteLine("		---GIVE---------> MAXQUEUE                 : "+maxq);

			if(Resources>=numberDesired)
			{
				if(PendingList.Count!=0)
				{
                    //List<object> tmp = pendingList.Insert(
					if(object.ReferenceEquals(obj,((ResObj)PendingList[0]).Obj))
					{
						pending=true;
						Resources-=numberDesired;
						resObj = (ResObj)PendingList[0];
						ResourceList.Add(resObj);
						PendingResources-=numberDesired;
//						Console.WriteLine("		---GIVE--TRUE---> Resourcen                : "+resources);

						if(Scheduler.SimTime==Tolq)
						{
							Aeq  -= (ulong)numberDesired;
							MaxNew = Maxq;
//							Console.WriteLine("		---GIVE--TRUE---> MAXNEW                : "+maxnew);
						}
						if(MaxNew>Maxq)
						{
							Maxq=MaxNew;
//							Console.WriteLine("		---GIVE--TRUE---> MAXQ                : "+maxq);
							MaxNew=0;
						}

						ZIQ+=(Scheduler.SimTime-Tolq)*numberDesired;
						Tolq=Scheduler.SimTime;
					}
				}
				if(!pending)
				{
					Resources-=numberDesired;
					resObj = new ResObj();
					resObj.Obj=obj;
					resObj.NumberDesired=numberDesired;
					ResourceList.Add(resObj);
//					Console.WriteLine("		---GIVE--TRUE---> Resourcen                : "+resources);
				}
//				Console.WriteLine("		---GIVE--TRUE---> Laenge ResourceList      : "+resourceList.Count);
//				Console.WriteLine("		---GIVE--TRUE---> Laenge PendingList       : "+pendingList.Count);
				
				if(Maxi<MaxResources-Resources)
					Maxi=MaxResources-Resources;

				Ae+=(ulong)numberDesired;
				ZI+=(Scheduler.SimTime-Told)*Iold;
				Iold=MaxResources-Resources;
				Told=Scheduler.SimTime;
				
				return true;
			}
			else
			{
				if(PendingList.Count!=0)
				{
					if(object.ReferenceEquals(obj,((ResObj)PendingList[0]).Obj))
					{
						pending=true;
//						Console.WriteLine("		---GIVE--FALSE--> Bereits in PendingList vorhanden");
//						Console.WriteLine("		---GIVE--FALSE--> PendingResources         : "+pendingResources);
					}
				}
				if(!pending)
				{	
					Aeq  += (ulong)numberDesired;
					if(Maxq<PendingResources+numberDesired)
						MaxNew=PendingResources+numberDesired;
					Tolq=Scheduler.SimTime;

					PendingResources+=numberDesired;
					resObj = new ResObj();
					resObj.Obj=obj;
					resObj.NumberDesired=numberDesired;
                    resObj.Priority = priority;

                    try {
                        int pos = PendingList.IndexOf(PendingList.First((p) => p.Priority < resObj.Priority));
                        PendingList.Insert(pos, resObj);
                    }
                    catch (Exception) {
                        PendingList.Add(resObj);
                    }

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
			foreach (ResObj r in ResourceList)	
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
						Resources+=numberReturned;
						ResourceList.Remove(r);
//						Console.WriteLine("		---TAKEBACK-----> Entfernt, Laenge ResourceList: "+resourceList.Count);
                        ProcessPendingList();
                        ZI+=(Scheduler.SimTime-Told)*Iold;
						Iold=MaxResources-Resources;
						Told=Scheduler.SimTime;
						break;
					}
					if(r.NumberDesired>numberReturned)
					{
						Resources+=numberReturned;
						r.NumberDesired-=numberReturned;
//						Console.WriteLine("		---TAKEBACK-----> Bleibt in Liste, Laenge ResourceList: "+resourceList.Count);
                        ProcessPendingList();
						ZI+=(Scheduler.SimTime-Told)*Iold;
						Iold=MaxResources-Resources;
						Told=Scheduler.SimTime;
						break;
					}
				}
//				Console.WriteLine("		---TAKEBACK-----> KEIN OBJEKT GEFUNDEN !!!");
			}
			
		}

		private void ProcessPendingList()
		{
//			Console.WriteLine("		---PROCESSLIST--> Laenge PendingList           : "+pendingList.Count);
			if(PendingList.Count!=0)
			{
				ResObj resObj=(ResObj)PendingList[0];
				bool rc=false;
				while(rc=Give(resObj.Obj,resObj.NumberDesired))
				{
					if(rc)
					{
						PendingList.RemoveAt(0);
						Scheduler.RemoveResourcePendingObj(resObj);
//						Console.WriteLine("		---PROCESSLIST-TRUE-> Laenge PendingList       : "+pendingList.Count);
						if((PendingList.Count!=0))
							resObj=(ResObj)PendingList[0];
						else
							break;
					}
				}
			}
		}


    }
}
