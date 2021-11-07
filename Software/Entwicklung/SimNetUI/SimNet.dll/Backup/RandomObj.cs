using System;

namespace SimNet
{
	/// <summary>
	/// Die Klasse RandomObj dient zur Erzeugung von verteilten Zufallszahlen.
	/// Hierbei sind viele Verteilungsfunktionen integriert wurden.
	/// </summary>
	public class RandomObj
	{
		private int currentSeed;
		private int originalSeed;
		private Random random; 

		/// <summary>
		/// Gibt den Seed zurück, der bei der Initialisierung gesetzt wurde.
		/// </summary>
		public int OriginalSeed
		{
			get{return originalSeed;}
		}

		/// <summary>
		/// Gibt aktuell verwendeten Seed zurück
		/// </summary>
		public int CurrentSeed
		{
			get{return currentSeed;}
		}

		/// <summary>
		/// Konstruktor
		/// Hier wird der eine Instanz der Klasse Random erzeugt.
		/// Der Seed wird in Abhängigkeit der Systemzeit erzeugt.
		/// </summary>
		public RandomObj()
		{
			originalSeed = ((int)DateTime.Now.Ticks); 
			random = new Random(originalSeed);
		}

		/// <summary>
		/// Einen neuen Startwert zum Generieren der Zufallszahlen setzen.
		/// </summary>
		/// <param name="newSeed">Startwert</param>
		public void SetSeed(int newSeed)
		{
			currentSeed = newSeed;
			random = new Random(currentSeed);
		}

		/// <summary>
		/// Liefert eine gleichverteilte Zufallszahl vom Typ Integer im angegebenen Intervall.
		/// </summary>
		/// <param name="min">Untere Grenze des Intervalls</param>
		/// <param name="max">Obere Grenze des Intervalls</param>
		/// <returns>gleichverteilte Zufallszahl</returns>
		public int UniformInt(int min, int max)
		{
			int randomValue=(int)(min+RandomValue()*(max-min));
			return randomValue;
		}

		/// <summary>
		/// Liefert eine gleichverteilte Zufallszahl von Type Double im angegebenen Intervall.
		/// </summary>
		/// <param name="min">Untere Grenze des Intervalls</param>
		/// <param name="max">Obere Grenze des Intervalls</param>
		/// <returns>gleichverteilte Zufallszahl</returns>
		public double UniformDouble(double min, double max)
		{
			return min+RandomValue()*(max-min);
		}

		/// <summary>
		/// Liefert eine dreiecksverteilte Zufallszahl.
		/// </summary>
		/// <param name="min">Unterer Wert</param>
		/// <param name="mode">Mittlerer Wert</param>
		/// <param name="max">Oberer Wert</param>
		/// <returns>dreiecksverteilte Zufallszahl</returns>
		public double Triangular(double min, double mode, double max)
		{
			double x=0.0, y=RandomValue();
			if((y>=0.0) && (y<=((mode-min)/(max-min))))
				x=min+Math.Pow(y*(mode-min)*(max-min),0.5);
			else 
				x=max-Math.Pow((max-mode)*(max-min)*(1-y),0.5);
			return x;
		}

		/// <summary>
		/// Liefert eine normalverteilte Zufallszahl.
		/// </summary>
		/// <param name="a">Erwartungswert</param>
		/// <param name="b">Standardabweichung</param>
		/// <returns>normalverteilte Zufallszahl</returns>
		public double Normal(double a, double b)
		{ // a = Erwartungswert
			double x=0.0;                  // b = Standardabweichung
			for(int i=1; i<=12; i++)
				x+=RandomValue();
			return (x-6.0)*b+a;
		}

		/// <summary>
		/// Liefert eine exponentialverteilte Zufallszahl.
		/// </summary>
		/// <param name="a">Erwartungswert</param>
		/// <returns>exponentialverteilte Zufallszahl</returns>
		public double Exponential(double a)
		{ 
			return -a*Math.Log(RandomValue());
		}

		/// <summary>
		/// Liefert eine Zufallszahl nach Weibullverteilung
		/// </summary>
		/// <param name="a">Skalenparameter</param>
		/// <param name="b">Formparameter</param>
		/// <returns>weibullverteilte Zufallszahl</returns>
		public double Weibull(double a, double b)
		{ 
			if(b!=0.0)return a*Math.Pow(-Math.Log(RandomValue()),1/b); 
			else return 0.0;
		}

		/// <summary>
		/// Liefert eine Zufallszahl nach Erlangverteilung
		/// </summary>
		/// <param name="a">Erwartungswert</param>
		/// <param name="b">Anzahl Phasen</param>
		/// <returns>nach Erlang verteile Zufallszahl</returns>
		public double Erlang(double a, int b)
		{ 
			double x=0.0;				
			for(int i=1; i<=b; i++)
				x+=Math.Log(RandomValue());
			if(b>0) return -a*x/((double)b);
			else return 0.0;
		}

		/// <summary>
		/// Liefert eine log-normalverteilte Zufallszahl
		/// </summary>
		/// <param name="a">Erwartungswert</param>
		/// <param name="b">geom. Dispersion</param>
		/// <returns>log-normalverteilte Zufallszahl</returns>
		public double LgNormal(double a, double b)
		{   
			return a*Math.Pow(b, Normal(0.0,1.0)-Math.Log(b)/2.0);
		}

		/// <summary>
		/// Liefert eine Zufallszahl vom Typ Double im Bereich zwischen 0.0 und 1.0
		/// </summary>
		/// <returns>Zufallszahl</returns>
		public double RandomValue()
		{
			double randomValue=random.NextDouble();

			return randomValue;
		}

		/// <summary>
		/// Generiert einen Startwert in Abhängigkeit von der Systemzeit.
		/// </summary>
		/// <returns>Startwert</returns>
		public int GenerateSeedBySystemTime()
		{
			int seed=((int)DateTime.Now.Ticks);
			return seed;
		}
	}
}
