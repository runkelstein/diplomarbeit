using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;


namespace SimNetUI.Base
{
    /// <summary>
    /// This Library makes use of a custom exception class, so that it is easier to differentiate
    /// between custom exceptions and exceptions thrown from within this library
    /// </summary>
    internal class SimNetUIViewException : Exception
    {
        // Its basicly just a normal exception class, and all it does is invoking the
        // constructors of it's base class "Exception"
        public SimNetUIViewException(String str) : base(str)
        {
        }

        public SimNetUIViewException(SerializationInfo si, StreamingContext sc) : base(si, sc)
        {
        }

        public SimNetUIViewException(String str, Exception e) : base(str, e)
        {
        }
    }
}