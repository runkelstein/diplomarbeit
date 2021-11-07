using System;
using System.IO;
using System.Collections;

namespace Enhancer
{
	/// <summary>
	/// Zusammendfassende Beschreibung für ILAssemblyExternElement.
	/// </summary>

		public class ILAssemblyExternElement
		{
			ArrayList lines;
			ILLineElement startElement;
			ILLineElement endElement;

			/// <summary>
			/// Konstruktor.
			/// </summary>
			/// <param name="startElement">Beginn des Elementes</param>
			/// <param name="lines">Zeilen der IL-Datei</param>
			public ILAssemblyExternElement(ILLineElement startElement, ArrayList lines)
			{
				this.startElement = startElement;
				this.lines = lines;
			}

			/// <summary>
			/// Analysieren des Elementes
			/// </summary>
			/// <param name="sr">Streamreader</param>
			public void ReadToEnd(StreamReader sr)
			{
				ILLineElement lineElement;
				string s;
			
				while ((s = sr.ReadLine()) != null)
				{
					s = s.Trim();
					lines.Add(lineElement = new ILLineElement(s));
					if (s == "}")
					{
						endElement = lineElement;
						break;
					}
				}
			}
		}
}
