using System;
using System.Collections;


namespace Enhancer
{
	/// <summary>
	/// ILSimNetExtensions stellt die notwendigen Erweiterungen zur Verfügung.
	/// </summary>
	public class ILSimNetExtensions
	{
		
		//Sprungmarken fuer Labelcheck, letzes Element ist Returnmarke der Methode
		private ArrayList jumpLabels;
		//Sprungmarken nach Wait-Calls
		private ArrayList waitLabels;
		
		private ArrayList localVarExt;
		private ArrayList checkLabelExt;
		private ArrayList storeLocalVarExt;
		private ArrayList restoreLocalVarExt;
		private ArrayList storeParamsExt;
		private ArrayList storeWaitLabelExt;
		private ArrayList afterWaitLabelExt;
		private ArrayList removeCurrSchedObjExt;
		private ArrayList nopRetExt;

		private ArrayList typesOfLocalVar;

		/// <summary>
		/// Erweiterung der lokalen Variablen.
		/// </summary>
		public ArrayList LocalVarExt
		{
			get{return localVarExt;}
		}

		/// <summary>
		/// Erweiterung zur Überprüfung des aktuellen Labels.
		/// </summary>
		public ArrayList CheckLabelExt
		{
			get{return checkLabelExt;}
		}

		/// <summary>
		/// Erweiterung zum Wiederherstellen der lokalen Variablen.
		/// </summary>
		public ArrayList RestoreLocalVarExt
		{
			get{return restoreLocalVarExt;}
		}

		/// <summary>
		/// Erweiterung zum Speichern der lokalen Variablen.
		/// </summary>
		public ArrayList StoreLocalVarExt
		{
			get{return storeLocalVarExt;}
		}

		/// <summary>
		/// Erweiterung zum Speichern der nutzerspezifischen Parameterliste der Methode.
		/// </summary>
		public ArrayList StoreParamsExt
		{
			get{return storeParamsExt;}
		}

		/// <summary>
		/// Erweiterung zum Verlassen der Methode - Return.
		/// </summary>
		public ArrayList NopRetExt
		{
			get{return nopRetExt;}
		}

		/// <summary>
		/// Erweiterung zum Löschen des Objektes aus der Schedulerliste.
		/// </summary>
		public ArrayList RemoveCurrSchedObjExt
		{
			get{return removeCurrSchedObjExt;}
		}

		/// <summary>
		/// Erweiterung zum Setzen des Labels zum Wiedereintritt.
		/// </summary>
		/// <param name="idx"></param>
		/// <returns></returns>
		public ILLineElement AfterWaitLabelExt(int idx)
		{
			return (ILLineElement)afterWaitLabelExt[idx];
		}

		/// <summary>
		/// Erweiterung zum Speichern des aktuelle Labels.
		/// </summary>
		/// <param name="idx"></param>
		/// <returns></returns>
		public ArrayList StoreWaitLabelExt(int idx)
		{
			return (ArrayList)storeWaitLabelExt[idx];
		}

		/// <summary>
		/// Konstruktor.
		/// </summary>
		public ILSimNetExtensions()
		{

		}

		/// <summary>
		/// Setzen der Sprung- und Wiedereintrittsmarken.
		/// </summary>
		/// <param name="jump">Sprungmarken für Erweiterung zur Labelüberprüfung</param>
		/// <param name="wait">Sprungmarken nach Wait. bzw. Waitfor-Aufrufen. Wiedereintrittspunkt.</param>
		public void SetLabels(ArrayList jump, ArrayList wait)
		{
			jumpLabels=jump;
			waitLabels=wait;
		}

		/// <summary>
		/// Initialisieren der Erweiterung der lokalen Variablen.
		/// </summary>
		public void InitLocalVarExtension()
		{
			localVarExt = new ArrayList();
			localVarExt.Add(new ILLineElement("object[] locals,"));
			localVarExt.Add(new ILLineElement("class [SimNet]SimNet.SimObj obj,"));
			localVarExt.Add(new ILLineElement("string label)"));
		}

		/// <summary>
		/// Initialisieren der Erweiterung zur Überprüfung des aktuellen Labels
		/// </summary>
		/// <param name="numberOfWaitCalls"></param>
		public void InitCheckLabelExtension(int numberOfWaitCalls)
		{
			string empty="";
			checkLabelExt = new ArrayList();
			checkLabelExt.Add(new ILLineElement("call       class [SimNet]SimNet.SimObj [SimNet]SimNet.Scheduler::GetCurrentSchedObj()"));
			checkLabelExt.Add(new ILLineElement("stloc      obj"));
			checkLabelExt.Add(new ILLineElement("ldloc      obj"));
			checkLabelExt.Add(new ILLineElement("callvirt   instance string [SimNet]SimNet.SimObj::get_Label()"));
			checkLabelExt.Add(new ILLineElement("stloc      label"));
			checkLabelExt.Add(new ILLineElement("ldloc      label"));
			checkLabelExt.Add(new ILLineElement(@"ldstr """ + empty + @""""));
			checkLabelExt.Add(new ILLineElement("call       bool [mscorlib]System.String::op_Equality(string,string) "));
			checkLabelExt.Add(new ILLineElement("brfalse    "+jumpLabels[0]));
			checkLabelExt.Add(new ILLineElement("br         IL_0000"));

			for(int i = 0; i<numberOfWaitCalls; i++)
			{
				checkLabelExt.Add(new ILLineElement(jumpLabels[i]+":   ldloc      label"));
				checkLabelExt.Add(new ILLineElement(@"ldstr """ +waitLabels[i]+ @""""));
				checkLabelExt.Add(new ILLineElement("call       bool [mscorlib]System.String::op_Equality(string,string) "));
				checkLabelExt.Add(new ILLineElement("brfalse    "+jumpLabels[i+1]));
				checkLabelExt.Add(new ILLineElement("br         "+waitLabels[i]));
			}
		}

		/// <summary>
		/// Initialisieren der Erweiterung zur Speicherung der lokalen Variablen.
		/// </summary>
		/// <param name="numberOfLocalVar"></param>
		public void InitStoreLocalVarExtension(int numberOfLocalVar)
		{
			string interrupt = "INTERRUPT";

			storeLocalVarExt = new ArrayList();
			
			//Array zum Speichern Initialisieren
			storeLocalVarExt.Add(new ILLineElement("ldc.i4.s "+numberOfLocalVar));
			storeLocalVarExt.Add(new ILLineElement("newarr		[mscorlib]System.Object"));
			storeLocalVarExt.Add(new ILLineElement("stloc  		locals"));
			
			//Variablen im Array abspeichern
			for(int i = 0; i<numberOfLocalVar; i++)
			{
				if(!((string)typesOfLocalVar[i]).StartsWith("INTERRUPT"))
				{
					storeLocalVarExt.Add(new ILLineElement("ldloc		locals"));
					storeLocalVarExt.Add(new ILLineElement("ldc.i4.s "+i));
					storeLocalVarExt.Add(new ILLineElement("ldloc.s "+i));
					if(!typesOfLocalVar[i].Equals(""))	//bei Wertetypen ist ein Boxing notwendig, 
														//d.h. Wertetypen werden als Referenztypen behandelt.
														//der Wert wird in ein Objekt "verpackt"
						storeLocalVarExt.Add(new ILLineElement("box			"+typesOfLocalVar[i]));
					storeLocalVarExt.Add(new ILLineElement("stelem.ref"));
				}
				else
				{
					storeLocalVarExt.Add(new ILLineElement("ldloc		locals"));
					storeLocalVarExt.Add(new ILLineElement("ldc.i4.s "+i));
					storeLocalVarExt.Add(new ILLineElement(@"ldstr """ +interrupt+ @""""));
					storeLocalVarExt.Add(new ILLineElement("stelem.ref"));
				}
			}

			//Array in Klasse SimObj abspeichern
			storeLocalVarExt.Add(new ILLineElement("ldloc      obj"));
			storeLocalVarExt.Add(new ILLineElement("ldloc      locals"));
			storeLocalVarExt.Add(new ILLineElement("callvirt   instance void [SimNet]SimNet.SimObj::set_Locals(object[])"));
		}

		/// <summary>
		/// Initialisieren der Erweiterung zum Speichern der Parameterliste.
		/// </summary>
		public void InitStoreParamsExtension()
		{
			storeParamsExt = new ArrayList();
			storeParamsExt.Add(new ILLineElement("ldloc      obj"));
			storeParamsExt.Add(new ILLineElement("ldarg.3"));
			storeParamsExt.Add(new ILLineElement("callvirt   instance void [SimNet]SimNet.SimObj::set_Params(object[])"));
		}


		/// <summary>
		/// Initialisieren der Sprungmarken zum Wiedereintritt.
		/// </summary>
		public void InitAfterWaitLabelExtension()
		{
			afterWaitLabelExt = new ArrayList();
			for(int i=0;i<waitLabels.Count;i++)
			{
				afterWaitLabelExt.Add(new ILLineElement(waitLabels[i]+":   nop"));
			}
		}

		/// <summary>
		/// Initialisieren der Erweiterung zum Wiederherstellen der lokalen Variablen
		/// </summary>
		/// <param name="numberOfLocalVar"></param>
		public void InitRestoreLocalVarExtension(int numberOfLocalVar)
		{
			string tmpStr;
			restoreLocalVarExt = new ArrayList();
			
			//Array aus Klasse SimObj holen
			restoreLocalVarExt.Add(new ILLineElement("ldloc      obj"));
			restoreLocalVarExt.Add(new ILLineElement("callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()"));
			restoreLocalVarExt.Add(new ILLineElement("stloc      locals"));
			
			//die Werte den lokalen Variablen wiederzuweisen
			for(int i = 0; i<numberOfLocalVar; i++)
			{	
				if(!((string)typesOfLocalVar[i]).StartsWith("INTERRUPT"))
				{
					restoreLocalVarExt.Add(new ILLineElement("ldloc     locals"));
					restoreLocalVarExt.Add(new ILLineElement("ldc.i4.s "+i));
					restoreLocalVarExt.Add(new ILLineElement("ldelem.ref"));
					if(!typesOfLocalVar[i].Equals(""))//bei Wertetypen wird ein Unboxing und Indirektes Laden nötig, um Wert auf Stack zu legen
					{
						restoreLocalVarExt.Add(new ILLineElement("unbox		"+typesOfLocalVar[i]));
						restoreLocalVarExt.Add(new ILLineElement(GetOpcodeNameForType((string)typesOfLocalVar[i])));
					}
					restoreLocalVarExt.Add(new ILLineElement("stloc.s "+i));
				}
				else
				{
					//Interrupt-Flag wird über spezielle Methode abgefragt und der entsprechenden
					//lokalen Variable zugewiesen

					//restoreLocalVarExt.Add(new ILLineElement("nop"));
					restoreLocalVarExt.Add(new ILLineElement("ldloc.s    obj"));
					restoreLocalVarExt.Add(new ILLineElement("callvirt   instance bool [SimNet]SimNet.SimObj::get_Interrupt()"));
					
					string[] tokens = ((string)typesOfLocalVar[i]).Split(new char[]{' '});
					tmpStr=tokens[1];		
					restoreLocalVarExt.Add(new ILLineElement("stloc.s    "+tmpStr));
				}
			}
		}

		/// <summary>
		/// Initialisieren der Erweiterung zum Abspeichern des Label, welches die nächste Einstiegsmarke spezifiziert..
		/// </summary>
		public void InitStoreWaitLabelExtension()
		{
			ArrayList storeLabel;
			storeWaitLabelExt = new ArrayList();
			
			for(int i=0;i<waitLabels.Count;i++)
			{
				storeLabel = new ArrayList();
				storeLabel.Add(new ILLineElement("ldloc      obj"));
				storeLabel.Add(new ILLineElement(@"ldstr """ +waitLabels[i]+ @""""));
				storeLabel.Add(new ILLineElement("callvirt   instance void [SimNet]SimNet.SimObj::set_Label(string)"));

				storeWaitLabelExt.Add(storeLabel);
			}
		}

		/// <summary>
		/// Initialisieren der Erweiterung zum Löschen des aktuellen Objektes aus der Schedulerliste.
		/// </summary>
		public void InitRemoveCurrSchedObjExtension()
		{
			removeCurrSchedObjExt=new ArrayList();
			removeCurrSchedObjExt.Add(new ILLineElement("call       void [SimNet]SimNet.Scheduler::RemoveSchedObj()"));
		}

		/// <summary>
		/// Initialisieren der Erweiterung zum Verlassen der Methode.
		/// </summary>
		public void InitNopRetExtension()
		{
			nopRetExt = new ArrayList();

			nopRetExt.Add(new ILLineElement("nop"));
			nopRetExt.Add(new ILLineElement("ret"));
		}

		/// <summary>
		/// Je nach Typ der Variable ist beim Wiederherstellen der Variablen, nach dem unbox
		/// ein indirektes Laden des Wertes (der Variable aus dem Array) auf den Stack
		/// notwendig. Diese Methode gibt ja nach Typ der Variable, den entsprechenden Befehl zum
		/// indirekten Laden zurück.
		/// Indirektes Laden bedeutet, das Managed Pointer (oder unmanaged pointer) vom Stack genommen
		/// wird und der Wert auf den der Pointer zeigt geholt wird und dann auf den Stack geladen wird.  
		/// </summary>
		/// <param name="type">Typ der Variable</param>
		/// <returns></returns>
		public string GetOpcodeNameForType(string type)
		{
			if(type.Equals("[mscorlib]System.Byte"))
				return "ldind.i1";

			if(type.Equals("[mscorlib]System.SByte"))
				return "ldind.u1";

			if(type.Equals("[mscorlib]System.Int16"))
				return "ldind.i2";

			if(type.Equals("[mscorlib]System.UInt16"))
				return "ldind.u2";

			if(type.Equals("[mscorlib]System.Int32"))
				return "ldind.i4";

			if(type.Equals("[mscorlib]System.UInt32"))
				return "ldind.u4";

			if(type.Equals("[mscorlib]System.Int64"))
				return "ldind.i8";

			if(type.Equals("[mscorlib]System.UInt64"))
				return "ldind.u8";
			
			if(type.Equals("[mscorlib]System.Single"))
				return "ldind.r4";

			if(type.Equals("[mscorlib]System.Double"))
				return "ldind.r8";

			if(type.Equals("[mscorlib]System.Decimal"))
				return "ldobj      [mscorlib]System.Decimal";
			
			if(type.Equals("[mscorlib]System.Boolean"))
				return "ldind.i4";

			if(type.Equals("[mscorlib]System.Char"))
				return "ldind.u2";
			
			
			return "";
		}

		/// <summary>
		/// Anhand des Typs der Variable, welche im IL-Code steht, wird hier die notwendige
		/// Klasse spezifiziert um mit der Variable arbeiten zu können.
		/// </summary>
		/// <param name="types">Liste der Typen der Variablen</param>
		public void CreateTypesOfLocalVar(ArrayList types)
		{
			typesOfLocalVar = new ArrayList();

			foreach(string typ in types)
			{
				//byte
				if(typ.Equals("unsigned int8"))
					typesOfLocalVar.Add("[mscorlib]System.Byte");
				
				//sbyte
				else if(typ.Equals("int8"))
					typesOfLocalVar.Add("[mscorlib]System.SByte");

				//short
				else if(typ.Equals("int16"))
					typesOfLocalVar.Add("[mscorlib]System.Int16");
				
				//unsigned short
				else if(typ.Equals("unsigned int16"))
					typesOfLocalVar.Add("[mscorlib]System.UInt16");

				//int
				else if(typ.Equals("int32"))
					typesOfLocalVar.Add("[mscorlib]System.Int32");

				//unsigned int
				else if(typ.Equals("unsigned int32"))
					typesOfLocalVar.Add("[mscorlib]System.UInt32");

				//long
				else if(typ.Equals("int64"))
					typesOfLocalVar.Add("[mscorlib]System.Int64");

				//unsigned long
				else if(typ.Equals("unsigned int64"))
					typesOfLocalVar.Add("[mscorlib]System.UInt64");

				//bool
				else if(typ.Equals("bool"))
					typesOfLocalVar.Add("[mscorlib]System.Boolean");
				
				//float
				else if(typ.Equals("float32"))
					typesOfLocalVar.Add("[mscorlib]System.Single");

				//double
				else if(typ.Equals("float64"))
					typesOfLocalVar.Add("[mscorlib]System.Double");
				
				//decimal
				else if(typ.IndexOf("[mscorlib]System.Decimal")>-1)
					typesOfLocalVar.Add("[mscorlib]System.Decimal");
				    
				//char
			    else if(typ.Equals("char"))
					typesOfLocalVar.Add("[mscorlib]System.Char");

				//string
				else if(typ.Equals("string"))
					typesOfLocalVar.Add("");

				//Klassen
				else if(typ.StartsWith("class"))
					typesOfLocalVar.Add("");

				//object
				else if(typ.Equals("object"))
					typesOfLocalVar.Add("");
				
				//Arrays
				else if(typ.IndexOf("[]")>-1)
					typesOfLocalVar.Add("");
				
				//Variable für Interrupt
				else if(typ.StartsWith("INTERRUPT"))
					typesOfLocalVar.Add(typ);

				else
					typesOfLocalVar.Add("");
				

			}
		}
		
	}
}
