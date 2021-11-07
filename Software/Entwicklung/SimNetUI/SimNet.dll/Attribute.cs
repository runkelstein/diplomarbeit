using System;

namespace SimNet
{
	/// <summary>
	/// Selbstdefiniertes Attribute zur Verwendung der TELL-Methoden.
	/// Attribute dient zur Markierung der Methoden, bei denen es sich
	/// um eine TELL-Methode handelt.
	/// </summary>
	[AttributeUsage(AttributeTargets.Method)]
	public class TELLAttribute:System.Attribute
	{
		/// <summary>
		/// Konstruktor
		/// </summary>
		public TELLAttribute()
		{

		}
	}

//	[AttributeUsage(AttributeTargets.Method)]
//	public class WAITFORAttribute:System.Attribute
//	{
//		public WAITFORAttribute()
//		{
//
//		}
//	}
}
