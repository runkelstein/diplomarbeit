using System;
using System.IO;
using System.Diagnostics;
using Microsoft.Win32; 

namespace Enhancer
{
	/// <summary>
	/// Die Klasse ILDasm dient zum Ausführen des IL-Disassembler.
	/// </summary>
	public class ILDasm
	{
		private string ilDasmPath = "";
		//private bool debug = false;

		/// <summary>
		/// Konstruktor.
		/// Hier wird nach der ildasm.exe gesucht und so der Pfad zusammengesetzt.
		/// </summary>
		public ILDasm()
		{
			//
			// TODO: Fügen Sie hier die Konstruktorlogik hinzu
			//
			string pathVar = Environment.GetEnvironmentVariable("PATH");
			string[] thePaths = pathVar.Split(';');
			for (int i = 0; i < thePaths.Length; i++)
				if (!thePaths[i].EndsWith("\\"))
					thePaths[i] += '\\';

			RegistryKey dasmKey = Registry.ClassesRoot.OpenSubKey(@"Applications\ildasm.exe\shell\open\command");
			if(dasmKey!=null)
			{
				ilDasmPath = (string) dasmKey.GetValue(null);
				if (ilDasmPath.StartsWith("\""))
				{
					ilDasmPath = ilDasmPath.Substring(1, ilDasmPath.IndexOf("\"", 1) - 1);
				}
			}

			//----Path		
			if (!File.Exists(ilDasmPath))
			{
				ilDasmPath = null;
				foreach(string p in thePaths)
				{
					if (File.Exists(p + "ILDasm.exe"))
					{
						ilDasmPath = p + "ILDasm.exe";
						break;
					}
				}
			}
		
			if (!File.Exists(ilDasmPath))
			{
				throw new Exception("Path for ILDasm not found; set PATH environment variable");
			}

		}

		/// <summary>
		/// Hier werden die Parameter für den IL-Disassembler zusammengestellt.
		/// Danach wird Process.Start ausgeführt und somit der IL-Disassembler gestartet.
		/// </summary>
		/// <param name="dllFileName">Name der PE-Datei (DLL oder EXE)</param>
		/// <param name="ilFileName">Name der IL-Datei</param>
		public void DoIt(string dllFileName, string ilFileName)
		{
			System.Diagnostics.Debug.WriteLine(dllFileName);
			System.Diagnostics.Debug.WriteLine(ilFileName);

            Console.WriteLine("File "+ dllFileName);
            if (!File.Exists(dllFileName))
				throw new Exception("Assembling: File not found" + dllFileName);

			DateTime ct = File.GetCreationTime(dllFileName);
			DateTime at = File.GetLastAccessTime(dllFileName);
			DateTime wt = File.GetLastWriteTime(dllFileName);
		
			string parameters =" " + dllFileName + " /OUT=" + ilFileName;
			ProcessStartInfo psi = new ProcessStartInfo(ilDasmPath, parameters);
			psi.CreateNoWindow = true;
			psi.UseShellExecute = false;
			psi.WorkingDirectory = Path.GetDirectoryName(dllFileName);
			psi.RedirectStandardOutput = true;
			psi.RedirectStandardError = true;
			System.Diagnostics.Process proc = System.Diagnostics.Process.Start( psi );
			proc.WaitForExit();


			string stderr = proc.StandardError.ReadToEnd();
			if ( stderr != null && 0 < stderr.Length )
			{
				if(!stderr.StartsWith("// WARNING"))				
					throw new Exception ("ILDasm: " + stderr);
			}
			else
			{
				File.SetCreationTime(dllFileName, ct);
				File.SetLastAccessTime(dllFileName, at);
				File.SetLastWriteTime(dllFileName, wt);
			}
		}
	}
}
