using System;
using System.IO;
using System.Collections;

namespace Enhancer
{
	/// <summary>
	/// Oberste Klasse der Hierarchie des IL-Baumes, der bei der Analyse erstellt wird.
	/// </summary>
	public class ILFile
	{
		private ArrayList lines;
		private ArrayList methods;
		private ArrayList externAssemblies;
		private string fileName;

		/// <summary>
		/// Alle Zeilen der IL-Datei.
		/// </summary>
		public ArrayList Lines
		{
			get{return lines;}
		}

		/// <summary>
		/// Alle Methoden der IL-Datei.
		/// </summary>
		public ArrayList Methods
		{
			get{return methods;}
		}

		/// <summary>
		/// Externe Assemblies.
		/// </summary>
		public ArrayList ExternAssemblies
		{
			get{return externAssemblies;}
		}

		/// <summary>
		/// Konstruktor.
		/// </summary>
		/// <param name="file">Name der IL-Datei</param>
		public ILFile(string file)
		{
			//
			// TODO: Fügen Sie hier die Konstruktorlogik hinzu
			//
			lines = new ArrayList();
			methods = new ArrayList();
			externAssemblies = new ArrayList();
			fileName = file;
		}

		/// <summary>
		/// Hier wird IL-Datei analysiert. Für jede Zeile wird ein ILLineElement angelegt und
		/// im Array lines abgespeichert. Es wird nach bestimmten Direktiven gesucht, in diesem
		/// Fall speziell nach dem Beginn der Methoden (.method).
		/// Für jede Methode wird ein ILMethodsElement angelegt und im Array methods abgespeichert.
		/// Über die Methode ReadToEnd() wird die Methode analysiert.
		/// </summary>
		public void AnalyzeFile()
		{
			//StreamReader sr = new StreamReader(fileName, System.Text.Encoding.Unicode);
			StreamReader sr = new StreamReader(fileName);
			string s;
			ILLineElement lineElement;
			while ((s = sr.ReadLine()) != null)
			{
				s = s.Trim();
				lines.Add(lineElement = new ILLineElement(s));
				if (s.StartsWith(".method"))
				{
					ILMethodElement methodElement = new ILMethodElement(lineElement, lines);
					methodElement.ReadToEnd(sr);
					methods.Add(methodElement);
				}
				if (s.StartsWith(".assembly extern"))
				{
					ILAssemblyExternElement assextElement = new
						ILAssemblyExternElement(lineElement, lines);
					assextElement.ReadToEnd(sr);
					externAssemblies.Add(assextElement);
				}

				//... weitere Elemente
			}
			sr.Close();
		}

		/// <summary>
		/// Entfernt die Shortvarianten der branch-Befehle und ersetzt diese
		/// durch die normalen Befehle (br.s --> br)
		/// </summary>
		public void RemoveShortOffset()
		{
			string[] tokens;
			ILLineElement le;

			for(int j=0; j<lines.Count; j++)
			{
				le=(ILLineElement)lines[j];
				if(	(le.Line.IndexOf("br.s")>-1) || 
					(le.Line.IndexOf("brfalse.s")>-1) || 
					(le.Line.IndexOf("brtrue.s")>-1) ||
					(le.Line.IndexOf("blt.s")>-1) ||
					(le.Line.IndexOf("bgt.s")>-1) ||
					(le.Line.IndexOf("bge.s")>-1) ||
					(le.Line.IndexOf("ble.s")>-1) ||
					(le.Line.IndexOf("beq.s")>-1) ||
					(le.Line.IndexOf("leave.s")>-1))
				{
					tokens = le.Line.Split(new char[]{' '});
					for(int i=0; i<tokens.Length; i++)
					{
						if(tokens[i].Equals("br.s"))
						{
							tokens[i]=tokens[i].Substring(0,2);
						}
						if(tokens[i].Equals("brfalse.s"))
						{
							tokens[i]=tokens[i].Substring(0,7);
						}
						if(tokens[i].Equals("brtrue.s"))
						{
							tokens[i]=tokens[i].Substring(0,6);
						}
						if(tokens[i].Equals("blt.s"))
						{
							tokens[i]=tokens[i].Substring(0,3);
						}
						if(tokens[i].Equals("bgt.s"))
						{
							tokens[i]=tokens[i].Substring(0,3);
						}
						if(tokens[i].Equals("bge.s"))
						{
							tokens[i]=tokens[i].Substring(0,3);
						}
						if(tokens[i].Equals("ble.s"))
						{
							tokens[i]=tokens[i].Substring(0,3);
						}
						if(tokens[i].Equals("beq.s"))
						{
							tokens[i]=tokens[i].Substring(0,3);
						}
						if(tokens[i].Equals("leave.s"))
						{
							tokens[i]=tokens[i].Substring(0,5);
						}
					}
					le.Line=String.Join(" ",tokens,0,tokens.Length);
					lines[j]=le;
				}
			}
		}


		/// <summary>
		/// Schreibt den erweiterten Code in die IL-Datei.
		/// </summary>
		public void Write()
		{
			StreamWriter sw = new StreamWriter(fileName);//, false, System.Text.Encoding.UTF8);
			foreach(ILLineElement le in lines)
			{
				sw.WriteLine(le.Line);
			}
			sw.Flush();
			sw.Close();
		}
	}
}
