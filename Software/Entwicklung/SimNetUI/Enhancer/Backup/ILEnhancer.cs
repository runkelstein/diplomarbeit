using System;
using System.IO;
using System.Collections;

namespace Enhancer
{
	/// <summary>
	/// Zusammendfassende Beschreibung für Class1.
	/// </summary>
	class Class1
	{
		/// <summary>
		/// Der Haupteinstiegspunkt für die Anwendung.
		/// </summary>
		[STAThread]
		static void Main(string[] args)
		{
			ILEnhancer te = new ILEnhancer(args);
			Console.ReadLine();
		}	
	}

	class ILEnhancer
	{
		private ILSimNetExtensions ext;

		public ILEnhancer(string[] args)
		{
			ext = new ILSimNetExtensions();
			Enhance(args);
		}

		private void Enhance(string[] args)
		{
			string dllName = args[0];
			ILDasm dasm = new ILDasm();
			string ilFileName = Path.ChangeExtension(dllName, ".il");
			dasm.DoIt(dllName, ilFileName);
			ILFile ilFile = new ILFile(ilFileName);
			ilFile.AnalyzeFile();
			ilFile.RemoveShortOffset();
			EnhanceMethods(ilFile);
			ilFile.Write();
			ILAsm asm = new ILAsm();
			asm.DoIt(ilFileName, args[0], false);
		}

		private void EnhanceMethods(ILFile ilFile)
		{
			foreach(ILMethodElement me in ilFile.Methods)
			{
				int indx=0;
				string tmpStr;
				string[] tokens;
				bool checkWait=true;
				bool checkTryCatch=true;
				bool waitWithTryCatch=false;
				ILLineElement ile; 

				if (me.IsPInvoke)
					continue;
				// Sicherstellen, dass .maxstack >= 3
				me.AdjustMaxStack(3);
				// Anfang der Funktion ist direkt nach .maxstack
				
				ILLineElement km = me.KindOfMethod;
				if(me.KindOfMethod!=null)
				{
					if(me.KindOfMethod.Line=="TELL")
					{
						//Initialisieren der Erweiterungen
						if(me.WaitCalls.Count!=0)
						{
							ArrayList jumps = new ArrayList();
							ArrayList waits = new ArrayList();
							for(int i=0;i<me.WaitCalls.Count;i++)
							{
								jumps.Add("SIM_JUMP_"+i);
								waits.Add("SIM_WAIT_"+i);
							}
							jumps.Add(StripLabel(me.ReturnElement.Line));
							ext.SetLabels(jumps,waits);
							ext.InitCheckLabelExtension(me.WaitCalls.Count);
							ext.InitLocalVarExtension();

							if(me.TypesOfLocalVar.Count!=0)
							{
								for(int i=0;i < me.WaitCalls.Count;i++)
								{
									//Index neu setzen
									ile = (ILLineElement)me.WaitCalls[i];
									indx = ilFile.Lines.IndexOf(ile);
									indx--;
									tmpStr = ((ILLineElement)ilFile.Lines[indx]).Line;
									if(tmpStr.IndexOf("ldloca")>-1)
									{
										int z=0;
										ArrayList tmpList = me.TypesOfLocalVar;
										tokens = tmpStr.Split(new char[]{' '});
										tmpStr=tokens[tokens.Length-1];
										foreach (string str in me.NamesOfLocalVar)
										{
											if(str.Equals(tmpStr))
											{
												tmpList[z]="INTERRUPT"+" "+str;
											}
											z++;
										}
										me.TypesOfLocalVar=tmpList;
									}

								}

								ext.CreateTypesOfLocalVar(me.TypesOfLocalVar);

								ext.InitStoreLocalVarExtension(me.TypesOfLocalVar.Count);
								ext.InitRestoreLocalVarExtension(me.TypesOfLocalVar.Count);
							}

							ext.InitStoreWaitLabelExtension();
							ext.InitAfterWaitLabelExtension();
							ext.InitStoreParamsExtension();
						}
						
						ext.InitNopRetExtension();
						ext.InitRemoveCurrSchedObjExtension();

						
						
						//Nur wenn Waitcalls in Methode vorhanden, wird Methode erweitert
						if(me.WaitCalls.Count!=0)
						{
							if(me.TypesOfLocalVar.Count!=0)
							{
								//Zeile der letzten lokalen Variable in locals init
								indx = ilFile.Lines.IndexOf(me.LastLocalInitElement);
								//Zeile holen
								tmpStr = me.LastLocalInitElement.Line;
								//Letzte Klammer entfernen und durch Komma erstetzen
								tmpStr=tmpStr.Replace(")",",");
								//Zeile ersetzen
								ile = new ILLineElement(tmpStr);				
								ilFile.Lines.RemoveAt(indx);
								ilFile.Lines.Insert(indx, ile);
								indx++;

								//Einfügen der zusätzlichen lokalen Variablen die zum Speichern und
								//Wiederherstellen benötigt werden (Zugriff auf SimNet)
								ilFile.Lines.InsertRange(indx,ext.LocalVarExt);
								indx+=ext.LocalVarExt.Count;

								//Nach einfügen der Variablen, die Zeile der letzten Var. neu setzen
								ile = (ILLineElement)ilFile.Lines[indx-1];
								me.LastLocalInitElement=ile;
							}
							else //keine lokalen Variablen vorhanden --> Erweiterung um ".locals init"
							{
								indx=ilFile.Lines.IndexOf(me.MaxStackElement)+1;
								ile = new ILLineElement(".locals init (");
								ilFile.Lines.Insert(indx, ile);
								indx++;
								//Einfügen der zusätzlichen lokalen Variablen die zum Speichern und
								//Wiederherstellen benötigt werden (Zugriff auf SimNet)
								ilFile.Lines.InsertRange(indx,ext.LocalVarExt);
								indx+=ext.LocalVarExt.Count;

								//Nach einfügen der Variablen, die Zeile der letzten Var. neu setzen
								ile = (ILLineElement)ilFile.Lines[indx-1];
								me.LastLocalInitElement=ile;
							}

							//Index neu setzen
							if(me.TypesOfLocalVar.Count!=0)
								indx=ilFile.Lines.IndexOf(me.LastLocalInitElement)+1;
							else
								indx=ilFile.Lines.IndexOf(me.MaxStackElement)+5;
							
							//Erweiterung zur Labelüberprüfung einfügen
							ilFile.Lines.InsertRange(indx,ext.CheckLabelExt);
							indx+=ext.CheckLabelExt.Count;
						
							for(int i=0;i < me.WaitCalls.Count;i++)
							{
								//Index neu setzen
								ile = (ILLineElement)me.WaitCalls[i];
								indx = ilFile.Lines.IndexOf(ile);

								//Überprüfen ob Wait mit Try/Catch
//								indx+=5;
//								tmpStr = ((ILLineElement)ilFile.Lines[indx]).Line;
//								if(tmpStr.IndexOf("catch")>-1)
//								{
									waitWithTryCatch=true;
//								}
								
								
								if(waitWithTryCatch)
								{
									//Index neu setzen
									ile = (ILLineElement)me.WaitCalls[i];
									indx = ilFile.Lines.IndexOf(ile);
									indx--;

									while(checkWait)
									{
										tmpStr = ((ILLineElement)ilFile.Lines[indx]).Line;
										if(tmpStr.StartsWith(".try"))
											checkWait=false;
										else
										{
											indx--;
										}
									}
									indx+=2;
								}
//								else
//								{
//									//Index neu setzen
//									ile = (ILLineElement)me.WaitCalls[i];
//									indx = ilFile.Lines.IndexOf(ile);
//									indx--;
//
//									while(checkWait)
//									{
//										tmpStr = ((ILLineElement)ilFile.Lines[indx]).Line;
//										if((tmpStr.IndexOf("ldloc")>-1 || tmpStr.IndexOf("ldarg")>-1 || tmpStr.IndexOf("ldc.")>-1) && (tmpStr.IndexOf("ldloca")==-1))
//										{
//												checkWait=false;
//										}
//										else
//										{
//											indx--;
//										}
//
//									}
//								}
								if(me.TypesOfLocalVar.Count!=0)
								{
									//Label der Zeile der ersten Anweisung in Try-Block holen und vor Erweiterung setzen
									//ist notwendig, wegen evtl. Schleifen
									tmpStr = ((ILLineElement)ilFile.Lines[indx]).Line;
									
									string label = tmpStr.Substring(0,8);
									ile = new ILLineElement(label);
									ilFile.Lines.Insert(indx,ile);
									
									tmpStr=tmpStr.Substring(8);
									tmpStr=tmpStr.Trim();

									ile = new ILLineElement(tmpStr);
									ilFile.Lines.RemoveAt(indx+1);
									ilFile.Lines.Insert(indx+1,ile);
									indx++;

									//Vor Wait Storeerweiterungen zum Speichern der lokalen Variablen einfügen
									ilFile.Lines.InsertRange(indx,ext.StoreLocalVarExt);
									indx+=ext.StoreLocalVarExt.Count;
								}

								//Vor Wait Erweiterungen zur Speicherung des Labels zum Wiedereinsteig einfügen
								ilFile.Lines.InsertRange(indx,ext.StoreWaitLabelExt(i));
								indx+=((ArrayList)ext.StoreWaitLabelExt(i)).Count;
							

								//Vor Wait Erweiterungen zur Speicherung der Parameter der Methode einfügen
								ilFile.Lines.InsertRange(indx,ext.StoreParamsExt);
								indx+=ext.StoreParamsExt.Count;


								//Nach Wait Nop und Return einfügen
								ile = (ILLineElement)me.WaitCalls[i];
								indx = ilFile.Lines.IndexOf(ile);
								
								while(checkTryCatch)
								{
									tmpStr = ((ILLineElement)ilFile.Lines[indx]).Line;
									if(tmpStr.IndexOf(")")>-1)
										checkTryCatch=false;
									else
									{
										indx++;
									}
								}
								indx++;
								checkTryCatch=true;

								ilFile.Lines.InsertRange(indx,ext.NopRetExt);
								indx+=ext.NopRetExt.Count;

								if(waitWithTryCatch)
								{
									//Index neu setzen
									ile = (ILLineElement)me.WaitCalls[i];
									indx = ilFile.Lines.IndexOf(ile);

									while(checkTryCatch)
									{
										tmpStr = ((ILLineElement)ilFile.Lines[indx]).Line;
										if(tmpStr.StartsWith("catch"))
											checkTryCatch=false;
										else
										{
											indx++;
										}
									}
									checkTryCatch=true;
									while(checkTryCatch)
									{
										tmpStr = ((ILLineElement)ilFile.Lines[indx]).Line;
										if(tmpStr.StartsWith("}"))
											checkTryCatch=false;
										else
										{
											indx++;
										}
									}
									indx++;

								}
								//Einfügen des Label zum Wiedereinstieg
								ilFile.Lines.Insert(indx,ext.AfterWaitLabelExt(i));
								indx++;
							
								if(me.TypesOfLocalVar.Count!=0)
								{
									//Einfügen der Erweiterung zum Wiederherstellen der lokalen Variablen
									ilFile.Lines.InsertRange(indx,ext.RestoreLocalVarExt);
									indx+=ext.RestoreLocalVarExt.Count;
								}

								checkWait = true;
								checkTryCatch = true;
								waitWithTryCatch = false;
								

							}	
						}

						//Einfügen der Erweiterung zum entfernen des aktuellen Objektes im Scheduler
						//durch Sprünge der IF-Anweisung bei Interrupt muss Label in Zeile der Return-Anweisung
						//an Stelle der Erweiterung zum entfernen des Objektes, sonst wird diese Zeile
						//übersprungen
						indx=ilFile.Lines.IndexOf(me.ReturnElement);
						tmpStr = ((ILLineElement)ilFile.Lines[indx]).Line;
						tokens = tmpStr.Split(new char[]{' '});
						foreach(string tok in tokens)
						{
							if(tok.StartsWith("IL"))
							{
								ile = new ILLineElement(tok+" "+((ILLineElement)ext.RemoveCurrSchedObjExt[0]).Line);
								ilFile.Lines.Insert(indx,ile);
							}
						}
						//ilFile.Lines.InsertRange(indx,ext.RemoveCurrSchedObjExt);
						indx=ilFile.Lines.IndexOf(me.ReturnElement);
						tmpStr = ((ILLineElement)ilFile.Lines[indx]).Line;
						tmpStr = tmpStr.Substring(8);
						ile = new ILLineElement(tmpStr);
						ilFile.Lines.RemoveAt(indx);
						ilFile.Lines.Insert(indx,ile);

						
					}
				}
				
			}
		}

		private string StripLabel(string s)
		{
				if (s.StartsWith("IL_"))
					return s.Substring(0,7);
				return s;
		}

//		private string ReadKeyFileName(ILFile ilFile)
//		{
//			return "";
//		}
	}
}