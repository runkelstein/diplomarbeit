using System;
using System.Collections.Generic;
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
        private bool ignoreBlock;
        private int bracketCounter;

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
			// TODO: F�gen Sie hier die Konstruktorlogik hinzu
			//
			lines = new ArrayList();
			methods = new ArrayList();
			externAssemblies = new ArrayList();
			fileName = file;
		}

     	/// <summary>
		/// Hier wird IL-Datei analysiert. F�r jede Zeile wird ein ILLineElement angelegt und
		/// im Array lines abgespeichert. Es wird nach bestimmten Direktiven gesucht, in diesem
		/// Fall speziell nach dem Beginn der Methoden (.method).
		/// F�r jede Methode wird ein ILMethodsElement angelegt und im Array methods abgespeichert.
		/// �ber die Methode ReadToEnd() wird die Methode analysiert.
		/// </summary>
		public void AnalyzeFile()
		{
			//StreamReader sr = new StreamReader(fileName, System.Text.Encoding.Unicode);
			StreamReader sr = new StreamReader(fileName);
			string s;
			ILLineElement lineElement;
            bracketCounter = 0;

			while ((s = sr.ReadLine()) != null)
			{
				s = s.Trim();
				lines.Add(lineElement = new ILLineElement(s));

                // Wenn ein Block ignoriert werden soll -> continue bis der Block geschlossen wurde
                if (ignoreBlock) {
                    if (s.StartsWith("{")) {
                        bracketCounter++;
                    }
                    else if(s.StartsWith("}")) {
                        bracketCounter--;
                        
                        if (bracketCounter == 0) {
                            ignoreBlock = false;
                        }
                    }
                    continue;
                }

                //skip delegates
                //TODO: Add delegates to Enhancer functionality
                if (s.StartsWith("extends [mscorlib]System.MulticastDelegate")) {
                    ignoreBlock=true;
                }


				if (s.StartsWith(".method") && !s.Contains("abstract"))
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

		    var branchCommands = new List<string>(new string[]
                    {   "br.s", "brfalse.s", "brtrue.s", "blt.s", "bgt.s", "bge.s", "ble.s", "beq.s", "leave.s",
		                "blt.un.s", "ble.un.s", "bgt.un.s", "bge.un.s", "bne.un.s" 
                    });

			for(int j=0; j<lines.Count; j++)
			{
                var le = (ILLineElement)lines[j];
                if(!branchCommands.TrueForAll((value) => le.Line.IndexOf(value)<0))
                {
                    var tokens = le.Line.Split(new char[] { ' ' });
                    for (int i = 0; i < tokens.Length; i++)
                    {
                        if (branchCommands.Contains(tokens[i]))
                            tokens[i] = tokens[i].Substring(0, tokens[i].Length - 2);
                    }

                    le.Line = String.Join(" ", tokens, 0, tokens.Length);
                    lines[j] = le;
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