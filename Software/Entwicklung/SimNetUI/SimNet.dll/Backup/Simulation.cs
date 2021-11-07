using System;

namespace SimNet
{
	/// <summary>
	/// Delegate zur Umsetzung der Tell-Methode
	/// </summary>
	public delegate void TellMethod(double start, double priority, params object[] list);

//	public delegate void WaitForMethod(params object[] list);

	/// <summary>
	/// Die Klasse Simulation stellt dem Nutzer alle notwendigen Funktionen zur 
	/// Verfügung, um prozessorientierte Simulationen zu Implementieren.
	/// </summary>
	public class Simulation
	{
	
		/// <summary>
		/// Konstruktor
		/// </summary>
		public Simulation()
		{
		}

		/// <summary>
		/// Gibt aktuelle Simulationszeit zurück.
		/// </summary>
		/// <returns>Simulationszeit</returns>
		public static double SimTime()
		{
			return Scheduler.SimTime;
		}

		/// <summary>
		/// Tell-Methode
		/// Hier wird ein neues Objekt vom Typ SimObj angelegt, dem dann die angegebenen Paramater entsprechend
		/// zugewiesen werden. Anschließend wird dieses Objekt zur Verarbeitung in die Schedulerliste aufgenommen.
		/// Die Umsetzung der Tell-Methode erfolgt über ein Delegate, damit der Scheduler, eben stellvertretend
		/// diese Methode zu gegebener Zeit ausführen kann. 
		/// </summary>
		/// <param name="tm">Delegate</param>
		/// <param name="start">Startzeit, Angabe der Zeiteinheiten die vergehen bis Methode gestartet wird</param>
		/// <param name="priority">Priorität</param>
		/// <param name="list">Parameter für diese Methode</param>
		public static void Tell(TellMethod tm, double start, double priority, object[] list)
		{	
			SimObj obj = new SimObj();
			obj.Method = tm;
			obj.FutureTime = start + SimTime();
			obj.Priority = priority;
			obj.Params=list;
			Scheduler.AddNewSchedObj(obj);
		}

		
//		public static void Wait(double t)
//		{
//			Console.WriteLine("In Simulation.Wait(), Wait Time: "+t);
//			SimObj obj = Scheduler.GetCurrentSchedObj();
//			obj.FutureTime = Scheduler.SimTime + t;
//			Scheduler.SortSchedObjects();
//		}

		/// <summary>
		/// Wait dient zum Warten einer bestimmten Zeit t. Die aufrufende Methode suspendiert also ihre Arbeit 
		/// für einen gewissen Zeitraum.
		/// </summary>
		/// <param name="t">Zeit, Simulationseinheiten</param>
		/// <param name="interrupt">Interrupt, wenn aufrufende Methode während Warten unterbrochen wird. 
		/// Zur Auswertung muss nach dem Wait eine IF-Anweisung folgen.</param>
		public static void Wait(double t, ref bool interrupt)
		{
//			Console.WriteLine("		===Simulation.Wait()========================>, Wait Time: "+t);
			
			SimObj obj = Scheduler.GetCurrentSchedObj(); //aktuelles Objekt aus Liste holen
			obj.FutureTime = Scheduler.SimTime + t;	//Futuretime neu setzen
			obj.Interrupt = interrupt;	//Interrupt
			Scheduler.SortSchedObjects(); //Liste neu sortieren
		}

		
		/// <summary>
		/// WaitFor bedeutet, das das aktuelle Objekt seine Arbeit suspendiert und solange wartet 
		/// bis die aufgerufene Methode tm (in diesem Fall eine Tell-Methode) beendet ist.
		/// </summary>
		/// <param name="tm">Tell-Methode, die ausgeführt und auf die gewartet wird</param>
		/// <param name="t">Zeit t. Hiermit soll es möglich sein, das die aufgerufene Methode erst
		/// zu einem späteren Zeitpunkt gestartet wird.</param>
		/// <param name="priority">Priorität der Methode</param>
		/// <param name="list">Parameter der Tell-Methode</param>
		/// <param name="interrupt">Interrupt, wenn aufrufende Methode während Warten unterbrochen wird. 
		/// Zur Auswertung muss nach dem Wait eine IF-Anweisung folgen.</param>
		public static void WaitFor(TellMethod tm, double t, double priority, object[] list, ref bool interrupt)
		{
			SimObj obj = new SimObj();		//Anlegen eines neuen Objektes
			obj.Method = tm;				//Tell-Methode
			obj.FutureTime = SimTime()+t;	//Zeit, Methode kann sofort oder später gestartet werden
			obj.Priority = priority;		//Priorität der Tell-Methode
			obj.Params = list;				//Parameter der Tell-Methode
			obj.Interrupt = interrupt;		//Interrupt
			
			//Aktuelles Objekt aus der Liste holen, ist Objekt das Arbeit suspendieren muss
			SimObj currObj = Scheduler.GetCurrentSchedObj();
			currObj.Waitfor = obj;				//Eintragen des Objektes auf das es warten muss
			Scheduler.AddWaitForObj(currObj);	//Objekt in Liste der wartenden Objekte aufnehmen
			Scheduler.RemoveSchedObj();			//und aus Schedulerliste entfernen
			Scheduler.AddNewSchedObj(obj);		//neues Objekt in Schedulerliste aufnehmen
			Scheduler.SortSchedObjects();		//Liste neu sortieren		
		}


		/// <summary>
		/// Waitfor für das Anfordern von Ressourcen. Es wird die Give-Methode der Klasse ResourceObj
		/// aufgerufen.
		/// </summary>
		/// <param name="gm">Give-Methode, wird ausgeführt und auf beenden gewartet</param>
		/// <param name="obj">Objekt, welches Ressourcen anfordert</param>
		/// <param name="numberDesired">Anzahl der Ressourcen</param>
		/// <param name="interrupt">Interrupt</param>
		public static void WaitFor(GiveMethod gm, object obj, int numberDesired, ref bool interrupt)
		{
			bool rc = gm(obj,numberDesired);
			if(!rc)
			{
				//Aktuelles Objekt aus der Liste holen, ist Objekt das Arbeit suspendieren muss
				SimObj currObj = Scheduler.GetCurrentSchedObj();
				currObj.Waitfor = obj;				//Eintragen des Objektes auf das es warten muss
				Scheduler.AddWaitForObj(currObj);	//Objekt in Liste der wartenden Objekte aufnehmen
				Scheduler.RemoveSchedObj();			//und aus Schedulerliste entfernen	
			}
		}

		/// <summary>
		/// Interrupt wird verwendet um eine Methode eines bestimmten Objektes zu unterbrechen.
		/// Es wird die erste gefundene Methode unterbrochen!
		/// </summary>
		/// <param name="obj">Objekt</param>
		/// <param name="method">Methodenname</param>
		public static void Interrupt(object obj, string method)
		{
//			Console.WriteLine("In Simulation.Interrupt()");

			foreach (SimObj simObj in Scheduler.GetSchedObjects())
			{
				Console.WriteLine( ((TellMethod)simObj.Method).Target.ToString() );

				if(obj.Equals( ((TellMethod)simObj.Method).Target ))
				{
					Console.WriteLine( ((TellMethod)simObj.Method).Method.Name );

					if( (((TellMethod)simObj.Method).Method.Name).Equals(method))
					{
						simObj.Interrupt=true;
						Scheduler.AddInterruptObj(simObj);
						break;
					}
				}
			}
		}

		/// <summary>
		/// Hier werden alle aktiven Methoden eines bestimmten Objektes unterbrochen.
		/// </summary>
		/// <param name="obj">Objekt</param>
		public static void InterruptAll(object obj)
		{
//			Console.WriteLine("In Simulation.InterruptAll()"); 

			foreach (SimObj simObj in Scheduler.GetSchedObjects())
			{
				Console.WriteLine( ((TellMethod)simObj.Method).Target.ToString() );

				if(obj.Equals( ((TellMethod)simObj.Method).Target ))
				{
					simObj.Interrupt=true;
					Scheduler.AddInterruptObj(simObj);
				}
			}
		}

		/// <summary>
		/// Starten der Simulation
		/// </summary>
		public static void StartSimulation()
		{
			Scheduler.Start();
		}

		/// <summary>
		/// Stoppen der Simulation
		/// </summary>
		public static void StopSimulation()
		{
			Console.WriteLine("In Simulation.StopSimulation()");
			Scheduler.Stop();
			while(Scheduler.GetSchedObjects().Count!=0)
			{
				Scheduler.RemoveSchedObj();
			}
		}
	}
}
