using System;
using System.IO;
using System.Diagnostics;
using Microsoft.Win32;

namespace Enhancer
{
	/// <summary>
	/// Die Klasse ILAsm dient zum kompilieren des erweiterten Assembly.
	/// Hierzu wird die Klasse Process aus System.Diagnostics benutzt,
	/// um den IL-Assembler (ilasm.exe) zu starten.
	/// </summary>
	public class ILAsm
	{
		private string ilAsmPath = "";

		/// <summary>
		/// Konstruktor.
		/// Hier wird nach der ilasm.exe gesucht und so der Pfad zusammengesetzt.
		/// </summary>
		public ILAsm()
		{
			string pathVar = Environment.GetEnvironmentVariable("PATH");
			string[] thePaths = pathVar.Split(';');
			for (int i = 0; i < thePaths.Length; i++)
				if (!thePaths[i].EndsWith("\\"))
					thePaths[i] += '\\';

			// Registry Key einer der Framework-DLLs - Mscorld.dll
            //RegistryKey key = Registry.ClassesRoot.OpenSubKey(@"CLSID\{05EBA309-0164-11D3-8729-00C04F79ED0D}\InprocServer32");
            //ilAsmPath = (string) key.GetValue(null);
            //key.Close();

            ilAsmPath = System.Runtime.InteropServices.RuntimeEnvironment.GetRuntimeDirectory();

			if (ilAsmPath != null)
			{				
				ilAsmPath = Path.GetDirectoryName(ilAsmPath) + "\\ILAsm.exe";
			}
			
			if (!File.Exists(ilAsmPath))
			{
				foreach(string p in thePaths)
				{
					string pn = p + "ILAsm.exe";
					if (File.Exists(pn))
					{
						ilAsmPath = pn;
						break;
					}
				}
			}
			if (!File.Exists(ilAsmPath))
			{
				throw new Exception("Path for ILAsm not found.\n  Set the PATH environment variable.");
			}

		}

		/// <summary>
		/// Hier werden die Parameter für den IL-Assembler zusammengestellt.
		/// Danach wird Process.Start ausgeführt und somit der IL-Assembler gestartet.
		/// </summary>
		/// <param name="ilFileName">Name der IL-Datei</param>
		/// <param name="dllFileName">Name der PE-Datei (DLL oder EXE)</param>
		/// <param name="debug">Debuginformationen erstellen ? </param>
		public void DoIt(string ilFileName, string dllFileName, bool debug, string keyFileName = null)
		{
			if (!File.Exists(ilFileName))
				throw new Exception("Assembling: File not found: " + ilFileName);
			if (!File.Exists(dllFileName))
				throw new Exception("Assembling: File not found" + dllFileName);
			DateTime ct = File.GetCreationTime(dllFileName);
			DateTime at = File.GetLastAccessTime(dllFileName);
			DateTime wt = File.GetLastWriteTime(dllFileName);
			// DLL oder EXE?
			string libMode = "/" + Path.GetExtension(dllFileName).Substring(1).ToUpper();
			string debugMode = debug ? " /DEBUG" : string.Empty;
			string key = keyFileName != null ? " /KEY=" + keyFileName : string.Empty;
			string resourceFile = Path.ChangeExtension(dllFileName, ".res");
			string resource = File.Exists(resourceFile) ? " /RESOURCE=" + resourceFile : string.Empty;
			string parameters =
				libMode +" "
				+ " /DEBUG "
                + key
				+ ilFileName
				+ " /OUTPUT=" + dllFileName
				+ resource;

			ProcessStartInfo psi = new ProcessStartInfo(ilAsmPath, parameters);
			psi.CreateNoWindow = true;
			psi.UseShellExecute = false;
			psi.WorkingDirectory = Path.GetDirectoryName(dllFileName);
			psi.RedirectStandardOutput = false;
			psi.RedirectStandardError = true;
			System.Diagnostics.Process proc = System.Diagnostics.Process.Start( psi );
			proc.WaitForExit();
			string stderr = proc.StandardError.ReadToEnd();
			if ( stderr != null && 0 < stderr.Length )
			{
				if(!stderr.StartsWith("// WARNING"))
					throw new Exception ("ILAsm: " + stderr);
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
