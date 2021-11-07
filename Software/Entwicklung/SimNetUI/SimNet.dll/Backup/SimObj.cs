using System;

namespace SimNet
{
	/// <summary>
	/// In dieser Klasse werden die Aktivitäten gekapselt.
	/// Abgespeichert wird die TELL-Methode, sowie deren
	/// Parameter (Startzeit, Priorität und die Parameterliste).
	/// Weiterhin werden in dieser Klasse die lokalen Variablen
	/// zwischengespeichert. Ebenso existiert ein Member zum
	/// abspeichern des aktuellen Labels zum Wiedereintritt in
	/// die Methode. Ausserdem existiert ein Interrupt-Flag falls 
	/// die Methode unterbrochen wurde. Weiterhin gibt es noch ein
	/// Member zum abspeichern des Objektes welches mittels
	/// WAITFOR gestartet wurde. 
	/// </summary>
	public class SimObj
	{
		private object method;		//Tell-Methode, Delegate
		private string label;		//Label zum Wiedereintritt
		private object[] locals;	//lokale Variablen
		private object[] par;		//nutzerspezifische Parameterliste der Methode
		private double priority;	//Priorität
		private double futureTime;	//Startzeit
		private bool interrupt;		//Interrupt
		private object waitfor;		//Objekt auf das gewartet werden muss

		/// <summary>
		/// TELL-Methode
		/// </summary>
		public object Method
		{
			get{return method;}
			set{method=value;}
		}

		/// <summary>
		/// Lokale Variablen
		/// </summary>
		public object[] Locals
		{
			get{return locals;}
			set{locals=value;}
		}

		/// <summary>
		/// nutzerspezifische Parameterliste
		/// </summary>
		public object[] Params
		{
			get{return par;}
			set{par=value;}
		}

		/// <summary>
		/// aktuelles Label zum Wiedereintritt in die Methode
		/// </summary>
		public string Label
		{
			get{return label;}
			set{label=value;}
		}

		/// <summary>
		/// Priorität der Methode
		/// </summary>
		public double Priority
		{
			get{return priority;}
			set{priority=value;}
		}

		/// <summary>
		/// Startzeit der Methode
		/// </summary>
		public double FutureTime
		{
			get{return futureTime;}
			set{futureTime=value;}
		}

		/// <summary>
		/// Interrupt-Flag, wird auf true gesetzt wenn Methode unterbrochen wurde.
		/// </summary>
		public bool Interrupt
		{
			get{return interrupt;}
			set{interrupt=value;}
		}

		/// <summary>
		/// Objekt auf das gewartet wird. Dieses Objekt wurde mittels WAITFOR gestartet.
		/// </summary>
		public object Waitfor
		{
			get{return waitfor;}
			set{waitfor=value;}
		}

		/// <summary>
		/// Konstruktur.
		/// Initialisierung der Member.
		/// </summary>
		public SimObj()
		{
			method = null;
			label = "";
			locals = null;
			par = null;
			priority = 0.0;
			futureTime = 0.0;
			interrupt = false;
			waitfor = null;
		}
	}
}
