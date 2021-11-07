using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;


namespace SimNetUI.ModelLogic.Base
{
    /// <summary>
    /// This Library makes use of a custom exception class, so that it is easier to differentiate
    /// between custom exceptions and exceptions thrown from within this library
    /// </summary>
    public class SimNetUIModelLogicException : Exception
    {
        // Its basicly just a normal exception class, and all it does is invoking the
        // constructors of it's base class "Exception"
        public SimNetUIModelLogicException(String str) : base(str) { }
        public SimNetUIModelLogicException(SerializationInfo si, StreamingContext sc) : base(si, sc) { }
        public SimNetUIModelLogicException(String str, Exception e) : base(str, e) { }
    }
}
