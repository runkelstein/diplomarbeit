using System;

namespace SimNet
{
	/// <summary>
	/// In dieser Klasse werden die Objekte gekapselt, die auf Ressourcen warten.
	/// </summary>
	public class ResObj
	{
		private object obj;
		private int numberDesired;
		private double timePeroid;
		private double priority;

		/// <summary>
		/// Property des Member obj.
		/// Hier wird das Objekt gespeichert, welches auf Ressourcen wartet.
		/// </summary>
		public object Obj
		{
			get{return obj;}
			set{obj=value;}
		}

		/// <summary>
		/// Property des Member numberDesired.
		/// Anzahl der angeforderten Ressourcen.
		/// </summary>
		public int NumberDesired
		{
			get{return numberDesired;}
			set{numberDesired=value;}
		}
	
		/// <summary>
		/// Property des Member timePeroid.
		/// Zeiteinheiten, die max. auf Ressourcen gewartet werden sollen.
		/// </summary>
		public double TimePeroid
		{
			get{return timePeroid;}
			set{timePeroid=value;}
		}

		/// <summary>
		/// Property des Member priority.
		/// Priorität der Anforderung.
		/// </summary>
		public double Priority
		{
			get{return priority;}
			set{priority=value;}
		}


		/// <summary>
		/// Konstruktor.
		/// Setzen der Defaultwerte der Member.
		/// </summary>
		public ResObj()
		{
			obj = null;
			numberDesired=0;
			timePeroid=Double.NaN;
			priority=0.0;
		}
	}
}
