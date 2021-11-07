using System;
using System.IO;
using System.Collections;

namespace Enhancer
{
	/// <summary>
	/// Zusammendfassende Beschreibung f�r ILLineElement.
	/// </summary>
	public class ILLineElement
	{
		private string line;

		/// <summary>
		/// String der Zeile
		/// </summary>
		public string Line
		{
			get { return line; }
			set { line = value; } 
		}

		/// <summary>
		/// Konstruktor
		/// </summary>
		/// <param name="s">String der Zeile</param>
		public ILLineElement(string s)
		{
			//
			// TODO: F�gen Sie hier die Konstruktorlogik hinzu
			//
			line=s;
		}
	}
}
