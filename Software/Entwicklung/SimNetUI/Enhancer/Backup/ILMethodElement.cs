using System;
using System.IO;
using System.Collections;

namespace Enhancer
{
	/// <summary>
	/// Zusammendfassende Beschreibung für ILMethodElement.
	/// </summary>
	public class ILMethodElement
	{
		private string name;
		private ArrayList lines;
		private ILLineElement startElement;
		private ILLineElement maxStackElement;
		private ILLineElement startBracketElement;
		private ILLineElement endElement;
		private ILLineElement kindOfMethod;
		private ILLineElement returnElement;
		private ArrayList attributes;
		private ArrayList typesOfLocalVar;
		private ArrayList namesOfLocalVar;
		private int brackets;
		private ILLineElement lastLocalInitElement;
		private ArrayList waitCalls;
		

		/// <summary>
		/// Konstruktor.
		/// </summary>
		/// <param name="startElement">Methodenanfang</param>
		/// <param name="lines">Zeilen der IL-Datei</param>
		public ILMethodElement(ILLineElement startElement, ArrayList lines)
		{
			//
			// TODO: Fügen Sie hier die Konstruktorlogik hinzu
			//
			this.startElement = startElement; 
			this.lines=lines;
			attributes = new ArrayList();
			typesOfLocalVar = new ArrayList();
			namesOfLocalVar = new ArrayList();
			waitCalls = new ArrayList();
			kindOfMethod=new ILLineElement("");
			lastLocalInitElement=new ILLineElement("");
		}

		/// <summary>
		/// Liste mit Typen der lokalen Variablen.
		/// </summary>
		public ArrayList TypesOfLocalVar
		{
			get{return typesOfLocalVar;}
			set{typesOfLocalVar=value;}
		}

		/// <summary>
		/// Liste mit Namen der lokalen Variablen.
		/// </summary>
		public ArrayList NamesOfLocalVar
		{
			get{return namesOfLocalVar;}
		}
		
		/// <summary>
		/// Liste mit Wait- bzw. Waitfor-Aufrufen
		/// </summary>
		public ArrayList WaitCalls
		{
			get{return waitCalls;}
		}

		/// <summary>
		/// Deklaration der Methode
		/// </summary>
		public string Declaration
		{
			get
			{
				string s = string.Empty;
				int indx = lines.IndexOf(this.startElement);
				ILLineElement le = (ILLineElement)lines[indx];
				while (le != this.startBracketElement)
				{
					s += le.Line + " ";
					le = (ILLineElement) lines[++indx];
				}
				return s;
			}
		}

		/// <summary>
		/// Name der Methode
		/// </summary>
		public string Name
		{
			get
			{
				if (name == null)
				{
					string[] tokens = this.Declaration.Split(new char[]{' '});
					string token = null;
					int pos = 0;
					foreach(string tok in tokens)
					{
						if ((pos = tok.IndexOf("(")) > -1)
						{
							token = tok;
							break;
						}
					}
					if (token == null)
						throw new Exception("...");
					name = token.Substring(0, pos);
				}
				return name;
			}
		}

		/// <summary>
		/// Zeile mit maxstack-Element
		/// </summary>
		public ILLineElement MaxStackElement
		{
			get
			{
				if (maxStackElement == null)
				{
					int indx = lines.IndexOf(this.startBracketElement);
					if (indx == -1)
						throw new Exception("...");
					ILLineElement le;
					while ((le = (ILLineElement) lines[++indx]) != this.endElement)
					{
						if (le.Line.StartsWith(".maxstack"))
						{
							maxStackElement = le;
							break;
						}
					}
					if (maxStackElement == null)
						throw new Exception("...");
				}
				return maxStackElement;
			}
		}

		/// <summary>
		/// Handelt ist es im eine ...
		/// </summary>
		public bool IsPInvoke
		{
			get
			{
				return startElement.Line.IndexOf("pinvokeimpl") > -1;
			}
		}

		/// <summary>
		/// Letztes Element der lokalen Variablen
		/// </summary>
		public ILLineElement LastLocalInitElement
		{
			get{return lastLocalInitElement;}
			set{lastLocalInitElement=value;}
		}

		/// <summary>
		/// Letztes Element der Methode (letzte Zeile). Abschließende Klammer ( } ).
		/// </summary>
		public ILLineElement EndElement
		{
			get{return endElement;}
		}

		/// <summary>
		/// Zeile mit return-Anweisung
		/// </summary>
		public ILLineElement ReturnElement
		{
			get{return returnElement;}
		}

		/// <summary>
		/// Art der Methode (z.B. TELL-Methode)
		/// </summary>
		public ILLineElement KindOfMethod
		{
			get{return kindOfMethod;}
		}
		

		/// <summary>
		/// Analyse der Methode.
		/// </summary>
		/// <param name="sr">Streamreader der Datei</param>
		public void ReadToEnd(StreamReader sr)
		{
			brackets = 0; 
			string s;
			ILLineElement lineElement;
			while ((s = sr.ReadLine()) != null)
			{
				s = s.Trim();
				lines.Add(lineElement = new ILLineElement(s));
				
				//Öffnende Klammern zählen
				if (s.StartsWith("{"))
				{
					brackets++;
					if (brackets==1) //Beginn der Methode
					{
						startBracketElement = lineElement;
					}
				}
				//Schließende Klammer wieder zurückrechnen
				if (s.StartsWith("}"))
				{
					brackets--;;
					if (brackets==0) //Ende der Methode erreicht
					{
						endElement=lineElement;
						return;
					}
				}
				//Analyse der Attribute
				if (s.StartsWith(".custom instance"))
				{
					attributes.Add(lineElement);
					string[] tokens = lineElement.Line.Split(new char[]{' '});
					int pos = 0;
					foreach(string tok in tokens)
					{
						if ((pos = tok.IndexOf(".")) > -1)
						{
							//TELL-Methode
							if (String.Compare(tok.Substring(pos+1,4),"TELL")==0)
							{
								kindOfMethod.Line="TELL";
							}
						}
					}
				}
				//Analyse der lokalen Variablen
				if (s.StartsWith(".locals init"))
				{
					bool localsInit=false;
					bool localsInitWithIndex=false;
					string tmpstr=String.Empty;
					
					
					string[] tokens = lineElement.Line.Split(new char[]{' '});
					int pos = 0;
					
					foreach(string tok in tokens)
					{		
						if ((pos = tok.IndexOf("(")) > -1)
						{
							localsInit=true;
							
							//wenn lokale Variablen mit Index verwendet werden
							if ((pos = tok.IndexOf("[0]")) > -1)
							{
								localsInitWithIndex=true;
							}
							
							//Analyse der ersten lokalen Variable ohne Index, jeweils Typ und Name der Variable abspeichern
							if(!localsInitWithIndex)
							{
								if(tokens[2].Equals("(class"))
								{
									typesOfLocalVar.Add(tok.Substring(pos+1)+" "+tokens[3]);
									tmpstr=tokens[4];
									tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
									namesOfLocalVar.Add(tmpstr);
								}
								else if (tokens[2].Equals("(unsigned"))
								{
									typesOfLocalVar.Add(tok.Substring(pos+1)+" "+tokens[3]);
									tmpstr=tokens[4];
									tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
									namesOfLocalVar.Add(tmpstr);
								}
								else if (tokens[2].Equals("(valuetype"))
								{
									typesOfLocalVar.Add(tok.Substring(pos+1)+" "+tokens[3]);
									tmpstr=tokens[4];
									tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
									namesOfLocalVar.Add(tmpstr);
								}
								else
								{
									typesOfLocalVar.Add(tok.Substring(pos+1));
									tmpstr=tokens[3];
									tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
									namesOfLocalVar.Add(tmpstr);
								}
							}
							//Analyse der ersten lokalen Variable mit Index, jeweils Typ und Name der Variable abspeichern
							else
							{
								if(tokens[3].Equals("class"))
								{
									typesOfLocalVar.Add(tokens[3]+" "+tokens[4]);
									tmpstr=tokens[5];
									tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
									namesOfLocalVar.Add(tmpstr);
								}
								else if (tokens[3].Equals("unsigned"))
								{
									typesOfLocalVar.Add(tokens[3]+" "+tokens[4]);
									tmpstr=tokens[5];
									tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
									namesOfLocalVar.Add(tmpstr);
								}
								else if (tokens[3].Equals("valuetype"))
								{
									typesOfLocalVar.Add(tokens[3]+" "+tokens[4]);
									tmpstr=tokens[5];
									tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
									namesOfLocalVar.Add(tmpstr);
								}
								else
								{
									typesOfLocalVar.Add(tokens[3]);
									tmpstr=tokens[4];
									tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
									namesOfLocalVar.Add(tmpstr);
								}
							}
						}
						//nur eine lokale Variable ?
						if ((pos = tok.IndexOf(")")) > -1)
						{
							lastLocalInitElement = lineElement;
							localsInit=false;
						}
					}
					//mehrere lokale Variablen vorhanden
					while (localsInit)
					{
						s = sr.ReadLine();
						s = s.Trim();

						lines.Add(lineElement = new ILLineElement(s));

						tokens = lineElement.Line.Split(new char[]{' '});
						//Analyse ohne Index, jeweils Typ und Name der Variablen abspeichern
						if(!localsInitWithIndex)
						{
							if(tokens[0].Equals("class"))
							{
								typesOfLocalVar.Add(tokens[0]+" "+tokens[1]);
								tmpstr=tokens[2];
								tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
								namesOfLocalVar.Add(tmpstr);
							}
							else if (tokens[0].Equals("unsigned"))
							{
								typesOfLocalVar.Add(tokens[0]+" "+tokens[1]);
								tmpstr=tokens[2];
								tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
								namesOfLocalVar.Add(tmpstr);
							}
							else if (tokens[0].Equals("valuetype"))
							{
								typesOfLocalVar.Add(tokens[0]+" "+tokens[1]);
								tmpstr=tokens[2];
								tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
								namesOfLocalVar.Add(tmpstr);
							}
							else
							{
								typesOfLocalVar.Add(tokens[0]);
								tmpstr=tokens[1];
								tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
								namesOfLocalVar.Add(tmpstr);
							}
						}
						//Analyse mit Index, jeweils Typ und Name der Variablen abspeichern
						else
						{
							if(tokens[1].Equals("class"))
							{
								typesOfLocalVar.Add(tokens[1]+" "+tokens[2]);
								tmpstr=tokens[3];
								tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
								namesOfLocalVar.Add(tmpstr);
							}
							else if (tokens[1].Equals("unsigned"))
							{
								typesOfLocalVar.Add(tokens[1]+" "+tokens[2]);
								tmpstr=tokens[3];
								tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
								namesOfLocalVar.Add(tmpstr);
							}
							else if (tokens[1].Equals("valuetype"))
							{
								typesOfLocalVar.Add(tokens[1]+" "+tokens[2]);
								tmpstr=tokens[2];
								tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
								namesOfLocalVar.Add(tmpstr);
							}
							else
							{
								typesOfLocalVar.Add(tokens[1]);
								tmpstr=tokens[2];
								tmpstr=tmpstr.Substring(0,tmpstr.Length-1);
								namesOfLocalVar.Add(tmpstr);
							}
						}

						pos = 0;
						foreach(string tok in tokens)
						{
							if ((pos = tok.IndexOf(")")) > -1)
							{
								lastLocalInitElement = lineElement;
								localsInit=false;
							}
						}
					}
				}
				//Wait oder WaitFor-Aufruf, Speichern der Zeile
				if (s.IndexOf("[SimNet]SimNet.Simulation::Wait")>-1)
				{
					//WAIT
					waitCalls.Add(lineElement);
				}
				//Return-Element, Speichern der Zeile
				if (s.IndexOf("ret")>-1)
				{
					//RETURN
					returnElement = lineElement;
				}

			
			}
		}

		/// <summary>
		/// Anpassen der Größe von maxstack, Stapeltiefe.
		/// </summary>
		/// <param name="maxStack">Größe des Stack, Stapeltiefe</param>
		public void AdjustMaxStack(int maxStack)
		{
			ILLineElement el = this.MaxStackElement;
			if (el == null)
				return;
			int oldVal = int.Parse(el.Line.Substring(10));
			int newVal = System.Math.Max(maxStack, oldVal);
			el.Line = ".maxstack " + newVal.ToString();
		}

	}
}
