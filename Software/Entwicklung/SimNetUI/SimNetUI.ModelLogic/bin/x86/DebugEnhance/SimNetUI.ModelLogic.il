
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.0.30319.1
//  Copyright (c) Microsoft Corporation. Alle Rechte vorbehalten.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
.publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
.ver 4:0:0:0
}
.assembly extern System
{
.publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
.ver 4:0:0:0
}
.assembly extern SimNet
{
.ver 1:0:0:0
}
.assembly extern System.Core
{
.publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
.ver 4:0:0:0
}
.assembly SimNetUI.ModelLogic
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 )
.custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 )
.custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 29 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ..).NETFramework
2C 56 65 72 73 69 6F 6E 3D 76 34 2E 30 2C 50 72   // ,Version=v4.0,Pr
6F 66 69 6C 65 3D 43 6C 69 65 6E 74 01 00 54 0E   // ofile=Client..T.
14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61   // .FrameworkDispla
79 4E 61 6D 65 1F 2E 4E 45 54 20 46 72 61 6D 65   // yName..NET Frame
77 6F 72 6B 20 34 20 43 6C 69 65 6E 74 20 50 72   // work 4 Client Pr
6F 66 69 6C 65 )                                  // ofile
.custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 13 53 69 6D 4E 65 74 55 49 2E 4D 6F 64 65   // ...SimNetUI.Mode
6C 4C 6F 67 69 63 00 00 )                         // lLogic..
.custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
.custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 13 53 69 6D 4E 65 74 55 49 2E 4D 6F 64 65   // ...SimNetUI.Mode
6C 4C 6F 67 69 63 00 00 )                         // lLogic..
.custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 )
.custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 09 4D 69 63 72 6F 73 6F 66 74 00 00 )       // ...Microsoft..
.custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
.custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 1B 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright ..
4D 69 63 72 6F 73 6F 66 74 20 32 30 31 31 00 00 ) // Microsoft 2011..
.custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 )
.custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 )
.custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 38 30 38 31 31 66 33 2D 62 33 31 62   // ..$580811f3-b31b
2D 34 61 33 37 2D 62 65 34 30 2D 37 33 34 35 63   // -4a37-be40-7345c
34 39 30 61 36 63 62 00 00 )                      // 490a6cb..
.hash algorithm 0x00008004
.ver 1:0:0:0
}
.module SimNetUI.ModelLogic.dll
// MVID: {79F2FD69-6BF9-4911-B676-1E401EB2A9E2}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x00000000004E0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Base.ModelLogicBase
extends [mscorlib]System.Object
implements [System]System.ComponentModel.INotifyPropertyChanged,
[mscorlib]System.IDisposable
{
.field private string _displayName
.field private class [System]System.ComponentModel.PropertyChangedEventHandler PropertyChanged
.field private bool '<ThrowOnInvalidPropertyName>k__BackingField'
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
.method family hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       10 (0xa)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
IL_0006:  nop
IL_0007:  nop
IL_0008:  nop
IL_0009:  ret
} // end of method ModelLogicBase::.ctor

.method public hidebysig specialname instance string
get_Name() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (string V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      string SimNetUI.ModelLogic.Base.ModelLogicBase::_displayName
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ModelLogicBase::get_Name

.method public hidebysig specialname instance void
set_Name(string 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      string SimNetUI.ModelLogic.Base.ModelLogicBase::_displayName
IL_0008:  ldarg.0
IL_0009:  ldstr      "Name"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ModelLogicBase::set_Name

.method public hidebysig instance void
VerifyPropertyName(string propertyName) cil managed
{
.custom instance void [mscorlib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 )
.custom instance void [mscorlib]System.Diagnostics.ConditionalAttribute::.ctor(string) = ( 01 00 05 44 45 42 55 47 00 00 )                   // ...DEBUG..
// Code size       65 (0x41)
.maxstack 3
.locals init (string V_0,
bool V_1)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       class [System]System.ComponentModel.PropertyDescriptorCollection [System]System.ComponentModel.TypeDescriptor::GetProperties(object)
IL_0007:  ldarg.1
IL_0008:  callvirt   instance class [System]System.ComponentModel.PropertyDescriptor [System]System.ComponentModel.PropertyDescriptorCollection::get_Item(string)
IL_000d:  ldnull
IL_000e:  ceq
IL_0010:  ldc.i4.0
IL_0011:  ceq
IL_0013:  stloc.1
IL_0014:  ldloc.1
IL_0015:  brtrue   IL_0040

IL_0017:  nop
IL_0018:  ldstr      "Invalid property name: "
IL_001d:  ldarg.1
IL_001e:  call       string [mscorlib]System.String::Concat(string,
string)
IL_0023:  stloc.0
IL_0024:  ldarg.0
IL_0025:  callvirt   instance bool SimNetUI.ModelLogic.Base.ModelLogicBase::get_ThrowOnInvalidPropertyName()
IL_002a:  ldc.i4.0
IL_002b:  ceq
IL_002d:  stloc.1
IL_002e:  ldloc.1
IL_002f:  brtrue   IL_0038

IL_0031:  ldloc.0
IL_0032:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
IL_0037:  throw

IL_0038:  ldloc.0
IL_0039:  call       void [System]System.Diagnostics.Debug::Fail(string)
IL_003e:  nop
IL_003f:  nop
IL_0040:  ret
} // end of method ModelLogicBase::VerifyPropertyName

.method family hidebysig newslot specialname virtual
instance bool  get_ThrowOnInvalidPropertyName() cil managed
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
// Code size       11 (0xb)
.maxstack 3
.locals init (bool V_0)
IL_0000:  ldarg.0
IL_0001:  ldfld      bool SimNetUI.ModelLogic.Base.ModelLogicBase::'<ThrowOnInvalidPropertyName>k__BackingField'
IL_0006:  stloc.0
IL_0007:  br       IL_0009

IL_0009:  ldloc.0
IL_000a:  ret
} // end of method ModelLogicBase::get_ThrowOnInvalidPropertyName

.method private hidebysig specialname instance void
set_ThrowOnInvalidPropertyName(bool 'value') cil managed
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
// Code size       8 (0x8)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      bool SimNetUI.ModelLogic.Base.ModelLogicBase::'<ThrowOnInvalidPropertyName>k__BackingField'
IL_0007:  ret
} // end of method ModelLogicBase::set_ThrowOnInvalidPropertyName

.method public hidebysig newslot specialname virtual final
instance void  add_PropertyChanged(class [System]System.ComponentModel.PropertyChangedEventHandler 'value') cil managed
{
// Code size       48 (0x30)
.maxstack 3
.locals init (class [System]System.ComponentModel.PropertyChangedEventHandler V_0,
class [System]System.ComponentModel.PropertyChangedEventHandler V_1,
class [System]System.ComponentModel.PropertyChangedEventHandler V_2,
bool V_3)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [System]System.ComponentModel.PropertyChangedEventHandler SimNetUI.ModelLogic.Base.ModelLogicBase::PropertyChanged
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  [System]System.ComponentModel.PropertyChangedEventHandler
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [System]System.ComponentModel.PropertyChangedEventHandler SimNetUI.ModelLogic.Base.ModelLogicBase::PropertyChanged
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [System]System.ComponentModel.PropertyChangedEventHandler>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  ceq
IL_0028:  ldc.i4.0
IL_0029:  ceq
IL_002b:  stloc.3
IL_002c:  ldloc.3
IL_002d:  brtrue   IL_0007

IL_002f:  ret
} // end of method ModelLogicBase::add_PropertyChanged

.method public hidebysig newslot specialname virtual final
instance void  remove_PropertyChanged(class [System]System.ComponentModel.PropertyChangedEventHandler 'value') cil managed
{
// Code size       48 (0x30)
.maxstack 3
.locals init (class [System]System.ComponentModel.PropertyChangedEventHandler V_0,
class [System]System.ComponentModel.PropertyChangedEventHandler V_1,
class [System]System.ComponentModel.PropertyChangedEventHandler V_2,
bool V_3)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [System]System.ComponentModel.PropertyChangedEventHandler SimNetUI.ModelLogic.Base.ModelLogicBase::PropertyChanged
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Remove(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  [System]System.ComponentModel.PropertyChangedEventHandler
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [System]System.ComponentModel.PropertyChangedEventHandler SimNetUI.ModelLogic.Base.ModelLogicBase::PropertyChanged
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [System]System.ComponentModel.PropertyChangedEventHandler>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  ceq
IL_0028:  ldc.i4.0
IL_0029:  ceq
IL_002b:  stloc.3
IL_002c:  ldloc.3
IL_002d:  brtrue   IL_0007

IL_002f:  ret
} // end of method ModelLogicBase::remove_PropertyChanged

.method family hidebysig newslot virtual
instance void  OnPropertyChanged(string propertyName) cil managed
{
// Code size       43 (0x2b)
.maxstack 3
.locals init (class [System]System.ComponentModel.PropertyChangedEventHandler V_0,
class [System]System.ComponentModel.PropertyChangedEventArgs V_1,
bool V_2)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  call       instance void SimNetUI.ModelLogic.Base.ModelLogicBase::VerifyPropertyName(string)
IL_0008:  nop
IL_0009:  ldarg.0
IL_000a:  ldfld      class [System]System.ComponentModel.PropertyChangedEventHandler SimNetUI.ModelLogic.Base.ModelLogicBase::PropertyChanged
IL_000f:  stloc.0
IL_0010:  ldloc.0
IL_0011:  ldnull
IL_0012:  ceq
IL_0014:  stloc.2
IL_0015:  ldloc.2
IL_0016:  brtrue   IL_002a

IL_0018:  nop
IL_0019:  ldarg.1
IL_001a:  newobj     instance void [System]System.ComponentModel.PropertyChangedEventArgs::.ctor(string)
IL_001f:  stloc.1
IL_0020:  ldloc.0
IL_0021:  ldarg.0
IL_0022:  ldloc.1
IL_0023:  callvirt   instance void [System]System.ComponentModel.PropertyChangedEventHandler::Invoke(object,
class [System]System.ComponentModel.PropertyChangedEventArgs)
IL_0028:  nop
IL_0029:  nop
IL_002a:  ret
} // end of method ModelLogicBase::OnPropertyChanged

.method public hidebysig newslot virtual final
instance void  Dispose() cil managed
{
// Code size       9 (0x9)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnDispose()
IL_0007:  nop
IL_0008:  ret
} // end of method ModelLogicBase::Dispose

.method family hidebysig newslot virtual
instance void  OnDispose() cil managed
{
// Code size       2 (0x2)
.maxstack 8
IL_0000:  nop
IL_0001:  ret
} // end of method ModelLogicBase::OnDispose

.method family hidebysig virtual instance void
Finalize() cil managed
{
// Code size       60 (0x3c)
.maxstack 4
.locals init (string V_0)
.try
{
IL_0000:  nop
IL_0001:  ldstr      "{0} ({1}) ({2}) Finalized"
IL_0006:  ldarg.0
IL_0007:  call       instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
IL_000c:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
IL_0011:  ldarg.0
IL_0012:  call       instance string SimNetUI.ModelLogic.Base.ModelLogicBase::get_Name()
IL_0017:  ldarg.0
IL_0018:  callvirt   instance int32 [mscorlib]System.Object::GetHashCode()
IL_001d:  box        [mscorlib]System.Int32
IL_0022:  call       string [mscorlib]System.String::Format(string,
object,
object,
object)
IL_0027:  stloc.0
IL_0028:  ldloc.0
IL_0029:  call       void [System]System.Diagnostics.Debug::WriteLine(string)
IL_002e:  nop
IL_002f:  nop
IL_0030:  leave    IL_003a

}  // end .try
finally
{
IL_0032:  ldarg.0
IL_0033:  call       instance void [mscorlib]System.Object::Finalize()
IL_0038:  nop
IL_0039:  endfinally
}  // end handler
IL_003a:  nop
IL_003b:  ret
} // end of method ModelLogicBase::Finalize

.event [System]System.ComponentModel.PropertyChangedEventHandler PropertyChanged
{
.addon instance void SimNetUI.ModelLogic.Base.ModelLogicBase::add_PropertyChanged(class [System]System.ComponentModel.PropertyChangedEventHandler)
.removeon instance void SimNetUI.ModelLogic.Base.ModelLogicBase::remove_PropertyChanged(class [System]System.ComponentModel.PropertyChangedEventHandler)
} // end of event ModelLogicBase::PropertyChanged
.property instance string Name()
{
.set instance void SimNetUI.ModelLogic.Base.ModelLogicBase::set_Name(string)
.get instance string SimNetUI.ModelLogic.Base.ModelLogicBase::get_Name()
} // end of property ModelLogicBase::Name
.property instance bool ThrowOnInvalidPropertyName()
{
.set instance void SimNetUI.ModelLogic.Base.ModelLogicBase::set_ThrowOnInvalidPropertyName(bool)
.get instance bool SimNetUI.ModelLogic.Base.ModelLogicBase::get_ThrowOnInvalidPropertyName()
} // end of property ModelLogicBase::ThrowOnInvalidPropertyName
} // end of class SimNetUI.ModelLogic.Base.ModelLogicBase

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML
extends SimNetUI.ModelLogic.Base.ModelLogicBase
{
.field private float64 _ScheduleDuration
.method public hidebysig specialname instance float64
get_ScheduleDuration() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::_ScheduleDuration
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method DistributionBaseML::get_ScheduleDuration

.method public hidebysig specialname instance void
set_ScheduleDuration(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::_ScheduleDuration
IL_0008:  ldarg.0
IL_0009:  ldstr      "ScheduleDuration"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method DistributionBaseML::set_ScheduleDuration

.method public hidebysig newslot abstract virtual
instance float64  GetNextValue() cil managed
{
} // end of method DistributionBaseML::GetNextValue

.method family hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.ModelLogicBase::.ctor()
IL_0006:  ret
} // end of method DistributionBaseML::.ctor

.property instance float64 ScheduleDuration()
{
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::get_ScheduleDuration()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::set_ScheduleDuration(float64)
} // end of property DistributionBaseML::ScheduleDuration
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML
{
.field family class [SimNet]SimNet.RandomObj random
.field private int32 _Seed
.method public hidebysig specialname instance int32
get_Seed() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (int32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::_Seed
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ProbabilityDistributionBaseML::get_Seed

.method public hidebysig specialname instance void
set_Seed(int32 'value') cil managed
{
// Code size       28 (0x1c)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::_Seed
IL_0008:  ldarg.0
IL_0009:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::ResetRandomNumberGenerator()
IL_000e:  nop
IL_000f:  ldarg.0
IL_0010:  ldstr      "Seed"
IL_0015:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_001a:  nop
IL_001b:  ret
} // end of method ProbabilityDistributionBaseML::set_Seed

.method assembly hidebysig instance void
ResetRandomNumberGenerator() cil managed
{
// Code size       64 (0x40)
.maxstack 3
.locals init (bool V_0,
valuetype [mscorlib]System.DateTime V_1)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::_Seed
IL_0007:  ldc.i4.0
IL_0008:  ceq
IL_000a:  ldc.i4.0
IL_000b:  ceq
IL_000d:  stloc.0
IL_000e:  ldloc.0
IL_000f:  brtrue   IL_002d

IL_0011:  ldarg.0
IL_0012:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0017:  call       valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::get_Now()
IL_001c:  stloc.1
IL_001d:  ldloca.s   V_1
IL_001f:  call       instance int64 [mscorlib]System.DateTime::get_Ticks()
IL_0024:  conv.i4
IL_0025:  callvirt   instance void [SimNet]SimNet.RandomObj::SetSeed(int32)
IL_002a:  nop
IL_002b:  br       IL_003f

IL_002d:  ldarg.0
IL_002e:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0033:  ldarg.0
IL_0034:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::_Seed
IL_0039:  callvirt   instance void [SimNet]SimNet.RandomObj::SetSeed(int32)
IL_003e:  nop
IL_003f:  ret
} // end of method ProbabilityDistributionBaseML::ResetRandomNumberGenerator

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::.ctor()
IL_0006:  nop
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  newobj     instance void [SimNet]SimNet.RandomObj::.ctor()
IL_000e:  stfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0013:  nop
IL_0014:  ret
} // end of method ProbabilityDistributionBaseML::.ctor

.property instance int32 Seed()
{
.get instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::get_Seed()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::set_Seed(int32)
} // end of property ProbabilityDistributionBaseML::Seed
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML
{
.field private float64 _Min
.field private float64 _Max
.field private float64 _Mode
.method public hidebysig specialname instance float64
get_Min() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::_Min
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method TriangularML::get_Min

.method public hidebysig specialname instance void
set_Min(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::_Min
IL_0008:  ldarg.0
IL_0009:  ldstr      "Min"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method TriangularML::set_Min

.method public hidebysig specialname instance float64
get_Max() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::_Max
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method TriangularML::get_Max

.method public hidebysig specialname instance void
set_Max(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::_Max
IL_0008:  ldarg.0
IL_0009:  ldstr      "Max"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method TriangularML::set_Max

.method public hidebysig specialname instance float64
get_Mode() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::_Mode
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method TriangularML::get_Mode

.method public hidebysig specialname instance void
set_Mode(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::_Mode
IL_0008:  ldarg.0
IL_0009:  ldstr      "Max"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method TriangularML::set_Mode

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       35 (0x23)
.maxstack 4
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0007:  ldarg.0
IL_0008:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::get_Min()
IL_000d:  ldarg.0
IL_000e:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::get_Mode()
IL_0013:  ldarg.0
IL_0014:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::get_Max()
IL_0019:  callvirt   instance float64 [SimNet]SimNet.RandomObj::Triangular(float64,
float64,
float64)
IL_001e:  stloc.0
IL_001f:  br       IL_0021

IL_0021:  ldloc.0
IL_0022:  ret
} // end of method TriangularML::GetNextValue

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::.ctor()
IL_0006:  ret
} // end of method TriangularML::.ctor

.property instance float64 Min()
{
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::get_Min()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::set_Min(float64)
} // end of property TriangularML::Min
.property instance float64 Max()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::set_Max(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::get_Max()
} // end of property TriangularML::Max
.property instance float64 Mode()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::set_Mode(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::get_Mode()
} // end of property TriangularML::Mode
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.FixedML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML
{
.field private float64 _Value
.method public hidebysig specialname instance float64
get_Value() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.FixedML::_Value
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method FixedML::get_Value

.method public hidebysig specialname instance void
set_Value(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.FixedML::_Value
IL_0008:  ldarg.0
IL_0009:  ldstr      "Value"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method FixedML::set_Value

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.FixedML::get_Value()
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method FixedML::GetNextValue

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::.ctor()
IL_0006:  ret
} // end of method FixedML::.ctor

.property instance float64 Value()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.FixedML::set_Value(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.FixedML::get_Value()
} // end of property FixedML::Value
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.FixedML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Base.SimNetUIModelLogicException
extends [mscorlib]System.Exception
{
.method public hidebysig specialname rtspecialname
instance void  .ctor(string str) cil managed
{
// Code size       11 (0xb)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  call       instance void [mscorlib]System.Exception::.ctor(string)
IL_0007:  nop
IL_0008:  nop
IL_0009:  nop
IL_000a:  ret
} // end of method SimNetUIModelLogicException::.ctor

.method public hidebysig specialname rtspecialname
instance void  .ctor(class [mscorlib]System.Runtime.Serialization.SerializationInfo si,
valuetype [mscorlib]System.Runtime.Serialization.StreamingContext sc) cil managed
{
// Code size       12 (0xc)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  ldarg.2
IL_0003:  call       instance void [mscorlib]System.Exception::.ctor(class [mscorlib]System.Runtime.Serialization.SerializationInfo,
valuetype [mscorlib]System.Runtime.Serialization.StreamingContext)
IL_0008:  nop
IL_0009:  nop
IL_000a:  nop
IL_000b:  ret
} // end of method SimNetUIModelLogicException::.ctor

.method public hidebysig specialname rtspecialname
instance void  .ctor(string str,
class [mscorlib]System.Exception e) cil managed
{
// Code size       12 (0xc)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  ldarg.2
IL_0003:  call       instance void [mscorlib]System.Exception::.ctor(string,
class [mscorlib]System.Exception)
IL_0008:  nop
IL_0009:  nop
IL_000a:  nop
IL_000b:  ret
} // end of method SimNetUIModelLogicException::.ctor

} // end of class SimNetUI.ModelLogic.Base.SimNetUIModelLogicException

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Base.StatisticInfoBaseML
extends SimNetUI.ModelLogic.Base.ModelLogicBase
{
.method assembly hidebysig newslot strict virtual
instance void  Reset() cil managed
{
// Code size       2 (0x2)
.maxstack 8
IL_0000:  nop
IL_0001:  ret
} // end of method StatisticInfoBaseML::Reset

.method assembly hidebysig newslot strict virtual
instance void  UpdateTimeBasedStatistics() cil managed
{
// Code size       2 (0x2)
.maxstack 8
IL_0000:  nop
IL_0001:  ret
} // end of method StatisticInfoBaseML::UpdateTimeBasedStatistics

.method family hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.ModelLogicBase::.ctor()
IL_0006:  ret
} // end of method StatisticInfoBaseML::.ctor

} // end of class SimNetUI.ModelLogic.Base.StatisticInfoBaseML

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteBaseStatisticInfoML
extends SimNetUI.ModelLogic.Base.StatisticInfoBaseML
{
.method family hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityRouteBaseStatisticInfoML::.ctor

} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteBaseStatisticInfoML

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteBaseStatisticInfoML
{
.field private float64 queueTimeIntegral
.field private float64 oldTime
.field private uint32 _InQueue
.field private uint32 _MaxInQueue
.field private float64 _AverageInQueue
.method assembly hidebysig strict virtual
instance void  Reset() cil managed
{
// Code size       71 (0x47)
.maxstack 3
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::Reset()
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  ldc.r8     0.0
IL_0012:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::queueTimeIntegral
IL_0017:  ldarg.0
IL_0018:  ldc.r8     0.0
IL_0021:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::oldTime
IL_0026:  ldarg.0
IL_0027:  ldc.i4.0
IL_0028:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_InQueue(uint32)
IL_002d:  nop
IL_002e:  ldarg.0
IL_002f:  ldc.i4.0
IL_0030:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_MaxInQueue(uint32)
IL_0035:  nop
IL_0036:  ldarg.0
IL_0037:  ldc.r8     0.0
IL_0040:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_AverageInQueue(float64)
IL_0045:  nop
IL_0046:  ret
} // end of method ActivityQueueBaseStatisticInfoML::Reset

.method assembly hidebysig strict virtual
instance void  UpdateTimeBasedStatistics() cil managed
{
// Code size       16 (0x10)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::UpdateTimeBasedStatistics()
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::UpdateQueueStatistics()
IL_000e:  nop
IL_000f:  ret
} // end of method ActivityQueueBaseStatisticInfoML::UpdateTimeBasedStatistics

.method private hidebysig instance void
UpdateQueueStatistics() cil managed
{
// Code size       102 (0x66)
.maxstack 5
.locals init (bool V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  dup
IL_0003:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::queueTimeIntegral
IL_0008:  ldarg.0
IL_0009:  call       instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_000e:  conv.r.un
IL_000f:  conv.r8
IL_0010:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_0015:  ldarg.0
IL_0016:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::oldTime
IL_001b:  sub
IL_001c:  mul
IL_001d:  add
IL_001e:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::queueTimeIntegral
IL_0023:  ldarg.0
IL_0024:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_0029:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::oldTime
IL_002e:  ldarg.0
IL_002f:  ldarg.0
IL_0030:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::queueTimeIntegral
IL_0035:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_003a:  div
IL_003b:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_AverageInQueue(float64)
IL_0040:  nop
IL_0041:  ldarg.0
IL_0042:  call       instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_0047:  ldarg.0
IL_0048:  call       instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_MaxInQueue()
IL_004d:  cgt.un
IL_004f:  ldc.i4.0
IL_0050:  ceq
IL_0052:  stloc.0
IL_0053:  ldloc.0
IL_0054:  brtrue   IL_0065

IL_0056:  nop
IL_0057:  ldarg.0
IL_0058:  ldarg.0
IL_0059:  call       instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_005e:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_MaxInQueue(uint32)
IL_0063:  nop
IL_0064:  nop
IL_0065:  ret
} // end of method ActivityQueueBaseStatisticInfoML::UpdateQueueStatistics

.method public hidebysig specialname instance uint32
get_InQueue() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::_InQueue
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityQueueBaseStatisticInfoML::get_InQueue

.method public hidebysig specialname instance void
set_InQueue(uint32 'value') cil managed
{
// Code size       28 (0x1c)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::UpdateQueueStatistics()
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  ldarg.1
IL_000a:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::_InQueue
IL_000f:  ldarg.0
IL_0010:  ldstr      "InQueue"
IL_0015:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_001a:  nop
IL_001b:  ret
} // end of method ActivityQueueBaseStatisticInfoML::set_InQueue

.method public hidebysig specialname instance uint32
get_MaxInQueue() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::_MaxInQueue
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityQueueBaseStatisticInfoML::get_MaxInQueue

.method public hidebysig specialname instance void
set_MaxInQueue(uint32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::_MaxInQueue
IL_0008:  ldarg.0
IL_0009:  ldstr      "MaxInQueue"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityQueueBaseStatisticInfoML::set_MaxInQueue

.method public hidebysig specialname instance float64
get_AverageInQueue() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::_AverageInQueue
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityQueueBaseStatisticInfoML::get_AverageInQueue

.method public hidebysig specialname instance void
set_AverageInQueue(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::_AverageInQueue
IL_0008:  ldarg.0
IL_0009:  ldstr      "AverageInQueue"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityQueueBaseStatisticInfoML::set_AverageInQueue

.method family hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteBaseStatisticInfoML::.ctor()
IL_0006:  ret
} // end of method ActivityQueueBaseStatisticInfoML::.ctor

.property instance uint32 InQueue()
{
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_InQueue(uint32)
} // end of property ActivityQueueBaseStatisticInfoML::InQueue
.property instance uint32 MaxInQueue()
{
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_MaxInQueue()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_MaxInQueue(uint32)
} // end of property ActivityQueueBaseStatisticInfoML::MaxInQueue
.property instance float64 AverageInQueue()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_AverageInQueue(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_AverageInQueue()
} // end of property ActivityQueueBaseStatisticInfoML::AverageInQueue
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML
{
.field private float64 _WorkingTime
.field private float64 _OffTime
.field private uint32 _Processed
.method assembly hidebysig strict virtual
instance void  Reset() cil managed
{
// Code size       49 (0x31)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::Reset()
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  ldc.r8     0.0
IL_0012:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_WorkingTime(float64)
IL_0017:  nop
IL_0018:  ldarg.0
IL_0019:  ldc.r8     0.0
IL_0022:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_OffTime(float64)
IL_0027:  nop
IL_0028:  ldarg.0
IL_0029:  ldc.i4.0
IL_002a:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_Processed(uint32)
IL_002f:  nop
IL_0030:  ret
} // end of method ActivityDelayBaseStatisticInfoML::Reset

.method public hidebysig specialname instance uint32
get_Processed() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::_Processed
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityDelayBaseStatisticInfoML::get_Processed

.method public hidebysig specialname instance void
set_Processed(uint32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::_Processed
IL_0008:  ldarg.0
IL_0009:  ldstr      "Processed"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityDelayBaseStatisticInfoML::set_Processed

.method public hidebysig specialname instance float64
get_WorkingTime() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::_WorkingTime
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityDelayBaseStatisticInfoML::get_WorkingTime

.method public hidebysig specialname instance void
set_WorkingTime(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::_WorkingTime
IL_0008:  ldarg.0
IL_0009:  ldstr      "WorkingTime"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityDelayBaseStatisticInfoML::set_WorkingTime

.method public hidebysig specialname instance float64
get_OffTime() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::_OffTime
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityDelayBaseStatisticInfoML::get_OffTime

.method public hidebysig specialname instance void
set_OffTime(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::_OffTime
IL_0008:  ldarg.0
IL_0009:  ldstr      "OffTime"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityDelayBaseStatisticInfoML::set_OffTime

.method family hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::.ctor()
IL_0006:  ret
} // end of method ActivityDelayBaseStatisticInfoML::.ctor

.property instance uint32 Processed()
{
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::get_Processed()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_Processed(uint32)
} // end of property ActivityDelayBaseStatisticInfoML::Processed
.property instance float64 WorkingTime()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_WorkingTime(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::get_WorkingTime()
} // end of property ActivityDelayBaseStatisticInfoML::WorkingTime
.property instance float64 OffTime()
{
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::get_OffTime()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_OffTime(float64)
} // end of property ActivityDelayBaseStatisticInfoML::OffTime
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML
{
.field private float64 workTimeIntegral
.field private float64 oldTime
.field private uint32 _InWork
.field private uint32 _MaxInWork
.field private float64 _AverageInWork
.field private float64 _Busy
.field private uint32 '<capacity>k__BackingField'
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
.method assembly hidebysig specialname
instance uint32  get_capacity() cil managed
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
// Code size       11 (0xb)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::'<capacity>k__BackingField'
IL_0006:  stloc.0
IL_0007:  br       IL_0009

IL_0009:  ldloc.0
IL_000a:  ret
} // end of method ActivityWaitStatisticInfoML::get_capacity

.method assembly hidebysig specialname
instance void  set_capacity(uint32 'value') cil managed
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
// Code size       8 (0x8)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::'<capacity>k__BackingField'
IL_0007:  ret
} // end of method ActivityWaitStatisticInfoML::set_capacity

.method assembly hidebysig strict virtual
instance void  UpdateTimeBasedStatistics() cil managed
{
// Code size       16 (0x10)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::UpdateTimeBasedStatistics()
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::UpdateWorkStatistics()
IL_000e:  nop
IL_000f:  ret
} // end of method ActivityWaitStatisticInfoML::UpdateTimeBasedStatistics

.method private hidebysig instance void
UpdateWorkStatistics() cil managed
{
// Code size       177 (0xb1)
.maxstack 5
.locals init (float64 V_0,
bool V_1)
IL_0000:  nop
IL_0001:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_0006:  stloc.0
IL_0007:  ldarg.0
IL_0008:  dup
IL_0009:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::workTimeIntegral
IL_000e:  ldarg.0
IL_000f:  call       instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_InWork()
IL_0014:  conv.r.un
IL_0015:  conv.r8
IL_0016:  ldloc.0
IL_0017:  ldarg.0
IL_0018:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::oldTime
IL_001d:  sub
IL_001e:  mul
IL_001f:  add
IL_0020:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::workTimeIntegral
IL_0025:  ldarg.0
IL_0026:  call       instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_InWork()
IL_002b:  ldc.i4.0
IL_002c:  ceq
IL_002e:  ldc.i4.0
IL_002f:  ceq
IL_0031:  stloc.1
IL_0032:  ldloc.1
IL_0033:  brtrue   IL_0048

IL_0035:  nop
IL_0036:  ldarg.0
IL_0037:  ldloc.0
IL_0038:  ldarg.0
IL_0039:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::get_WorkingTime()
IL_003e:  sub
IL_003f:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_OffTime(float64)
IL_0044:  nop
IL_0045:  nop
IL_0046:  br       IL_0060

IL_0048:  nop
IL_0049:  ldarg.0
IL_004a:  dup
IL_004b:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::get_WorkingTime()
IL_0050:  ldloc.0
IL_0051:  ldarg.0
IL_0052:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::oldTime
IL_0057:  sub
IL_0058:  add
IL_0059:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_WorkingTime(float64)
IL_005e:  nop
IL_005f:  nop
IL_0060:  ldarg.0
IL_0061:  ldloc.0
IL_0062:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::oldTime
IL_0067:  ldarg.0
IL_0068:  ldarg.0
IL_0069:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::workTimeIntegral
IL_006e:  ldloc.0
IL_006f:  div
IL_0070:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_AverageInWork(float64)
IL_0075:  nop
IL_0076:  ldarg.0
IL_0077:  ldarg.0
IL_0078:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::workTimeIntegral
IL_007d:  ldloc.0
IL_007e:  ldarg.0
IL_007f:  call       instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_capacity()
IL_0084:  conv.r.un
IL_0085:  conv.r8
IL_0086:  mul
IL_0087:  div
IL_0088:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_Busy(float64)
IL_008d:  nop
IL_008e:  ldarg.0
IL_008f:  call       instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_InWork()
IL_0094:  ldarg.0
IL_0095:  call       instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_MaxInWork()
IL_009a:  cgt.un
IL_009c:  ldc.i4.0
IL_009d:  ceq
IL_009f:  stloc.1
IL_00a0:  ldloc.1
IL_00a1:  brtrue   IL_00b0

IL_00a3:  ldarg.0
IL_00a4:  ldarg.0
IL_00a5:  call       instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_InWork()
IL_00aa:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_MaxInWork(uint32)
IL_00af:  nop
IL_00b0:  ret
} // end of method ActivityWaitStatisticInfoML::UpdateWorkStatistics

.method assembly hidebysig strict virtual
instance void  Reset() cil managed
{
// Code size       87 (0x57)
.maxstack 3
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::Reset()
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  ldc.r8     0.0
IL_0012:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::oldTime
IL_0017:  ldarg.0
IL_0018:  ldc.r8     0.0
IL_0021:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::workTimeIntegral
IL_0026:  ldarg.0
IL_0027:  ldc.i4.0
IL_0028:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_InWork(uint32)
IL_002d:  nop
IL_002e:  ldarg.0
IL_002f:  ldc.i4.0
IL_0030:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_MaxInWork(uint32)
IL_0035:  nop
IL_0036:  ldarg.0
IL_0037:  ldc.r8     0.0
IL_0040:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_AverageInWork(float64)
IL_0045:  nop
IL_0046:  ldarg.0
IL_0047:  ldc.r8     0.0
IL_0050:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_Busy(float64)
IL_0055:  nop
IL_0056:  ret
} // end of method ActivityWaitStatisticInfoML::Reset

.method public hidebysig specialname instance uint32
get_InWork() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::_InWork
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityWaitStatisticInfoML::get_InWork

.method public hidebysig specialname instance void
set_InWork(uint32 'value') cil managed
{
// Code size       28 (0x1c)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::UpdateWorkStatistics()
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  ldarg.1
IL_000a:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::_InWork
IL_000f:  ldarg.0
IL_0010:  ldstr      "InWork"
IL_0015:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_001a:  nop
IL_001b:  ret
} // end of method ActivityWaitStatisticInfoML::set_InWork

.method public hidebysig specialname instance uint32
get_MaxInWork() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::_MaxInWork
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityWaitStatisticInfoML::get_MaxInWork

.method public hidebysig specialname instance void
set_MaxInWork(uint32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::_MaxInWork
IL_0008:  ldarg.0
IL_0009:  ldstr      "MaxInWork"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityWaitStatisticInfoML::set_MaxInWork

.method public hidebysig specialname instance float64
get_Busy() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::_Busy
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityWaitStatisticInfoML::get_Busy

.method public hidebysig specialname instance void
set_Busy(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::_Busy
IL_0008:  ldarg.0
IL_0009:  ldstr      "Busy"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityWaitStatisticInfoML::set_Busy

.method public hidebysig specialname instance float64
get_AverageInWork() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::_AverageInWork
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityWaitStatisticInfoML::get_AverageInWork

.method public hidebysig specialname instance void
set_AverageInWork(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::_AverageInWork
IL_0008:  ldarg.0
IL_0009:  ldstr      "AverageInWork"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityWaitStatisticInfoML::set_AverageInWork

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::.ctor()
IL_0006:  ret
} // end of method ActivityWaitStatisticInfoML::.ctor

.property instance uint32 capacity()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_capacity(uint32)
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_capacity()
} // end of property ActivityWaitStatisticInfoML::capacity
.property instance uint32 InWork()
{
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_InWork()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_InWork(uint32)
} // end of property ActivityWaitStatisticInfoML::InWork
.property instance uint32 MaxInWork()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_MaxInWork(uint32)
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_MaxInWork()
} // end of property ActivityWaitStatisticInfoML::MaxInWork
.property instance float64 Busy()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_Busy(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_Busy()
} // end of property ActivityWaitStatisticInfoML::Busy
.property instance float64 AverageInWork()
{
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_AverageInWork()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_AverageInWork(float64)
} // end of property ActivityWaitStatisticInfoML::AverageInWork
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML
extends SimNetUI.ModelLogic.Base.StatisticInfoBaseML
{
.field private uint32 _ArrivedEntities
.method assembly hidebysig strict virtual
instance void  Reset() cil managed
{
// Code size       17 (0x11)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::Reset()
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  ldc.i4.0
IL_000a:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML::set_ArrivedEntities(uint32)
IL_000f:  nop
IL_0010:  ret
} // end of method ActivityExitStatisticInfoML::Reset

.method public hidebysig specialname instance uint32
get_ArrivedEntities() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML::_ArrivedEntities
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityExitStatisticInfoML::get_ArrivedEntities

.method public hidebysig specialname instance void
set_ArrivedEntities(uint32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML::_ArrivedEntities
IL_0008:  ldarg.0
IL_0009:  ldstr      "ArrivedEntities"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityExitStatisticInfoML::set_ArrivedEntities

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityExitStatisticInfoML::.ctor

.property instance uint32 ArrivedEntities()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML::set_ArrivedEntities(uint32)
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML::get_ArrivedEntities()
} // end of property ActivityExitStatisticInfoML::ArrivedEntities
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML
extends SimNetUI.ModelLogic.Base.ModelLogicBase
{
.field private uint32 _LimitConnections
.field private class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML _ParentActivity
.method public hidebysig specialname instance uint32
get_LimitConnections() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::_LimitConnections
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ConnectorML::get_LimitConnections

.method public hidebysig specialname instance void
set_LimitConnections(uint32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::_LimitConnections
IL_0008:  ldarg.0
IL_0009:  ldstr      "LimitConnections"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ConnectorML::set_LimitConnections

.method public hidebysig specialname instance class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML
get_ParentActivity() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::_ParentActivity
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ConnectorML::get_ParentActivity

.method public hidebysig specialname instance void
set_ParentActivity(class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::_ParentActivity
IL_0008:  ldarg.0
IL_0009:  ldstr      "ParentActivity"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ConnectorML::set_ParentActivity

.method public hidebysig newslot specialname abstract virtual
instance bool  get_IsLimitReached() cil managed
{
} // end of method ConnectorML::get_IsLimitReached

.method family hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.ModelLogicBase::.ctor()
IL_0006:  ret
} // end of method ConnectorML::.ctor

.property instance uint32 LimitConnections()
{
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::get_LimitConnections()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::set_LimitConnections(uint32)
} // end of property ConnectorML::LimitConnections
.property instance class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML
ParentActivity()
{
.get instance class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::get_ParentActivity()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::set_ParentActivity(class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML)
} // end of property ConnectorML::ParentActivity
.property instance bool IsLimitReached()
{
.get instance bool SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::get_IsLimitReached()
} // end of property ConnectorML::IsLimitReached
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteBaseStatisticInfoML
{
.field private uint32 _DepartedEntities
.method assembly hidebysig strict virtual
instance void  Reset() cil managed
{
// Code size       17 (0x11)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::Reset()
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  ldc.i4.0
IL_000a:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML::set_DepartedEntities(uint32)
IL_000f:  nop
IL_0010:  ret
} // end of method ActivityGeneratorStatisticInfoML::Reset

.method public hidebysig specialname instance uint32
get_DepartedEntities() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML::_DepartedEntities
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityGeneratorStatisticInfoML::get_DepartedEntities

.method public hidebysig specialname instance void
set_DepartedEntities(uint32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML::_DepartedEntities
IL_0008:  ldarg.0
IL_0009:  ldstr      "DepartedEntities"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityGeneratorStatisticInfoML::set_DepartedEntities

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteBaseStatisticInfoML::.ctor()
IL_0006:  ret
} // end of method ActivityGeneratorStatisticInfoML::.ctor

.property instance uint32 DepartedEntities()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML::set_DepartedEntities(uint32)
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML::get_DepartedEntities()
} // end of property ActivityGeneratorStatisticInfoML::DepartedEntities
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML
{
.field private float64 _Alpha
.field private int32 _Beta
.method public hidebysig specialname instance float64
get_Alpha() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::_Alpha
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ErlangML::get_Alpha

.method public hidebysig specialname instance void
set_Alpha(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::_Alpha
IL_0008:  ldarg.0
IL_0009:  ldstr      "Alpha"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ErlangML::set_Alpha

.method public hidebysig specialname instance int32
get_Beta() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (int32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::_Beta
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ErlangML::get_Beta

.method public hidebysig specialname instance void
set_Beta(int32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::_Beta
IL_0008:  ldarg.0
IL_0009:  ldstr      "Beta"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ErlangML::set_Beta

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       29 (0x1d)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0007:  ldarg.0
IL_0008:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::get_Alpha()
IL_000d:  ldarg.0
IL_000e:  call       instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::get_Beta()
IL_0013:  callvirt   instance float64 [SimNet]SimNet.RandomObj::Erlang(float64,
int32)
IL_0018:  stloc.0
IL_0019:  br       IL_001b

IL_001b:  ldloc.0
IL_001c:  ret
} // end of method ErlangML::GetNextValue

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::.ctor()
IL_0006:  ret
} // end of method ErlangML::.ctor

.property instance float64 Alpha()
{
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::get_Alpha()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::set_Alpha(float64)
} // end of property ErlangML::Alpha
.property instance int32 Beta()
{
.get instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::get_Beta()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::set_Beta(int32)
} // end of property ErlangML::Beta
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.Base.ActivityBaseML
extends SimNetUI.ModelLogic.Base.ModelLogicBase
{
.field private class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> _InConnectors
.field private class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> _OutConnectors
.field private class SimNetUI.ModelLogic.SimulationML _Parent
.method public hidebysig specialname instance class SimNetUI.ModelLogic.SimulationML
get_SimulationParent() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.SimulationML V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::_Parent
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityBaseML::get_SimulationParent

.method public hidebysig specialname instance void
set_SimulationParent(class SimNetUI.ModelLogic.SimulationML 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::_Parent
IL_0008:  ldarg.0
IL_0009:  ldstr      "SimulationParent"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityBaseML::set_SimulationParent

.method public hidebysig specialname instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>
get_InConnectors() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::_InConnectors
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityBaseML::get_InConnectors

.method public hidebysig specialname instance void
set_InConnectors(class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::_InConnectors
IL_0008:  ldarg.0
IL_0009:  ldstr      "InConnectors"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityBaseML::set_InConnectors

.method public hidebysig specialname instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>
get_OutConnectors() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::_OutConnectors
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityBaseML::get_OutConnectors

.method public hidebysig specialname instance void
set_OutConnectors(class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::_OutConnectors
IL_0008:  ldarg.0
IL_0009:  ldstr      "OutConnectors"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityBaseML::set_OutConnectors

.method assembly hidebysig newslot strict virtual
instance void  OnResetActivity() cil managed
{
// Code size       2 (0x2)
.maxstack 8
IL_0000:  nop
IL_0001:  ret
} // end of method ActivityBaseML::OnResetActivity

.method assembly hidebysig newslot abstract strict virtual
instance void  OnReceiveEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML) cil managed
{
} // end of method ActivityBaseML::OnReceiveEntity

.method assembly hidebysig newslot abstract strict virtual
instance void  RecalculateTimeBasedStatistics(float64 SimulationTime) cil managed
{
} // end of method ActivityBaseML::RecalculateTimeBasedStatistics

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       34 (0x22)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.ModelLogicBase::.ctor()
IL_0006:  nop
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>::.ctor()
IL_000e:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::set_OutConnectors(class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>)
IL_0013:  nop
IL_0014:  ldarg.0
IL_0015:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>::.ctor()
IL_001a:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::set_InConnectors(class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>)
IL_001f:  nop
IL_0020:  nop
IL_0021:  ret
} // end of method ActivityBaseML::.ctor

.property instance class SimNetUI.ModelLogic.SimulationML
SimulationParent()
{
.set instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::set_SimulationParent(class SimNetUI.ModelLogic.SimulationML)
.get instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
} // end of property ActivityBaseML::SimulationParent
.property instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>
InConnectors()
{
.get instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_InConnectors()
.set instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::set_InConnectors(class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>)
} // end of property ActivityBaseML::InConnectors
.property instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>
OutConnectors()
{
.set instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::set_OutConnectors(class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>)
.get instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_OutConnectors()
} // end of property ActivityBaseML::OutConnectors
} // end of class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML
extends SimNetUI.ModelLogic.Activities.Base.ActivityBaseML
{
.field private class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> Send
.field private class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> ProvideEntity
.method public hidebysig specialname instance void
add_Send(class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> 'value') cil managed
{
// Code size       48 (0x30)
.maxstack 3
.locals init (class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> V_0,
class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> V_1,
class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> V_2,
bool V_3)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::Send
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::Send
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  ceq
IL_0028:  ldc.i4.0
IL_0029:  ceq
IL_002b:  stloc.3
IL_002c:  ldloc.3
IL_002d:  brtrue   IL_0007

IL_002f:  ret
} // end of method ActivityRouteBaseML::add_Send

.method public hidebysig specialname instance void
remove_Send(class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> 'value') cil managed
{
// Code size       48 (0x30)
.maxstack 3
.locals init (class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> V_0,
class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> V_1,
class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> V_2,
bool V_3)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::Send
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Remove(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::Send
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  ceq
IL_0028:  ldc.i4.0
IL_0029:  ceq
IL_002b:  stloc.3
IL_002c:  ldloc.3
IL_002d:  brtrue   IL_0007

IL_002f:  ret
} // end of method ActivityRouteBaseML::remove_Send

.method public hidebysig specialname instance void
add_ProvideEntity(class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> 'value') cil managed
{
// Code size       48 (0x30)
.maxstack 3
.locals init (class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_0,
class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_1,
class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_2,
bool V_3)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::ProvideEntity
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::ProvideEntity
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  ceq
IL_0028:  ldc.i4.0
IL_0029:  ceq
IL_002b:  stloc.3
IL_002c:  ldloc.3
IL_002d:  brtrue   IL_0007

IL_002f:  ret
} // end of method ActivityRouteBaseML::add_ProvideEntity

.method public hidebysig specialname instance void
remove_ProvideEntity(class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> 'value') cil managed
{
// Code size       48 (0x30)
.maxstack 3
.locals init (class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_0,
class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_1,
class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_2,
bool V_3)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::ProvideEntity
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Remove(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::ProvideEntity
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  ceq
IL_0028:  ldc.i4.0
IL_0029:  ceq
IL_002b:  stloc.3
IL_002c:  ldloc.3
IL_002d:  brtrue   IL_0007

IL_002f:  ret
} // end of method ActivityRouteBaseML::remove_ProvideEntity

.method assembly hidebysig instance class SimNetUI.ModelLogic.Entity.EntityML
GetProvidedEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML start) cil managed
{
// Code size       55 (0x37)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Entity.EntityML V_0,
bool V_1)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::ProvideEntity
IL_0007:  ldnull
IL_0008:  ceq
IL_000a:  stloc.1
IL_000b:  ldloc.1
IL_000c:  brtrue   IL_001e

IL_000e:  nop
IL_000f:  ldarg.0
IL_0010:  ldfld      class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::ProvideEntity
IL_0015:  ldarg.1
IL_0016:  callvirt   instance !1 class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>::Invoke(!0)
IL_001b:  stloc.0
IL_001c:  br       IL_0035

IL_001e:  nop
IL_001f:  ldstr      "The event ProvideEntity has no suscribers for acti"
+ "vity "
IL_0024:  ldarg.0
IL_0025:  call       instance string SimNetUI.ModelLogic.Base.ModelLogicBase::get_Name()
IL_002a:  call       string [mscorlib]System.String::Concat(string,
string)
IL_002f:  newobj     instance void SimNetUI.ModelLogic.Base.SimNetUIModelLogicException::.ctor(string)
IL_0034:  throw

IL_0035:  ldloc.0
IL_0036:  ret
} // end of method ActivityRouteBaseML::GetProvidedEntity

.method family hidebysig instance void
SendEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML,
class SimNetUI.ModelLogic.Entity.EntityML entityML) cil managed
{
// Code size       108 (0x6c)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML V_0,
bool V_1)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_0007:  callvirt   instance bool SimNetUI.ModelLogic.SimulationML::CheckIfSimulationIsCanceld()
IL_000c:  stloc.1
IL_000d:  ldloc.1
IL_000e:  brtrue   IL_005d

IL_0010:  nop
IL_0011:  ldarg.0
IL_0012:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_0017:  callvirt   instance void SimNetUI.ModelLogic.SimulationML::NotifySimulationTimeChanged()
IL_001c:  nop
IL_001d:  ldarg.0
IL_001e:  ldfld      class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::Send
IL_0023:  ldarg.1
IL_0024:  ldarg.2
IL_0025:  callvirt   instance !2 class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>::Invoke(!0,
!1)
IL_002a:  stloc.0
IL_002b:  ldloc.0
IL_002c:  callvirt   instance class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::get_ParentActivity()
IL_0031:  ldloc.0
IL_0032:  ldarg.1
IL_0033:  callvirt   instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::OnReceiveEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML)
IL_0038:  nop
IL_0039:  ldarg.0
IL_003a:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_003f:  callvirt   instance bool SimNetUI.ModelLogic.SimulationML::CheckIfSimulationIsCanceld()
IL_0044:  ldc.i4.0
IL_0045:  ceq
IL_0047:  stloc.1
IL_0048:  ldloc.1
IL_0049:  brtrue   IL_005a

IL_004b:  nop
IL_004c:  ldarg.0
IL_004d:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_0052:  callvirt   instance void SimNetUI.ModelLogic.SimulationML::StopSimulation()
IL_0057:  nop
IL_0058:  br       IL_006b

IL_005a:  nop
IL_005b:  br       IL_006b

IL_005d:  nop
IL_005e:  ldarg.0
IL_005f:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_0064:  callvirt   instance void SimNetUI.ModelLogic.SimulationML::StopSimulation()
IL_0069:  nop
IL_006a:  nop
IL_006b:  ret
} // end of method ActivityRouteBaseML::SendEntity

.method family hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityRouteBaseML::.ctor

.event class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> Send
{
.addon instance void SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::add_Send(class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>)
.removeon instance void SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::remove_Send(class [mscorlib]System.Func`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>)
} // end of event ActivityRouteBaseML::Send
.event class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> ProvideEntity
{
.removeon instance void SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::remove_ProvideEntity(class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>)
.addon instance void SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::add_ProvideEntity(class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>)
} // end of event ActivityRouteBaseML::ProvideEntity
} // end of class SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.Base.ActivityQueueBaseML
extends SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML
{
.method assembly hidebysig strict virtual
instance void  OnResetActivity() cil managed
{
// Code size       9 (0x9)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::OnResetActivity()
IL_0007:  nop
IL_0008:  ret
} // end of method ActivityQueueBaseML::OnResetActivity

.method family hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityQueueBaseML::.ctor

} // end of class SimNetUI.ModelLogic.Activities.Base.ActivityQueueBaseML

.class interface private abstract auto ansi SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.IStatisticInfo`1<(SimNetUI.ModelLogic.Base.StatisticInfoBaseML) T>
{
.method public hidebysig newslot specialname abstract virtual
instance !T  get_Statistic() cil managed
{
} // end of method IStatisticInfo`1::get_Statistic

.method public hidebysig newslot specialname abstract virtual
instance void  set_Statistic(!T 'value') cil managed
{
} // end of method IStatisticInfo`1::set_Statistic

.property instance !T Statistic()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.IStatisticInfo`1::set_Statistic(!T)
.get instance !T SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.IStatisticInfo`1::get_Statistic()
} // end of property IStatisticInfo`1::Statistic
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.IStatisticInfo`1

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ActivityAssignResourceML
extends SimNetUI.ModelLogic.Activities.Base.ActivityQueueBaseML
implements class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.IStatisticInfo`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML>
{
.class auto ansi nested private beforefieldinit NestedClassSimulationLogic
extends [mscorlib]System.Object
{
.field private class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML parent
.method public hidebysig specialname rtspecialname
instance void  .ctor(class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML parent) cil managed
{
// Code size       17 (0x11)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
IL_0006:  nop
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  ldarg.1
IL_000a:  stfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_000f:  nop
IL_0010:  ret
} // end of method NestedClassSimulationLogic::.ctor

.method public hidebysig instance void
AssignResource(float64 t,
float64 priority,
object[] p) cil managed
{
.custom instance void [SimNet]SimNet.TELLAttribute::.ctor() = ( 01 00 00 00 )
.param [3]
.custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 )
// Code size       615 (0x267)
.maxstack 5
.locals init (bool V_0,
bool V_1,
int32 V_2,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML V_3,
class SimNetUI.ModelLogic.Entity.EntityML V_4,
bool V_5,
object[] locals,
class [SimNet]SimNet.SimObj obj,
string label)
call       class [SimNet]SimNet.SimObj [SimNet]SimNet.Scheduler::GetCurrentSchedObj()
stloc      obj
ldloc      obj
callvirt   instance string [SimNet]SimNet.SimObj::get_Label()
stloc      label
ldloc      label
ldstr ""
call       bool [mscorlib]System.String::op_Equality(string,string) 
brfalse    SIM_JUMP_0
br         IL_0000
SIM_JUMP_0:   ldloc      label
ldstr "SIM_WAIT_0"
call       bool [mscorlib]System.String::op_Equality(string,string) 
brfalse    SIM_JUMP_1
br         SIM_WAIT_0
SIM_JUMP_1:   ldloc      label
ldstr "SIM_WAIT_1"
call       bool [mscorlib]System.String::op_Equality(string,string) 
brfalse    SIM_JUMP_2
br         SIM_WAIT_1
SIM_JUMP_2:   ldloc      label
ldstr "SIM_WAIT_2"
call       bool [mscorlib]System.String::op_Equality(string,string) 
brfalse    IL_0266
br         SIM_WAIT_2
IL_0000:  nop
IL_0001:  ldc.i4.0
IL_0002:  stloc.0
IL_0003:  ldc.i4.0
IL_0004:  stloc.1
IL_0005:  ldarg.0
IL_0006:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_000b:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::resource
IL_0010:  callvirt   instance int32 [SimNet]SimNet.ResourceObj::get_Resources()
IL_0015:  brfalse  IL_0024

IL_0017:  ldarg.0
IL_0018:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_001d:  callvirt   instance bool SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AllResourcesAvailable()
IL_0022:  br       IL_0025

IL_0024:  ldc.i4.0
IL_0025:  stloc.s    V_5
IL_0027:  ldloc.s    V_5
IL_0029:  brtrue   IL_0048

IL_002b:  nop
IL_002c:  ldarg.0
IL_002d:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0032:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_0037:  dup
IL_0038:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_003d:  ldc.i4.1
IL_003e:  add
IL_003f:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_InQueue(uint32)
IL_0044:  nop
IL_0045:  ldc.i4.1
IL_0046:  stloc.1
IL_0047:  nop
.try
{
IL_0048:
ldc.i4.s 6
newarr		[mscorlib]System.Object
stloc  		locals
ldloc		locals
ldc.i4.s 0
ldloc.s 0
stelem.ref
ldloc		locals
ldc.i4.s 1
ldloc.s 1
box			[mscorlib]System.Boolean
stelem.ref
ldloc		locals
ldc.i4.s 2
ldloc.s 2
box			[mscorlib]System.Int32
stelem.ref
ldloc		locals
ldc.i4.s 3
ldloc.s 3
stelem.ref
ldloc		locals
ldc.i4.s 4
ldloc.s 4
stelem.ref
ldloc		locals
ldc.i4.s 5
ldloc.s 5
box			[mscorlib]System.Boolean
stelem.ref
ldloc      obj
ldloc      locals
callvirt   instance void [SimNet]SimNet.SimObj::set_Locals(object[])
ldloc      obj
ldstr "SIM_WAIT_0"
callvirt   instance void [SimNet]SimNet.SimObj::set_Label(string)
ldloc      obj
ldarg.3
callvirt   instance void [SimNet]SimNet.SimObj::set_Params(object[])
nop
IL_0049:  ldarg.0
IL_004a:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_004f:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::resource
IL_0054:  ldftn      instance bool [SimNet]SimNet.ResourceObj::Give(object,
int32,
float64)
IL_005a:  newobj     instance void [SimNet]SimNet.GiveMethod::.ctor(object,
native int)
IL_005f:  ldarg.0
IL_0060:  ldc.i4.1
IL_0061:  ldloca.s   V_0
IL_0063:  ldc.r8     0.0
IL_006c:  call       void [SimNet]SimNet.Simulation::WaitFor(class [SimNet]SimNet.GiveMethod,
object,
int32,
bool&,
float64)
nop
ret
IL_0071:  nop
IL_0072:  nop
IL_0073:  leave    IL_007a

}  // end .try
catch [mscorlib]System.Object
{
IL_0075:  pop
IL_0076:  nop
IL_0077:  nop
IL_0078:  leave    IL_007a

}  // end handler
SIM_WAIT_0:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc     locals
ldc.i4.s 0
ldelem.ref
stloc.s 0
ldloc     locals
ldc.i4.s 1
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 1
ldloc     locals
ldc.i4.s 2
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 2
ldloc     locals
ldc.i4.s 3
ldelem.ref
stloc.s 3
ldloc     locals
ldc.i4.s 4
ldelem.ref
stloc.s 4
ldloc     locals
ldc.i4.s 5
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 5
IL_007a:  nop
IL_007b:  ldc.i4.0
IL_007c:  stloc.2
IL_007d:  br         IL_010e

IL_0082:  nop
.try
{
IL_0083:
ldc.i4.s 6
newarr		[mscorlib]System.Object
stloc  		locals
ldloc		locals
ldc.i4.s 0
ldloc.s 0
stelem.ref
ldloc		locals
ldc.i4.s 1
ldloc.s 1
box			[mscorlib]System.Boolean
stelem.ref
ldloc		locals
ldc.i4.s 2
ldloc.s 2
box			[mscorlib]System.Int32
stelem.ref
ldloc		locals
ldc.i4.s 3
ldloc.s 3
stelem.ref
ldloc		locals
ldc.i4.s 4
ldloc.s 4
stelem.ref
ldloc		locals
ldc.i4.s 5
ldloc.s 5
box			[mscorlib]System.Boolean
stelem.ref
ldloc      obj
ldloc      locals
callvirt   instance void [SimNet]SimNet.SimObj::set_Locals(object[])
ldloc      obj
ldstr "SIM_WAIT_1"
callvirt   instance void [SimNet]SimNet.SimObj::set_Label(string)
ldloc      obj
ldarg.3
callvirt   instance void [SimNet]SimNet.SimObj::set_Params(object[])
nop
IL_0084:  ldarg.0
IL_0085:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_008a:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_008f:  ldloc.2
IL_0090:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_0095:  callvirt   instance class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_009a:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
IL_009f:  ldftn      instance bool [SimNet]SimNet.ResourceObj::Give(object,
int32,
float64)
IL_00a5:  newobj     instance void [SimNet]SimNet.GiveMethod::.ctor(object,
native int)
IL_00aa:  ldarg.0
IL_00ab:  ldarg.0
IL_00ac:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_00b1:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_00b6:  ldloc.2
IL_00b7:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_00bc:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_00c1:  ldloca.s   V_0
IL_00c3:  ldc.r8     0.0
IL_00cc:  call       void [SimNet]SimNet.Simulation::WaitFor(class [SimNet]SimNet.GiveMethod,
object,
int32,
bool&,
float64)
nop
ret
IL_00d1:  nop
IL_00d2:  nop
IL_00d3:  leave    IL_00da

}  // end .try
catch [mscorlib]System.Object
{
IL_00d5:  pop
IL_00d6:  nop
IL_00d7:  nop
IL_00d8:  leave    IL_00da

}  // end handler
SIM_WAIT_1:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc     locals
ldc.i4.s 0
ldelem.ref
stloc.s 0
ldloc     locals
ldc.i4.s 1
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 1
ldloc     locals
ldc.i4.s 2
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 2
ldloc     locals
ldc.i4.s 3
ldelem.ref
stloc.s 3
ldloc     locals
ldc.i4.s 4
ldelem.ref
stloc.s 4
ldloc     locals
ldc.i4.s 5
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 5
IL_00da:  nop
IL_00db:  ldarg.0
IL_00dc:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_00e1:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_00e6:  dup
IL_00e7:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::get_AssignedResources()
IL_00ec:  ldarg.0
IL_00ed:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_00f2:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_00f7:  ldloc.2
IL_00f8:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_00fd:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_0102:  add
IL_0103:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::set_AssignedResources(uint32)
IL_0108:  nop
IL_0109:  nop
IL_010a:  ldloc.2
IL_010b:  ldc.i4.1
IL_010c:  add
IL_010d:  stloc.2
IL_010e:  ldloc.2
IL_010f:  ldarg.0
IL_0110:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0115:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_011a:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Count()
IL_011f:  clt
IL_0121:  stloc.s    V_5
IL_0123:  ldloc.s    V_5
IL_0125:  brtrue     IL_0082

IL_012a:  ldarg.0
IL_012b:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0130:  callvirt   instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_OutConnectors()
IL_0135:  ldstr      "Out"
IL_013a:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>::get_Item(!0)
IL_013f:  stloc.3
IL_0140:  ldarg.0
IL_0141:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0146:  ldloc.3
IL_0147:  callvirt   instance class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::GetProvidedEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML)
IL_014c:  stloc.s    V_4
IL_014e:  ldc.i4.0
IL_014f:  stloc.2
IL_0150:  br         IL_01ec

IL_0155:  nop
IL_0156:  ldarg.0
IL_0157:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_015c:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_0161:  ldloc.2
IL_0162:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_0167:  callvirt   instance class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_016c:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
IL_0171:  ldarg.0
IL_0172:  ldarg.0
IL_0173:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0178:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_017d:  ldloc.2
IL_017e:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_0183:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_0188:  callvirt   instance void [SimNet]SimNet.ResourceObj::TakeBack(object,
int32)
IL_018d:  nop
.try
{
IL_018e:
ldc.i4.s 6
newarr		[mscorlib]System.Object
stloc  		locals
ldloc		locals
ldc.i4.s 0
ldloc.s 0
stelem.ref
ldloc		locals
ldc.i4.s 1
ldloc.s 1
box			[mscorlib]System.Boolean
stelem.ref
ldloc		locals
ldc.i4.s 2
ldloc.s 2
box			[mscorlib]System.Int32
stelem.ref
ldloc		locals
ldc.i4.s 3
ldloc.s 3
stelem.ref
ldloc		locals
ldc.i4.s 4
ldloc.s 4
stelem.ref
ldloc		locals
ldc.i4.s 5
ldloc.s 5
box			[mscorlib]System.Boolean
stelem.ref
ldloc      obj
ldloc      locals
callvirt   instance void [SimNet]SimNet.SimObj::set_Locals(object[])
ldloc      obj
ldstr "SIM_WAIT_2"
callvirt   instance void [SimNet]SimNet.SimObj::set_Label(string)
ldloc      obj
ldarg.3
callvirt   instance void [SimNet]SimNet.SimObj::set_Params(object[])
nop
IL_018f:  ldarg.0
IL_0190:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0195:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_019a:  ldloc.2
IL_019b:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_01a0:  callvirt   instance class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_01a5:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
IL_01aa:  ldftn      instance bool [SimNet]SimNet.ResourceObj::Give(object,
int32,
float64)
IL_01b0:  newobj     instance void [SimNet]SimNet.GiveMethod::.ctor(object,
native int)
IL_01b5:  ldloc.s    V_4
IL_01b7:  ldarg.0
IL_01b8:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_01bd:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_01c2:  ldloc.2
IL_01c3:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_01c8:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_01cd:  ldloca.s   V_0
IL_01cf:  ldc.r8     0.0
IL_01d8:  call       void [SimNet]SimNet.Simulation::WaitFor(class [SimNet]SimNet.GiveMethod,
object,
int32,
bool&,
float64)
nop
ret
IL_01dd:  nop
IL_01de:  nop
IL_01df:  leave    IL_01e6

}  // end .try
catch [mscorlib]System.Object
{
IL_01e1:  pop
IL_01e2:  nop
IL_01e3:  nop
IL_01e4:  leave    IL_01e6

}  // end handler
SIM_WAIT_2:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc     locals
ldc.i4.s 0
ldelem.ref
stloc.s 0
ldloc     locals
ldc.i4.s 1
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 1
ldloc     locals
ldc.i4.s 2
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 2
ldloc     locals
ldc.i4.s 3
ldelem.ref
stloc.s 3
ldloc     locals
ldc.i4.s 4
ldelem.ref
stloc.s 4
ldloc     locals
ldc.i4.s 5
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 5
IL_01e6:  nop
IL_01e7:  nop
IL_01e8:  ldloc.2
IL_01e9:  ldc.i4.1
IL_01ea:  add
IL_01eb:  stloc.2
IL_01ec:  ldloc.2
IL_01ed:  ldarg.0
IL_01ee:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_01f3:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_01f8:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Count()
IL_01fd:  clt
IL_01ff:  stloc.s    V_5
IL_0201:  ldloc.s    V_5
IL_0203:  brtrue     IL_0155

IL_0208:  ldarg.0
IL_0209:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_020e:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_0213:  dup
IL_0214:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::get_ProcessedEntities()
IL_0219:  ldc.i4.1
IL_021a:  add
IL_021b:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::set_ProcessedEntities(uint32)
IL_0220:  nop
IL_0221:  ldloc.1
IL_0222:  ldc.i4.0
IL_0223:  ceq
IL_0225:  stloc.s    V_5
IL_0227:  ldloc.s    V_5
IL_0229:  brtrue   IL_0244

IL_022b:  ldarg.0
IL_022c:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0231:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_0236:  dup
IL_0237:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_023c:  ldc.i4.1
IL_023d:  sub
IL_023e:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_InQueue(uint32)
IL_0243:  nop
IL_0244:  ldarg.0
IL_0245:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_024a:  ldloc.3
IL_024b:  ldloc.s    V_4
IL_024d:  callvirt   instance void SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::SendEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,
class SimNetUI.ModelLogic.Entity.EntityML)
IL_0252:  nop
IL_0253:  ldarg.0
IL_0254:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0259:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::resource
IL_025e:  ldarg.0
IL_025f:  ldc.i4.1
IL_0260:  callvirt   instance void [SimNet]SimNet.ResourceObj::TakeBack(object,
int32)
IL_0265:  nop
IL_0266: call       void [SimNet]SimNet.Scheduler::RemoveSchedObj()
  ret
} // end of method NestedClassSimulationLogic::AssignResource

} // end of class NestedClassSimulationLogic

.field private class [SimNet]SimNet.ResourceObj resource
.field private class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML _Statistic
.field private class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> _EntityResourceDependencies
.method public hidebysig newslot specialname virtual final
instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML
get_Statistic() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::_Statistic
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityAssignResourceML::get_Statistic

.method public hidebysig newslot specialname virtual final
instance void  set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::_Statistic
IL_0008:  ldarg.0
IL_0009:  ldstr      "Statistic"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityAssignResourceML::set_Statistic

.method public hidebysig specialname instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>
get_EntityResourceDependencies() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::_EntityResourceDependencies
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityAssignResourceML::get_EntityResourceDependencies

.method public hidebysig specialname instance void
set_EntityResourceDependencies(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::_EntityResourceDependencies
IL_0008:  ldarg.0
IL_0009:  ldstr      "EntityResourceDependencies"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityAssignResourceML::set_EntityResourceDependencies

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       10 (0xa)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityQueueBaseML::.ctor()
IL_0006:  nop
IL_0007:  nop
IL_0008:  nop
IL_0009:  ret
} // end of method ActivityAssignResourceML::.ctor

.method family hidebysig instance bool
AllResourcesAvailable() cil managed
{
// Code size       96 (0x60)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML V_0,
bool V_1,
class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> V_2,
bool V_3)
IL_0000:  nop
IL_0001:  nop
IL_0002:  ldarg.0
IL_0003:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::_EntityResourceDependencies
IL_0008:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::GetEnumerator()
IL_000d:  stloc.2
.try
{
IL_000e:  br       IL_003c

IL_0010:  ldloc.2
IL_0011:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Current()
IL_0016:  stloc.0
IL_0017:  nop
IL_0018:  ldloc.0
IL_0019:  callvirt   instance class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_001e:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
IL_0023:  callvirt   instance int32 [SimNet]SimNet.ResourceObj::get_Resources()
IL_0028:  ldloc.0
IL_0029:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_002e:  clt
IL_0030:  ldc.i4.0
IL_0031:  ceq
IL_0033:  stloc.3
IL_0034:  ldloc.3
IL_0035:  brtrue   IL_003b

IL_0037:  ldc.i4.0
IL_0038:  stloc.1
IL_0039:  leave    IL_005d

IL_003b:  nop
IL_003c:  ldloc.2
IL_003d:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_0042:  stloc.3
IL_0043:  ldloc.3
IL_0044:  brtrue   IL_0010

IL_0046:  leave    IL_0058

}  // end .try
finally
{
IL_0048:  ldloc.2
IL_0049:  ldnull
IL_004a:  ceq
IL_004c:  stloc.3
IL_004d:  ldloc.3
IL_004e:  brtrue   IL_0057

IL_0050:  ldloc.2
IL_0051:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_0056:  nop
IL_0057:  endfinally
}  // end handler
IL_0058:  nop
IL_0059:  ldc.i4.1
IL_005a:  stloc.1
IL_005b:  br       IL_005d

IL_005d:  nop
IL_005e:  ldloc.1
IL_005f:  ret
} // end of method ActivityAssignResourceML::AllResourcesAvailable

.method assembly hidebysig strict virtual
instance void  OnResetActivity() cil managed
{
// Code size       110 (0x6e)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML V_0,
class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> V_1,
bool V_2)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  newobj     instance void [SimNet]SimNet.ResourceObj::.ctor()
IL_0007:  stfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::resource
IL_000c:  ldarg.0
IL_000d:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::resource
IL_0012:  ldc.i4.1
IL_0013:  callvirt   instance void [SimNet]SimNet.ResourceObj::CreateResource(int32)
IL_0018:  nop
IL_0019:  ldarg.0
IL_001a:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_001f:  callvirt   instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::Reset()
IL_0024:  nop
IL_0025:  nop
IL_0026:  ldarg.0
IL_0027:  call       instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_002c:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::GetEnumerator()
IL_0031:  stloc.1
.try
{
IL_0032:  br       IL_0049

IL_0034:  ldloc.1
IL_0035:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Current()
IL_003a:  stloc.0
IL_003b:  nop
IL_003c:  ldloc.0
IL_003d:  callvirt   instance class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_0042:  callvirt   instance void SimNetUI.ModelLogic.Resources.ResourceML::clearResource()
IL_0047:  nop
IL_0048:  nop
IL_0049:  ldloc.1
IL_004a:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_004f:  stloc.2
IL_0050:  ldloc.2
IL_0051:  brtrue   IL_0034

IL_0053:  leave    IL_0065

}  // end .try
finally
{
IL_0055:  ldloc.1
IL_0056:  ldnull
IL_0057:  ceq
IL_0059:  stloc.2
IL_005a:  ldloc.2
IL_005b:  brtrue   IL_0064

IL_005d:  ldloc.1
IL_005e:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_0063:  nop
IL_0064:  endfinally
}  // end handler
IL_0065:  nop
IL_0066:  ldarg.0
IL_0067:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityQueueBaseML::OnResetActivity()
IL_006c:  nop
IL_006d:  ret
} // end of method ActivityAssignResourceML::OnResetActivity

.method assembly hidebysig strict virtual
instance void  RecalculateTimeBasedStatistics(float64 SimulationTime) cil managed
{
// Code size       14 (0xe)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_0007:  callvirt   instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::UpdateTimeBasedStatistics()
IL_000c:  nop
IL_000d:  ret
} // end of method ActivityAssignResourceML::RecalculateTimeBasedStatistics

.method assembly hidebysig strict virtual
instance void  OnReceiveEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML) cil managed
{
// Code size       46 (0x2e)
.maxstack 4
.locals init (class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  newobj     instance void SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::.ctor(class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML)
IL_0007:  stloc.0
IL_0008:  ldloc.0
IL_0009:  ldftn      instance void SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::AssignResource(float64,
float64,
object[])
IL_000f:  newobj     instance void [SimNet]SimNet.TellMethod::.ctor(object,
native int)
IL_0014:  ldc.r8     0.0
IL_001d:  ldc.r8     0.0
IL_0026:  ldnull
IL_0027:  call       void [SimNet]SimNet.Simulation::Tell(class [SimNet]SimNet.TellMethod,
float64,
float64,
object[])
IL_002c:  nop
IL_002d:  ret
} // end of method ActivityAssignResourceML::OnReceiveEntity

.property instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML
Statistic()
{
.set instance void SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML)
.get instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
} // end of property ActivityAssignResourceML::Statistic
.property instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>
EntityResourceDependencies()
{
.set instance void SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::set_EntityResourceDependencies(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>)
.get instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
} // end of property ActivityAssignResourceML::EntityResourceDependencies
} // end of class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML
extends SimNetUI.ModelLogic.Base.StatisticInfoBaseML
{
.field private uint32 _ProcessedEntities
.field private uint32 _ReleasedResources
.method assembly hidebysig strict virtual
instance void  Reset() cil managed
{
// Code size       25 (0x19)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::Reset()
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  ldc.i4.0
IL_000a:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::set_ProcessedEntities(uint32)
IL_000f:  nop
IL_0010:  ldarg.0
IL_0011:  ldc.i4.0
IL_0012:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::set_ReleasedResources(uint32)
IL_0017:  nop
IL_0018:  ret
} // end of method ActivityReleaseResourceStatisticInfoML::Reset

.method public hidebysig specialname instance uint32
get_ProcessedEntities() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::_ProcessedEntities
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityReleaseResourceStatisticInfoML::get_ProcessedEntities

.method public hidebysig specialname instance void
set_ProcessedEntities(uint32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::_ProcessedEntities
IL_0008:  ldarg.0
IL_0009:  ldstr      "ProcessedEntities"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityReleaseResourceStatisticInfoML::set_ProcessedEntities

.method public hidebysig specialname instance uint32
get_ReleasedResources() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::_ReleasedResources
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityReleaseResourceStatisticInfoML::get_ReleasedResources

.method public hidebysig specialname instance void
set_ReleasedResources(uint32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::_ReleasedResources
IL_0008:  ldarg.0
IL_0009:  ldstr      "ReleasedResources"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityReleaseResourceStatisticInfoML::set_ReleasedResources

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityReleaseResourceStatisticInfoML::.ctor

.property instance uint32 ProcessedEntities()
{
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::get_ProcessedEntities()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::set_ProcessedEntities(uint32)
} // end of property ActivityReleaseResourceStatisticInfoML::ProcessedEntities
.property instance uint32 ReleasedResources()
{
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::get_ReleasedResources()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::set_ReleasedResources(uint32)
} // end of property ActivityReleaseResourceStatisticInfoML::ReleasedResources
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML
extends SimNetUI.ModelLogic.Base.ModelLogicBase
{
.field private float64 _Start
.field private float64 _End
.field private class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> _Content
.method public hidebysig specialname instance float64
get_Start() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::_Start
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ScheduleML::get_Start

.method public hidebysig specialname instance void
set_Start(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::_Start
IL_0008:  ldarg.0
IL_0009:  ldstr      "Start"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ScheduleML::set_Start

.method public hidebysig specialname instance float64
get_Stop() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::_End
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ScheduleML::get_Stop

.method public hidebysig specialname instance void
set_Stop(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::_End
IL_0008:  ldarg.0
IL_0009:  ldstr      "Stop"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ScheduleML::set_Stop

.method public hidebysig specialname instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML>
get_Content() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::_Content
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ScheduleML::get_Content

.method public hidebysig specialname instance void
set_Content(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::_Content
IL_0008:  ldarg.0
IL_0009:  ldstr      "Content"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ScheduleML::set_Content

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.ModelLogicBase::.ctor()
IL_0006:  ret
} // end of method ScheduleML::.ctor

.property instance float64 Start()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::set_Start(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Start()
} // end of property ScheduleML::Start
.property instance float64 Stop()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::set_Stop(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Stop()
} // end of property ScheduleML::Stop
.property instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML>
Content()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::set_Content(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML>)
.get instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Content()
} // end of property ScheduleML::Content
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML
{
.field private class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> '<Outgoing>k__BackingField'
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
.method public hidebysig specialname instance class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>
get_Outgoing() cil managed
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
// Code size       11 (0xb)
.maxstack 3
.locals init (class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> V_0)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML::'<Outgoing>k__BackingField'
IL_0006:  stloc.0
IL_0007:  br       IL_0009

IL_0009:  ldloc.0
IL_000a:  ret
} // end of method OutConnectorML::get_Outgoing

.method public hidebysig specialname instance void
set_Outgoing(class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> 'value') cil managed
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
// Code size       8 (0x8)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML::'<Outgoing>k__BackingField'
IL_0007:  ret
} // end of method OutConnectorML::set_Outgoing

.method public hidebysig specialname virtual
instance bool  get_IsLimitReached() cil managed
{
// Code size       30 (0x1e)
.maxstack 3
.locals init (bool V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML::get_Outgoing()
IL_0007:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>::get_Count()
IL_000c:  conv.i8
IL_000d:  ldarg.0
IL_000e:  call       instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::get_LimitConnections()
IL_0013:  conv.u8
IL_0014:  clt
IL_0016:  ldc.i4.0
IL_0017:  ceq
IL_0019:  stloc.0
IL_001a:  br       IL_001c

IL_001c:  ldloc.0
IL_001d:  ret
} // end of method OutConnectorML::get_IsLimitReached

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       22 (0x16)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::.ctor()
IL_0006:  nop
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>::.ctor()
IL_000e:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML::set_Outgoing(class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>)
IL_0013:  nop
IL_0014:  nop
IL_0015:  ret
} // end of method OutConnectorML::.ctor

.property instance class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>
Outgoing()
{
.get instance class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML::get_Outgoing()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML::set_Outgoing(class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>)
} // end of property OutConnectorML::Outgoing
.property instance bool IsLimitReached()
{
.get instance bool SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML::get_IsLimitReached()
} // end of property OutConnectorML::IsLimitReached
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ActivityExitML
extends SimNetUI.ModelLogic.Activities.Base.ActivityBaseML
implements class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.IStatisticInfo`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML>
{
.field private class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML _Statistic
.field private uint32 _EndSimulationAtEntityCount
.method public hidebysig newslot specialname virtual final
instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML
get_Statistic() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityExitML::_Statistic
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityExitML::get_Statistic

.method public hidebysig newslot specialname virtual final
instance void  set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityExitML::_Statistic
IL_0008:  ldarg.0
IL_0009:  ldstr      "Statistic"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityExitML::set_Statistic

.method public hidebysig specialname instance uint32
get_EndSimulationAtEntityCount() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ActivityExitML::_EndSimulationAtEntityCount
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityExitML::get_EndSimulationAtEntityCount

.method public hidebysig specialname instance void
set_EndSimulationAtEntityCount(uint32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      uint32 SimNetUI.ModelLogic.Activities.ActivityExitML::_EndSimulationAtEntityCount
IL_0008:  ldarg.0
IL_0009:  ldstr      "EndSimulationAtEntityCount"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityExitML::set_EndSimulationAtEntityCount

.method assembly hidebysig strict virtual
instance void  RecalculateTimeBasedStatistics(float64 SimulationTime) cil managed
{
// Code size       2 (0x2)
.maxstack 8
IL_0000:  nop
IL_0001:  ret
} // end of method ActivityExitML::RecalculateTimeBasedStatistics

.method assembly hidebysig strict virtual
instance void  OnResetActivity() cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityExitML::get_Statistic()
IL_0007:  callvirt   instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::Reset()
IL_000c:  nop
IL_000d:  ldarg.0
IL_000e:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::OnResetActivity()
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityExitML::OnResetActivity

.method assembly hidebysig strict virtual
instance void  OnReceiveEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML) cil managed
{
// Code size       59 (0x3b)
.maxstack 3
.locals init (bool V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityExitML::get_Statistic()
IL_0007:  dup
IL_0008:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML::get_ArrivedEntities()
IL_000d:  ldc.i4.1
IL_000e:  add
IL_000f:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML::set_ArrivedEntities(uint32)
IL_0014:  nop
IL_0015:  ldarg.0
IL_0016:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityExitML::get_Statistic()
IL_001b:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML::get_ArrivedEntities()
IL_0020:  ldarg.0
IL_0021:  call       instance uint32 SimNetUI.ModelLogic.Activities.ActivityExitML::get_EndSimulationAtEntityCount()
IL_0026:  clt.un
IL_0028:  stloc.0
IL_0029:  ldloc.0
IL_002a:  brtrue   IL_003a

IL_002c:  nop
IL_002d:  ldarg.0
IL_002e:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_0033:  callvirt   instance void SimNetUI.ModelLogic.SimulationML::StopSimulation()
IL_0038:  nop
IL_0039:  nop
IL_003a:  ret
} // end of method ActivityExitML::OnReceiveEntity

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityExitML::.ctor

.property instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML
Statistic()
{
.get instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityExitML::get_Statistic()
.set instance void SimNetUI.ModelLogic.Activities.ActivityExitML::set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML)
} // end of property ActivityExitML::Statistic
.property instance uint32 EndSimulationAtEntityCount()
{
.get instance uint32 SimNetUI.ModelLogic.Activities.ActivityExitML::get_EndSimulationAtEntityCount()
.set instance void SimNetUI.ModelLogic.Activities.ActivityExitML::set_EndSimulationAtEntityCount(uint32)
} // end of property ActivityExitML::EndSimulationAtEntityCount
} // end of class SimNetUI.ModelLogic.Activities.ActivityExitML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.SimulationML
extends SimNetUI.ModelLogic.Base.ModelLogicBase
{
.class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass1'
extends [mscorlib]System.Object
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
.field public string name
.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
IL_0006:  ret
} // end of method '<>c__DisplayClass1'::.ctor

.method public hidebysig instance bool
'<ContainsActivity>b__0'(class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML activityML) cil managed
{
// Code size       22 (0x16)
.maxstack 3
.locals init (bool V_0)
IL_0000:  ldarg.1
IL_0001:  callvirt   instance string SimNetUI.ModelLogic.Base.ModelLogicBase::get_Name()
IL_0006:  ldarg.0
IL_0007:  ldfld      string SimNetUI.ModelLogic.SimulationML/'<>c__DisplayClass1'::name
IL_000c:  call       bool [mscorlib]System.String::op_Equality(string,
string)
IL_0011:  stloc.0
IL_0012:  br       IL_0014

IL_0014:  ldloc.0
IL_0015:  ret
} // end of method '<>c__DisplayClass1'::'<ContainsActivity>b__0'

} // end of class '<>c__DisplayClass1'

.field private class [mscorlib]System.Func`1<bool> SimulationCancelCheck
.field private class [mscorlib]System.Action CancelSimulation
.field private class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> _Activities
.field private float64 _SimulationStopTime
.field private bool SimulationHasStoped
.method public hidebysig specialname instance void
add_SimulationCancelCheck(class [mscorlib]System.Func`1<bool> 'value') cil managed
{
// Code size       48 (0x30)
.maxstack 3
.locals init (class [mscorlib]System.Func`1<bool> V_0,
class [mscorlib]System.Func`1<bool> V_1,
class [mscorlib]System.Func`1<bool> V_2,
bool V_3)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Func`1<bool> SimNetUI.ModelLogic.SimulationML::SimulationCancelCheck
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  class [mscorlib]System.Func`1<bool>
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [mscorlib]System.Func`1<bool> SimNetUI.ModelLogic.SimulationML::SimulationCancelCheck
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Func`1<bool>>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  ceq
IL_0028:  ldc.i4.0
IL_0029:  ceq
IL_002b:  stloc.3
IL_002c:  ldloc.3
IL_002d:  brtrue   IL_0007

IL_002f:  ret
} // end of method SimulationML::add_SimulationCancelCheck

.method public hidebysig specialname instance void
remove_SimulationCancelCheck(class [mscorlib]System.Func`1<bool> 'value') cil managed
{
// Code size       48 (0x30)
.maxstack 3
.locals init (class [mscorlib]System.Func`1<bool> V_0,
class [mscorlib]System.Func`1<bool> V_1,
class [mscorlib]System.Func`1<bool> V_2,
bool V_3)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Func`1<bool> SimNetUI.ModelLogic.SimulationML::SimulationCancelCheck
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Remove(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  class [mscorlib]System.Func`1<bool>
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [mscorlib]System.Func`1<bool> SimNetUI.ModelLogic.SimulationML::SimulationCancelCheck
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Func`1<bool>>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  ceq
IL_0028:  ldc.i4.0
IL_0029:  ceq
IL_002b:  stloc.3
IL_002c:  ldloc.3
IL_002d:  brtrue   IL_0007

IL_002f:  ret
} // end of method SimulationML::remove_SimulationCancelCheck

.method public hidebysig specialname instance void
add_CancelSimulation(class [mscorlib]System.Action 'value') cil managed
{
// Code size       48 (0x30)
.maxstack 3
.locals init (class [mscorlib]System.Action V_0,
class [mscorlib]System.Action V_1,
class [mscorlib]System.Action V_2,
bool V_3)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Action SimNetUI.ModelLogic.SimulationML::CancelSimulation
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  [mscorlib]System.Action
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [mscorlib]System.Action SimNetUI.ModelLogic.SimulationML::CancelSimulation
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Action>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  ceq
IL_0028:  ldc.i4.0
IL_0029:  ceq
IL_002b:  stloc.3
IL_002c:  ldloc.3
IL_002d:  brtrue   IL_0007

IL_002f:  ret
} // end of method SimulationML::add_CancelSimulation

.method public hidebysig specialname instance void
remove_CancelSimulation(class [mscorlib]System.Action 'value') cil managed
{
// Code size       48 (0x30)
.maxstack 3
.locals init (class [mscorlib]System.Action V_0,
class [mscorlib]System.Action V_1,
class [mscorlib]System.Action V_2,
bool V_3)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Action SimNetUI.ModelLogic.SimulationML::CancelSimulation
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Remove(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  [mscorlib]System.Action
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [mscorlib]System.Action SimNetUI.ModelLogic.SimulationML::CancelSimulation
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Action>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  ceq
IL_0028:  ldc.i4.0
IL_0029:  ceq
IL_002b:  stloc.3
IL_002c:  ldloc.3
IL_002d:  brtrue   IL_0007

IL_002f:  ret
} // end of method SimulationML::remove_CancelSimulation

.method assembly hidebysig instance bool
CheckIfSimulationIsCanceld() cil managed
{
// Code size       17 (0x11)
.maxstack 3
.locals init (bool V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [mscorlib]System.Func`1<bool> SimNetUI.ModelLogic.SimulationML::SimulationCancelCheck
IL_0007:  callvirt   instance !0 class [mscorlib]System.Func`1<bool>::Invoke()
IL_000c:  stloc.0
IL_000d:  br       IL_000f

IL_000f:  ldloc.0
IL_0010:  ret
} // end of method SimulationML::CheckIfSimulationIsCanceld

.method public hidebysig specialname instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>
get_Activities() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> SimNetUI.ModelLogic.SimulationML::_Activities
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method SimulationML::get_Activities

.method public hidebysig specialname instance void
set_Activities(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> 'value') cil managed
{
// Code size       82 (0x52)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML V_0,
class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> V_1,
bool V_2)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> SimNetUI.ModelLogic.SimulationML::_Activities
IL_0008:  nop
IL_0009:  ldarg.0
IL_000a:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> SimNetUI.ModelLogic.SimulationML::_Activities
IL_000f:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>::GetEnumerator()
IL_0014:  stloc.1
.try
{
IL_0015:  br       IL_0028

IL_0017:  ldloc.1
IL_0018:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>::get_Current()
IL_001d:  stloc.0
IL_001e:  nop
IL_001f:  ldloc.0
IL_0020:  ldarg.0
IL_0021:  callvirt   instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::set_SimulationParent(class SimNetUI.ModelLogic.SimulationML)
IL_0026:  nop
IL_0027:  nop
IL_0028:  ldloc.1
IL_0029:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_002e:  stloc.2
IL_002f:  ldloc.2
IL_0030:  brtrue   IL_0017

IL_0032:  leave    IL_0044

}  // end .try
finally
{
IL_0034:  ldloc.1
IL_0035:  ldnull
IL_0036:  ceq
IL_0038:  stloc.2
IL_0039:  ldloc.2
IL_003a:  brtrue   IL_0043

IL_003c:  ldloc.1
IL_003d:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_0042:  nop
IL_0043:  endfinally
}  // end handler
IL_0044:  nop
IL_0045:  ldarg.0
IL_0046:  ldstr      "Activities"
IL_004b:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0050:  nop
IL_0051:  ret
} // end of method SimulationML::set_Activities

.method public hidebysig specialname instance float64
get_SimulationTime() cil managed
{
// Code size       11 (0xb)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_0006:  stloc.0
IL_0007:  br       IL_0009

IL_0009:  ldloc.0
IL_000a:  ret
} // end of method SimulationML::get_SimulationTime

.method public hidebysig specialname instance float64
get_SimulationStopTime() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.SimulationML::_SimulationStopTime
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method SimulationML::get_SimulationStopTime

.method public hidebysig specialname instance void
set_SimulationStopTime(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.SimulationML::_SimulationStopTime
IL_0008:  ldarg.0
IL_0009:  ldstr      "SimulationStopTime"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method SimulationML::set_SimulationStopTime

.method public hidebysig instance void
NotifySimulationTimeChanged() cil managed
{
// Code size       81 (0x51)
.maxstack 3
.locals init (float64 V_0,
class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML V_1,
class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> V_2,
bool V_3)
IL_0000:  nop
IL_0001:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_0006:  stloc.0
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  call       instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> SimNetUI.ModelLogic.SimulationML::get_Activities()
IL_000e:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>::GetEnumerator()
IL_0013:  stloc.2
.try
{
IL_0014:  br       IL_0027

IL_0016:  ldloc.2
IL_0017:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>::get_Current()
IL_001c:  stloc.1
IL_001d:  nop
IL_001e:  ldloc.1
IL_001f:  ldloc.0
IL_0020:  callvirt   instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::RecalculateTimeBasedStatistics(float64)
IL_0025:  nop
IL_0026:  nop
IL_0027:  ldloc.2
IL_0028:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_002d:  stloc.3
IL_002e:  ldloc.3
IL_002f:  brtrue   IL_0016

IL_0031:  leave    IL_0043

}  // end .try
finally
{
IL_0033:  ldloc.2
IL_0034:  ldnull
IL_0035:  ceq
IL_0037:  stloc.3
IL_0038:  ldloc.3
IL_0039:  brtrue   IL_0042

IL_003b:  ldloc.2
IL_003c:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_0041:  nop
IL_0042:  endfinally
}  // end handler
IL_0043:  nop
IL_0044:  ldarg.0
IL_0045:  ldstr      "SimulationTime"
IL_004a:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_004f:  nop
IL_0050:  ret
} // end of method SimulationML::NotifySimulationTimeChanged

.method assembly hidebysig instance class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML
ContainsActivity(string name) cil managed
{
// Code size       47 (0x2f)
.maxstack 4
.locals init (class SimNetUI.ModelLogic.SimulationML/'<>c__DisplayClass1' V_0,
class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML V_1)
IL_0000:  newobj     instance void SimNetUI.ModelLogic.SimulationML/'<>c__DisplayClass1'::.ctor()
IL_0005:  stloc.0
IL_0006:  ldloc.0
IL_0007:  ldarg.1
IL_0008:  stfld      string SimNetUI.ModelLogic.SimulationML/'<>c__DisplayClass1'::name
IL_000d:  nop
IL_000e:  ldarg.0
IL_000f:  call       instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> SimNetUI.ModelLogic.SimulationML::get_Activities()
IL_0014:  ldloc.0
IL_0015:  ldftn      instance bool SimNetUI.ModelLogic.SimulationML/'<>c__DisplayClass1'::'<ContainsActivity>b__0'(class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML)
IL_001b:  newobj     instance void class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML,bool>::.ctor(object,
native int)
IL_0020:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::Where<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
class [mscorlib]System.Func`2<!!0,bool>)
IL_0025:  call       !!0 [System.Core]System.Linq.Enumerable::First<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
IL_002a:  stloc.1
IL_002b:  br       IL_002d

IL_002d:  ldloc.1
IL_002e:  ret
} // end of method SimulationML::ContainsActivity

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       10 (0xa)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.ModelLogicBase::.ctor()
IL_0006:  nop
IL_0007:  nop
IL_0008:  nop
IL_0009:  ret
} // end of method SimulationML::.ctor

.method public hidebysig instance void
OnStopSimulationTime(float64 t,
float64 priority,
object[] p) cil managed
{
.custom instance void [SimNet]SimNet.TELLAttribute::.ctor() = ( 01 00 00 00 )
.param [3]
.custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 )
// Code size       9 (0x9)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance void SimNetUI.ModelLogic.SimulationML::StopSimulation()
IL_0007:  nop
IL_0008: call       void [SimNet]SimNet.Scheduler::RemoveSchedObj()
  ret
} // end of method SimulationML::OnStopSimulationTime

.method public hidebysig instance void
StartSimulation() cil managed
{
// Code size       222 (0xde)
.maxstack 4
.locals init (class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML V_0,
class SimNetUI.ModelLogic.Activities.ActivityGeneratorML V_1,
bool V_2,
class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> V_3)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance float64 SimNetUI.ModelLogic.SimulationML::get_SimulationStopTime()
IL_0007:  call       bool [mscorlib]System.Double::IsInfinity(float64)
IL_000c:  brtrue   IL_002e

IL_000e:  ldarg.0
IL_000f:  call       instance float64 SimNetUI.ModelLogic.SimulationML::get_SimulationStopTime()
IL_0014:  call       bool [mscorlib]System.Double::IsNaN(float64)
IL_0019:  brtrue   IL_002e

IL_001b:  ldarg.0
IL_001c:  call       instance float64 SimNetUI.ModelLogic.SimulationML::get_SimulationStopTime()
IL_0021:  ldc.r8     0.0
IL_002a:  clt.un
IL_002c:  br       IL_002f

IL_002e:  ldc.i4.1
IL_002f:  stloc.2
IL_0030:  ldloc.2
IL_0031:  brtrue   IL_0057

IL_0033:  nop
IL_0034:  ldarg.0
IL_0035:  ldftn      instance void SimNetUI.ModelLogic.SimulationML::OnStopSimulationTime(float64,
float64,
object[])
IL_003b:  newobj     instance void [SimNet]SimNet.TellMethod::.ctor(object,
native int)
IL_0040:  ldarg.0
IL_0041:  call       instance float64 SimNetUI.ModelLogic.SimulationML::get_SimulationStopTime()
IL_0046:  ldc.r8     1.7976931348623157e+308
IL_004f:  ldnull
IL_0050:  call       void [SimNet]SimNet.Simulation::Tell(class [SimNet]SimNet.TellMethod,
float64,
float64,
object[])
IL_0055:  nop
IL_0056:  nop
IL_0057:  nop
IL_0058:  ldarg.0
IL_0059:  call       instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> SimNetUI.ModelLogic.SimulationML::get_Activities()
IL_005e:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>::GetEnumerator()
IL_0063:  stloc.3
.try
{
IL_0064:  br       IL_00ac

IL_0066:  ldloc.3
IL_0067:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>::get_Current()
IL_006c:  stloc.0
IL_006d:  nop
IL_006e:  ldloc.0
IL_006f:  isinst     SimNetUI.ModelLogic.Activities.ActivityGeneratorML
IL_0074:  stloc.1
IL_0075:  ldloc.1
IL_0076:  ldnull
IL_0077:  ceq
IL_0079:  stloc.2
IL_007a:  ldloc.2
IL_007b:  brtrue   IL_00a4

IL_007d:  nop
IL_007e:  ldloc.1
IL_007f:  ldftn      instance void SimNetUI.ModelLogic.Activities.ActivityGeneratorML::generate(float64,
float64,
object[])
IL_0085:  newobj     instance void [SimNet]SimNet.TellMethod::.ctor(object,
native int)
IL_008a:  ldc.r8     0.0
IL_0093:  ldc.r8     0.0
IL_009c:  ldnull
IL_009d:  call       void [SimNet]SimNet.Simulation::Tell(class [SimNet]SimNet.TellMethod,
float64,
float64,
object[])
IL_00a2:  nop
IL_00a3:  nop
IL_00a4:  ldloc.0
IL_00a5:  callvirt   instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::OnResetActivity()
IL_00aa:  nop
IL_00ab:  nop
IL_00ac:  ldloc.3
IL_00ad:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_00b2:  stloc.2
IL_00b3:  ldloc.2
IL_00b4:  brtrue   IL_0066

IL_00b6:  leave    IL_00c8

}  // end .try
finally
{
IL_00b8:  ldloc.3
IL_00b9:  ldnull
IL_00ba:  ceq
IL_00bc:  stloc.2
IL_00bd:  ldloc.2
IL_00be:  brtrue   IL_00c7

IL_00c0:  ldloc.3
IL_00c1:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_00c6:  nop
IL_00c7:  endfinally
}  // end handler
IL_00c8:  nop
IL_00c9:  ldarg.0
IL_00ca:  ldc.i4.0
IL_00cb:  stfld      bool SimNetUI.ModelLogic.SimulationML::SimulationHasStoped
IL_00d0:  call       void [SimNet]SimNet.Simulation::StartSimulation()
IL_00d5:  nop
IL_00d6:  ldarg.0
IL_00d7:  call       instance void SimNetUI.ModelLogic.SimulationML::StopSimulation()
IL_00dc:  nop
IL_00dd:  ret
} // end of method SimulationML::StartSimulation

.method public hidebysig instance void
StopSimulation() cil managed
{
// Code size       46 (0x2e)
.maxstack 3
.locals init (bool V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      bool SimNetUI.ModelLogic.SimulationML::SimulationHasStoped
IL_0007:  stloc.0
IL_0008:  ldloc.0
IL_0009:  brtrue   IL_002d

IL_000b:  nop
IL_000c:  ldarg.0
IL_000d:  ldfld      class [mscorlib]System.Action SimNetUI.ModelLogic.SimulationML::CancelSimulation
IL_0012:  callvirt   instance void [mscorlib]System.Action::Invoke()
IL_0017:  nop
IL_0018:  call       void [SimNet]SimNet.Simulation::StopSimulation()
IL_001d:  nop
IL_001e:  ldarg.0
IL_001f:  ldc.i4.1
IL_0020:  stfld      bool SimNetUI.ModelLogic.SimulationML::SimulationHasStoped
IL_0025:  ldarg.0
IL_0026:  call       instance void SimNetUI.ModelLogic.SimulationML::NotifySimulationTimeChanged()
IL_002b:  nop
IL_002c:  nop
IL_002d:  ret
} // end of method SimulationML::StopSimulation

.event class [mscorlib]System.Func`1<bool> SimulationCancelCheck
{
.addon instance void SimNetUI.ModelLogic.SimulationML::add_SimulationCancelCheck(class [mscorlib]System.Func`1<bool>)
.removeon instance void SimNetUI.ModelLogic.SimulationML::remove_SimulationCancelCheck(class [mscorlib]System.Func`1<bool>)
} // end of event SimulationML::SimulationCancelCheck
.event [mscorlib]System.Action CancelSimulation
{
.addon instance void SimNetUI.ModelLogic.SimulationML::add_CancelSimulation(class [mscorlib]System.Action)
.removeon instance void SimNetUI.ModelLogic.SimulationML::remove_CancelSimulation(class [mscorlib]System.Action)
} // end of event SimulationML::CancelSimulation
.property instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>
Activities()
{
.get instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> SimNetUI.ModelLogic.SimulationML::get_Activities()
.set instance void SimNetUI.ModelLogic.SimulationML::set_Activities(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>)
} // end of property SimulationML::Activities
.property instance float64 SimulationTime()
{
.get instance float64 SimNetUI.ModelLogic.SimulationML::get_SimulationTime()
} // end of property SimulationML::SimulationTime
.property instance float64 SimulationStopTime()
{
.get instance float64 SimNetUI.ModelLogic.SimulationML::get_SimulationStopTime()
.set instance void SimNetUI.ModelLogic.SimulationML::set_SimulationStopTime(float64)
} // end of property SimulationML::SimulationStopTime
} // end of class SimNetUI.ModelLogic.SimulationML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML
extends SimNetUI.ModelLogic.Base.ModelLogicBase
{
.field private int32 _count
.field private class SimNetUI.ModelLogic.Resources.ResourceML _resource
.method public hidebysig specialname instance int32
get_Count() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (int32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::_count
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ResourceDependencyML::get_Count

.method public hidebysig specialname instance void
set_Count(int32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::_count
IL_0008:  ldarg.0
IL_0009:  ldstr      "Count"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ResourceDependencyML::set_Count

.method public hidebysig specialname instance class SimNetUI.ModelLogic.Resources.ResourceML
get_Resource() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Resources.ResourceML V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::_resource
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ResourceDependencyML::get_Resource

.method public hidebysig specialname instance void
set_Resource(class SimNetUI.ModelLogic.Resources.ResourceML 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::_resource
IL_0008:  ldarg.0
IL_0009:  ldstr      "Resource"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ResourceDependencyML::set_Resource

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.ModelLogicBase::.ctor()
IL_0006:  ret
} // end of method ResourceDependencyML::.ctor

.property instance int32 Count()
{
.get instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::set_Count(int32)
} // end of property ResourceDependencyML::Count
.property instance class SimNetUI.ModelLogic.Resources.ResourceML
Resource()
{
.get instance class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::set_Resource(class SimNetUI.ModelLogic.Resources.ResourceML)
} // end of property ResourceDependencyML::Resource
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ExponentialML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML
{
.field private float64 _Alpha
.method public hidebysig specialname instance float64
get_Alpha() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ExponentialML::_Alpha
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ExponentialML::get_Alpha

.method public hidebysig specialname instance void
set_Alpha(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ExponentialML::_Alpha
IL_0008:  ldarg.0
IL_0009:  ldstr      "Alpha"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ExponentialML::set_Alpha

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       23 (0x17)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0007:  ldarg.0
IL_0008:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ExponentialML::get_Alpha()
IL_000d:  callvirt   instance float64 [SimNet]SimNet.RandomObj::Exponential(float64)
IL_0012:  stloc.0
IL_0013:  br       IL_0015

IL_0015:  ldloc.0
IL_0016:  ret
} // end of method ExponentialML::GetNextValue

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::.ctor()
IL_0006:  ret
} // end of method ExponentialML::.ctor

.property instance float64 Alpha()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ExponentialML::set_Alpha(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ExponentialML::get_Alpha()
} // end of property ExponentialML::Alpha
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ExponentialML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Resources.ResourceML
extends SimNetUI.ModelLogic.Base.ModelLogicBase
implements class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.IStatisticInfo`1<class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML>
{
.field private int32 _Capacity
.field private class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML _Statistic
.field private class [SimNet]SimNet.ResourceObj '<obj>k__BackingField'
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
.method public hidebysig specialname instance int32
get_Capacity() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (int32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      int32 SimNetUI.ModelLogic.Resources.ResourceML::_Capacity
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ResourceML::get_Capacity

.method public hidebysig specialname instance void
set_Capacity(int32 'value') cil managed
{
// Code size       57 (0x39)
.maxstack 3
.locals init (bool V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      int32 SimNetUI.ModelLogic.Resources.ResourceML::_Capacity
IL_0007:  ldarg.1
IL_0008:  clt
IL_000a:  ldc.i4.0
IL_000b:  ceq
IL_000d:  stloc.0
IL_000e:  ldloc.0
IL_000f:  brtrue   IL_0025

IL_0011:  ldarg.0
IL_0012:  call       instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
IL_0017:  ldarg.1
IL_0018:  ldarg.0
IL_0019:  ldfld      int32 SimNetUI.ModelLogic.Resources.ResourceML::_Capacity
IL_001e:  sub
IL_001f:  callvirt   instance void [SimNet]SimNet.ResourceObj::IncrementResources(int32)
IL_0024:  nop
IL_0025:  ldarg.0
IL_0026:  ldarg.1
IL_0027:  stfld      int32 SimNetUI.ModelLogic.Resources.ResourceML::_Capacity
IL_002c:  ldarg.0
IL_002d:  ldstr      "Capacity"
IL_0032:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0037:  nop
IL_0038:  ret
} // end of method ResourceML::set_Capacity

.method public hidebysig newslot specialname virtual final
instance class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML
get_Statistic() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML SimNetUI.ModelLogic.Resources.ResourceML::_Statistic
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ResourceML::get_Statistic

.method public hidebysig newslot specialname virtual final
instance void  set_Statistic(class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML 'value') cil managed
{
// Code size       34 (0x22)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML SimNetUI.ModelLogic.Resources.ResourceML::_Statistic
IL_0008:  ldarg.0
IL_0009:  ldfld      class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML SimNetUI.ModelLogic.Resources.ResourceML::_Statistic
IL_000e:  ldarg.0
IL_000f:  callvirt   instance void SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::set_Resource(class SimNetUI.ModelLogic.Resources.ResourceML)
IL_0014:  nop
IL_0015:  ldarg.0
IL_0016:  ldstr      "Statistic"
IL_001b:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0020:  nop
IL_0021:  ret
} // end of method ResourceML::set_Statistic

.method assembly hidebysig specialname
instance class [SimNet]SimNet.ResourceObj
get_obj() cil managed
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
// Code size       11 (0xb)
.maxstack 3
.locals init (class [SimNet]SimNet.ResourceObj V_0)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::'<obj>k__BackingField'
IL_0006:  stloc.0
IL_0007:  br       IL_0009

IL_0009:  ldloc.0
IL_000a:  ret
} // end of method ResourceML::get_obj

.method assembly hidebysig specialname
instance void  set_obj(class [SimNet]SimNet.ResourceObj 'value') cil managed
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
// Code size       8 (0x8)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::'<obj>k__BackingField'
IL_0007:  ret
} // end of method ResourceML::set_obj

.method assembly hidebysig instance void
clearResource() cil managed
{
// Code size       82 (0x52)
.maxstack 3
.locals init (bool V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML SimNetUI.ModelLogic.Resources.ResourceML::get_Statistic()
IL_0007:  ldnull
IL_0008:  ceq
IL_000a:  stloc.0
IL_000b:  ldloc.0
IL_000c:  brtrue   IL_001a

IL_000e:  ldarg.0
IL_000f:  call       instance class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML SimNetUI.ModelLogic.Resources.ResourceML::get_Statistic()
IL_0014:  callvirt   instance void SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::UnSuscribePropertyChanged()
IL_0019:  nop
IL_001a:  ldarg.0
IL_001b:  newobj     instance void [SimNet]SimNet.ResourceObj::.ctor()
IL_0020:  call       instance void SimNetUI.ModelLogic.Resources.ResourceML::set_obj(class [SimNet]SimNet.ResourceObj)
IL_0025:  nop
IL_0026:  ldarg.0
IL_0027:  call       instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
IL_002c:  ldarg.0
IL_002d:  ldfld      int32 SimNetUI.ModelLogic.Resources.ResourceML::_Capacity
IL_0032:  callvirt   instance void [SimNet]SimNet.ResourceObj::CreateResource(int32)
IL_0037:  nop
IL_0038:  ldarg.0
IL_0039:  call       instance class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML SimNetUI.ModelLogic.Resources.ResourceML::get_Statistic()
IL_003e:  ldnull
IL_003f:  ceq
IL_0041:  stloc.0
IL_0042:  ldloc.0
IL_0043:  brtrue   IL_0051

IL_0045:  ldarg.0
IL_0046:  call       instance class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML SimNetUI.ModelLogic.Resources.ResourceML::get_Statistic()
IL_004b:  callvirt   instance void SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::SuscribePropertyChanged()
IL_0050:  nop
IL_0051:  ret
} // end of method ResourceML::clearResource

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       17 (0x11)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.ModelLogicBase::.ctor()
IL_0006:  nop
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  call       instance void SimNetUI.ModelLogic.Resources.ResourceML::clearResource()
IL_000e:  nop
IL_000f:  nop
IL_0010:  ret
} // end of method ResourceML::.ctor

.property instance int32 Capacity()
{
.set instance void SimNetUI.ModelLogic.Resources.ResourceML::set_Capacity(int32)
.get instance int32 SimNetUI.ModelLogic.Resources.ResourceML::get_Capacity()
} // end of property ResourceML::Capacity
.property instance class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML
Statistic()
{
.get instance class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML SimNetUI.ModelLogic.Resources.ResourceML::get_Statistic()
.set instance void SimNetUI.ModelLogic.Resources.ResourceML::set_Statistic(class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML)
} // end of property ResourceML::Statistic
.property instance class [SimNet]SimNet.ResourceObj
obj()
{
.get instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
.set instance void SimNetUI.ModelLogic.Resources.ResourceML::set_obj(class [SimNet]SimNet.ResourceObj)
} // end of property ResourceML::obj
} // end of class SimNetUI.ModelLogic.Resources.ResourceML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML
{
.field private float64 _Alpha
.field private float64 _Beta
.method public hidebysig specialname instance float64
get_Alpha() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::_Alpha
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method LogNormalML::get_Alpha

.method public hidebysig specialname instance void
set_Alpha(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::_Alpha
IL_0008:  ldarg.0
IL_0009:  ldstr      "Alpha"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method LogNormalML::set_Alpha

.method public hidebysig specialname instance float64
get_Beta() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::_Beta
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method LogNormalML::get_Beta

.method public hidebysig specialname instance void
set_Beta(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::_Beta
IL_0008:  ldarg.0
IL_0009:  ldstr      "Beta"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method LogNormalML::set_Beta

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       29 (0x1d)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0007:  ldarg.0
IL_0008:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::get_Alpha()
IL_000d:  ldarg.0
IL_000e:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::get_Beta()
IL_0013:  callvirt   instance float64 [SimNet]SimNet.RandomObj::LgNormal(float64,
float64)
IL_0018:  stloc.0
IL_0019:  br       IL_001b

IL_001b:  ldloc.0
IL_001c:  ret
} // end of method LogNormalML::GetNextValue

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::.ctor()
IL_0006:  ret
} // end of method LogNormalML::.ctor

.property instance float64 Alpha()
{
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::get_Alpha()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::set_Alpha(float64)
} // end of property LogNormalML::Alpha
.property instance float64 Beta()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::set_Beta(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::get_Beta()
} // end of property LogNormalML::Beta
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML
extends SimNetUI.ModelLogic.Activities.Base.ActivityQueueBaseML
{
.field private class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML _Distribution
.field private class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> _ResourceDependencies
.method public hidebysig specialname instance class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML
get_Distribution() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::_Distribution
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityDelayBaseML::get_Distribution

.method public hidebysig specialname instance void
set_Distribution(class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::_Distribution
IL_0008:  ldarg.0
IL_0009:  ldstr      "Distribution"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityDelayBaseML::set_Distribution

.method public hidebysig specialname instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>
get_ResourceDependencies() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::_ResourceDependencies
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityDelayBaseML::get_ResourceDependencies

.method public hidebysig specialname instance void
set_ResourceDependencies(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::_ResourceDependencies
IL_0008:  ldarg.0
IL_0009:  ldstr      "ResourceDependencies"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityDelayBaseML::set_ResourceDependencies

.method family hidebysig instance bool
AllResourcesAvailable() cil managed
{
// Code size       96 (0x60)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML V_0,
bool V_1,
class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> V_2,
bool V_3)
IL_0000:  nop
IL_0001:  nop
IL_0002:  ldarg.0
IL_0003:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::_ResourceDependencies
IL_0008:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::GetEnumerator()
IL_000d:  stloc.2
.try
{
IL_000e:  br       IL_003c

IL_0010:  ldloc.2
IL_0011:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Current()
IL_0016:  stloc.0
IL_0017:  nop
IL_0018:  ldloc.0
IL_0019:  callvirt   instance class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_001e:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
IL_0023:  callvirt   instance int32 [SimNet]SimNet.ResourceObj::get_Resources()
IL_0028:  ldloc.0
IL_0029:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_002e:  clt
IL_0030:  ldc.i4.0
IL_0031:  ceq
IL_0033:  stloc.3
IL_0034:  ldloc.3
IL_0035:  brtrue   IL_003b

IL_0037:  ldc.i4.0
IL_0038:  stloc.1
IL_0039:  leave    IL_005d

IL_003b:  nop
IL_003c:  ldloc.2
IL_003d:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_0042:  stloc.3
IL_0043:  ldloc.3
IL_0044:  brtrue   IL_0010

IL_0046:  leave    IL_0058

}  // end .try
finally
{
IL_0048:  ldloc.2
IL_0049:  ldnull
IL_004a:  ceq
IL_004c:  stloc.3
IL_004d:  ldloc.3
IL_004e:  brtrue   IL_0057

IL_0050:  ldloc.2
IL_0051:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_0056:  nop
IL_0057:  endfinally
}  // end handler
IL_0058:  nop
IL_0059:  ldc.i4.1
IL_005a:  stloc.1
IL_005b:  br       IL_005d

IL_005d:  nop
IL_005e:  ldloc.1
IL_005f:  ret
} // end of method ActivityDelayBaseML::AllResourcesAvailable

.method assembly hidebysig strict virtual
instance void  OnResetActivity() cil managed
{
// Code size       101 (0x65)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML V_0,
class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML V_1,
class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> V_2,
bool V_3)
IL_0000:  nop
IL_0001:  nop
IL_0002:  ldarg.0
IL_0003:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::_ResourceDependencies
IL_0008:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::GetEnumerator()
IL_000d:  stloc.2
.try
{
IL_000e:  br       IL_0025

IL_0010:  ldloc.2
IL_0011:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Current()
IL_0016:  stloc.0
IL_0017:  nop
IL_0018:  ldloc.0
IL_0019:  callvirt   instance class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_001e:  callvirt   instance void SimNetUI.ModelLogic.Resources.ResourceML::clearResource()
IL_0023:  nop
IL_0024:  nop
IL_0025:  ldloc.2
IL_0026:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_002b:  stloc.3
IL_002c:  ldloc.3
IL_002d:  brtrue   IL_0010

IL_002f:  leave    IL_0041

}  // end .try
finally
{
IL_0031:  ldloc.2
IL_0032:  ldnull
IL_0033:  ceq
IL_0035:  stloc.3
IL_0036:  ldloc.3
IL_0037:  brtrue   IL_0040

IL_0039:  ldloc.2
IL_003a:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_003f:  nop
IL_0040:  endfinally
}  // end handler
IL_0041:  nop
IL_0042:  ldarg.0
IL_0043:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_Distribution()
IL_0048:  isinst     SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML
IL_004d:  stloc.1
IL_004e:  ldloc.1
IL_004f:  ldnull
IL_0050:  ceq
IL_0052:  stloc.3
IL_0053:  ldloc.3
IL_0054:  brtrue   IL_005d

IL_0056:  ldloc.1
IL_0057:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::ResetRandomNumberGenerator()
IL_005c:  nop
IL_005d:  ldarg.0
IL_005e:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityQueueBaseML::OnResetActivity()
IL_0063:  nop
IL_0064:  ret
} // end of method ActivityDelayBaseML::OnResetActivity

.method family hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityQueueBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityDelayBaseML::.ctor

.property instance class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML
Distribution()
{
.set instance void SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::set_Distribution(class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML)
.get instance class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_Distribution()
} // end of property ActivityDelayBaseML::Distribution
.property instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>
ResourceDependencies()
{
.get instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_ResourceDependencies()
.set instance void SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::set_ResourceDependencies(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>)
} // end of property ActivityDelayBaseML::ResourceDependencies
} // end of class SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ActivityWaitML
extends SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML
implements class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.IStatisticInfo`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML>
{
.class auto ansi nested private beforefieldinit NestedClassSimulationLogic
extends [mscorlib]System.Object
{
.field private class SimNetUI.ModelLogic.Activities.ActivityWaitML parent
.method public hidebysig specialname rtspecialname
instance void  .ctor(class SimNetUI.ModelLogic.Activities.ActivityWaitML parent) cil managed
{
// Code size       17 (0x11)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
IL_0006:  nop
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  ldarg.1
IL_000a:  stfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_000f:  nop
IL_0010:  ret
} // end of method NestedClassSimulationLogic::.ctor

.method public hidebysig instance void
wait(float64 t,
float64 priority,
object[] p) cil managed
{
.custom instance void [SimNet]SimNet.TELLAttribute::.ctor() = ( 01 00 00 00 )
.param [3]
.custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 )
// Code size       557 (0x22d)
.maxstack 5
.locals init (bool V_0,
bool V_1,
int32 V_2,
float64 V_3,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML V_4,
class SimNetUI.ModelLogic.Entity.EntityML V_5,
bool V_6,
object[] locals,
class [SimNet]SimNet.SimObj obj,
string label)
call       class [SimNet]SimNet.SimObj [SimNet]SimNet.Scheduler::GetCurrentSchedObj()
stloc      obj
ldloc      obj
callvirt   instance string [SimNet]SimNet.SimObj::get_Label()
stloc      label
ldloc      label
ldstr ""
call       bool [mscorlib]System.String::op_Equality(string,string) 
brfalse    SIM_JUMP_0
br         IL_0000
SIM_JUMP_0:   ldloc      label
ldstr "SIM_WAIT_0"
call       bool [mscorlib]System.String::op_Equality(string,string) 
brfalse    SIM_JUMP_1
br         SIM_WAIT_0
SIM_JUMP_1:   ldloc      label
ldstr "SIM_WAIT_1"
call       bool [mscorlib]System.String::op_Equality(string,string) 
brfalse    SIM_JUMP_2
br         SIM_WAIT_1
SIM_JUMP_2:   ldloc      label
ldstr "SIM_WAIT_2"
call       bool [mscorlib]System.String::op_Equality(string,string) 
brfalse    IL_022c
br         SIM_WAIT_2
IL_0000:  nop
IL_0001:  ldc.i4.0
IL_0002:  stloc.0
IL_0003:  ldc.i4.0
IL_0004:  stloc.1
IL_0005:  ldarg.0
IL_0006:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_000b:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityWaitML::resource
IL_0010:  callvirt   instance int32 [SimNet]SimNet.ResourceObj::get_Resources()
IL_0015:  brfalse  IL_0024

IL_0017:  ldarg.0
IL_0018:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_001d:  callvirt   instance bool SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::AllResourcesAvailable()
IL_0022:  br       IL_0025

IL_0024:  ldc.i4.0
IL_0025:  stloc.s    V_6
IL_0027:  ldloc.s    V_6
IL_0029:  brtrue   IL_0048

IL_002b:  nop
IL_002c:  ldarg.0
IL_002d:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0032:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0037:  dup
IL_0038:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_003d:  ldc.i4.1
IL_003e:  add
IL_003f:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_InQueue(uint32)
IL_0044:  nop
IL_0045:  ldc.i4.1
IL_0046:  stloc.1
IL_0047:  nop
.try
{
IL_0048:
ldc.i4.s 7
newarr		[mscorlib]System.Object
stloc  		locals
ldloc		locals
ldc.i4.s 0
ldstr "INTERRUPT"
stelem.ref
ldloc		locals
ldc.i4.s 1
ldloc.s 1
box			[mscorlib]System.Boolean
stelem.ref
ldloc		locals
ldc.i4.s 2
ldloc.s 2
box			[mscorlib]System.Int32
stelem.ref
ldloc		locals
ldc.i4.s 3
ldloc.s 3
box			[mscorlib]System.Double
stelem.ref
ldloc		locals
ldc.i4.s 4
ldloc.s 4
stelem.ref
ldloc		locals
ldc.i4.s 5
ldloc.s 5
stelem.ref
ldloc		locals
ldc.i4.s 6
ldloc.s 6
box			[mscorlib]System.Boolean
stelem.ref
ldloc      obj
ldloc      locals
callvirt   instance void [SimNet]SimNet.SimObj::set_Locals(object[])
ldloc      obj
ldstr "SIM_WAIT_0"
callvirt   instance void [SimNet]SimNet.SimObj::set_Label(string)
ldloc      obj
ldarg.3
callvirt   instance void [SimNet]SimNet.SimObj::set_Params(object[])
nop
IL_0049:  ldarg.0
IL_004a:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_004f:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityWaitML::resource
IL_0054:  ldftn      instance bool [SimNet]SimNet.ResourceObj::Give(object,
int32,
float64)
IL_005a:  newobj     instance void [SimNet]SimNet.GiveMethod::.ctor(object,
native int)
IL_005f:  ldarg.0
IL_0060:  ldc.i4.1
IL_0061:  ldloca.s   V_0
IL_0063:  ldc.r8     0.0
IL_006c:  call       void [SimNet]SimNet.Simulation::WaitFor(class [SimNet]SimNet.GiveMethod,
object,
int32,
bool&,
float64)
nop
ret
IL_0071:  nop
IL_0072:  nop
IL_0073:  leave    IL_007a

}  // end .try
catch [mscorlib]System.Object
{
IL_0075:  pop
IL_0076:  nop
IL_0077:  nop
IL_0078:  leave    IL_007a

}  // end handler
SIM_WAIT_0:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc.s    obj
callvirt   instance bool [SimNet]SimNet.SimObj::get_Interrupt()
stloc.s    V_0
ldloc     locals
ldc.i4.s 1
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 1
ldloc     locals
ldc.i4.s 2
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 2
ldloc     locals
ldc.i4.s 3
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
stloc.s 3
ldloc     locals
ldc.i4.s 4
ldelem.ref
stloc.s 4
ldloc     locals
ldc.i4.s 5
ldelem.ref
stloc.s 5
ldloc     locals
ldc.i4.s 6
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 6
IL_007a:  nop
IL_007b:  ldc.i4.0
IL_007c:  stloc.2
IL_007d:  br       IL_00dd

IL_007f:  nop
.try
{
IL_0080:
ldc.i4.s 7
newarr		[mscorlib]System.Object
stloc  		locals
ldloc		locals
ldc.i4.s 0
ldstr "INTERRUPT"
stelem.ref
ldloc		locals
ldc.i4.s 1
ldloc.s 1
box			[mscorlib]System.Boolean
stelem.ref
ldloc		locals
ldc.i4.s 2
ldloc.s 2
box			[mscorlib]System.Int32
stelem.ref
ldloc		locals
ldc.i4.s 3
ldloc.s 3
box			[mscorlib]System.Double
stelem.ref
ldloc		locals
ldc.i4.s 4
ldloc.s 4
stelem.ref
ldloc		locals
ldc.i4.s 5
ldloc.s 5
stelem.ref
ldloc		locals
ldc.i4.s 6
ldloc.s 6
box			[mscorlib]System.Boolean
stelem.ref
ldloc      obj
ldloc      locals
callvirt   instance void [SimNet]SimNet.SimObj::set_Locals(object[])
ldloc      obj
ldstr "SIM_WAIT_1"
callvirt   instance void [SimNet]SimNet.SimObj::set_Label(string)
ldloc      obj
ldarg.3
callvirt   instance void [SimNet]SimNet.SimObj::set_Params(object[])
nop
IL_0081:  ldarg.0
IL_0082:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0087:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_ResourceDependencies()
IL_008c:  ldloc.2
IL_008d:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_0092:  callvirt   instance class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_0097:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
IL_009c:  ldftn      instance bool [SimNet]SimNet.ResourceObj::Give(object,
int32,
float64)
IL_00a2:  newobj     instance void [SimNet]SimNet.GiveMethod::.ctor(object,
native int)
IL_00a7:  ldarg.0
IL_00a8:  ldarg.0
IL_00a9:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_00ae:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_ResourceDependencies()
IL_00b3:  ldloc.2
IL_00b4:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_00b9:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_00be:  ldloca.s   V_0
IL_00c0:  ldc.r8     0.0
IL_00c9:  call       void [SimNet]SimNet.Simulation::WaitFor(class [SimNet]SimNet.GiveMethod,
object,
int32,
bool&,
float64)
nop
ret
IL_00ce:  nop
IL_00cf:  nop
IL_00d0:  leave    IL_00d7

}  // end .try
catch [mscorlib]System.Object
{
IL_00d2:  pop
IL_00d3:  nop
IL_00d4:  nop
IL_00d5:  leave    IL_00d7

}  // end handler
SIM_WAIT_1:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc.s    obj
callvirt   instance bool [SimNet]SimNet.SimObj::get_Interrupt()
stloc.s    V_0
ldloc     locals
ldc.i4.s 1
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 1
ldloc     locals
ldc.i4.s 2
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 2
ldloc     locals
ldc.i4.s 3
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
stloc.s 3
ldloc     locals
ldc.i4.s 4
ldelem.ref
stloc.s 4
ldloc     locals
ldc.i4.s 5
ldelem.ref
stloc.s 5
ldloc     locals
ldc.i4.s 6
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 6
IL_00d7:  nop
IL_00d8:  nop
IL_00d9:  ldloc.2
IL_00da:  ldc.i4.1
IL_00db:  add
IL_00dc:  stloc.2
IL_00dd:  ldloc.2
IL_00de:  ldarg.0
IL_00df:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_00e4:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_ResourceDependencies()
IL_00e9:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Count()
IL_00ee:  clt
IL_00f0:  stloc.s    V_6
IL_00f2:  ldloc.s    V_6
IL_00f4:  brtrue   IL_007f

IL_00f6:  ldloc.1
IL_00f7:  ldc.i4.0
IL_00f8:  ceq
IL_00fa:  stloc.s    V_6
IL_00fc:  ldloc.s    V_6
IL_00fe:  brtrue   IL_0119

IL_0100:  ldarg.0
IL_0101:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0106:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_010b:  dup
IL_010c:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_0111:  ldc.i4.1
IL_0112:  sub
IL_0113:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_InQueue(uint32)
IL_0118:  nop
IL_0119:  ldarg.0
IL_011a:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_011f:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0124:  dup
IL_0125:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_InWork()
IL_012a:  ldc.i4.1
IL_012b:  add
IL_012c:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_InWork(uint32)
IL_0131:  nop
IL_0132:  ldarg.0
IL_0133:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0138:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_Distribution()
IL_013d:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::GetNextValue()
IL_0142:  stloc.3
IL_0143:  ldarg.0
IL_0144:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0149:  callvirt   instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_OutConnectors()
IL_014e:  ldstr      "Out"
IL_0153:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>::get_Item(!0)
IL_0158:  stloc.s    V_4
IL_015a:  ldarg.0
IL_015b:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0160:  ldloc.s    V_4
IL_0162:  callvirt   instance class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::GetProvidedEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML)
IL_0167:  stloc.s    V_5
.try
{
IL_0169:
ldc.i4.s 7
newarr		[mscorlib]System.Object
stloc  		locals
ldloc		locals
ldc.i4.s 0
ldstr "INTERRUPT"
stelem.ref
ldloc		locals
ldc.i4.s 1
ldloc.s 1
box			[mscorlib]System.Boolean
stelem.ref
ldloc		locals
ldc.i4.s 2
ldloc.s 2
box			[mscorlib]System.Int32
stelem.ref
ldloc		locals
ldc.i4.s 3
ldloc.s 3
box			[mscorlib]System.Double
stelem.ref
ldloc		locals
ldc.i4.s 4
ldloc.s 4
stelem.ref
ldloc		locals
ldc.i4.s 5
ldloc.s 5
stelem.ref
ldloc		locals
ldc.i4.s 6
ldloc.s 6
box			[mscorlib]System.Boolean
stelem.ref
ldloc      obj
ldloc      locals
callvirt   instance void [SimNet]SimNet.SimObj::set_Locals(object[])
ldloc      obj
ldstr "SIM_WAIT_2"
callvirt   instance void [SimNet]SimNet.SimObj::set_Label(string)
ldloc      obj
ldarg.3
callvirt   instance void [SimNet]SimNet.SimObj::set_Params(object[])
nop
IL_016a:  ldloc.3
IL_016b:  ldloca.s   V_0
IL_016d:  call       void [SimNet]SimNet.Simulation::Wait(float64,
bool&)
nop
ret
IL_0172:  nop
IL_0173:  nop
IL_0174:  leave    IL_017b

}  // end .try
catch [mscorlib]System.Object
{
IL_0176:  pop
IL_0177:  nop
IL_0178:  nop
IL_0179:  leave    IL_017b

}  // end handler
SIM_WAIT_2:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc.s    obj
callvirt   instance bool [SimNet]SimNet.SimObj::get_Interrupt()
stloc.s    V_0
ldloc     locals
ldc.i4.s 1
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 1
ldloc     locals
ldc.i4.s 2
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 2
ldloc     locals
ldc.i4.s 3
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
stloc.s 3
ldloc     locals
ldc.i4.s 4
ldelem.ref
stloc.s 4
ldloc     locals
ldc.i4.s 5
ldelem.ref
stloc.s 5
ldloc     locals
ldc.i4.s 6
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 6
IL_017b:  nop
IL_017c:  ldarg.0
IL_017d:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0182:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0187:  dup
IL_0188:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::get_Processed()
IL_018d:  ldc.i4.1
IL_018e:  add
IL_018f:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_Processed(uint32)
IL_0194:  nop
IL_0195:  ldarg.0
IL_0196:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_019b:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_01a0:  dup
IL_01a1:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_InWork()
IL_01a6:  ldc.i4.1
IL_01a7:  sub
IL_01a8:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_InWork(uint32)
IL_01ad:  nop
IL_01ae:  ldarg.0
IL_01af:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_01b4:  ldloc.s    V_4
IL_01b6:  ldloc.s    V_5
IL_01b8:  callvirt   instance void SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::SendEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,
class SimNetUI.ModelLogic.Entity.EntityML)
IL_01bd:  nop
IL_01be:  ldc.i4.0
IL_01bf:  stloc.2
IL_01c0:  br       IL_0200

IL_01c2:  nop
IL_01c3:  ldarg.0
IL_01c4:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_01c9:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_ResourceDependencies()
IL_01ce:  ldloc.2
IL_01cf:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_01d4:  callvirt   instance class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_01d9:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
IL_01de:  ldarg.0
IL_01df:  ldarg.0
IL_01e0:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_01e5:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_ResourceDependencies()
IL_01ea:  ldloc.2
IL_01eb:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_01f0:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_01f5:  callvirt   instance void [SimNet]SimNet.ResourceObj::TakeBack(object,
int32)
IL_01fa:  nop
IL_01fb:  nop
IL_01fc:  ldloc.2
IL_01fd:  ldc.i4.1
IL_01fe:  add
IL_01ff:  stloc.2
IL_0200:  ldloc.2
IL_0201:  ldarg.0
IL_0202:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0207:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_ResourceDependencies()
IL_020c:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Count()
IL_0211:  clt
IL_0213:  stloc.s    V_6
IL_0215:  ldloc.s    V_6
IL_0217:  brtrue   IL_01c2

IL_0219:  ldarg.0
IL_021a:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_021f:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityWaitML::resource
IL_0224:  ldarg.0
IL_0225:  ldc.i4.1
IL_0226:  callvirt   instance void [SimNet]SimNet.ResourceObj::TakeBack(object,
int32)
IL_022b:  nop
IL_022c: call       void [SimNet]SimNet.Scheduler::RemoveSchedObj()
  ret
} // end of method NestedClassSimulationLogic::wait

} // end of class NestedClassSimulationLogic

.field private class [SimNet]SimNet.ResourceObj resource
.field private class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML _Statistic
.field private uint32 _Capacity
.method public hidebysig newslot specialname virtual final
instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML
get_Statistic() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::_Statistic
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityWaitML::get_Statistic

.method public hidebysig newslot specialname virtual final
instance void  set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::_Statistic
IL_0008:  ldarg.0
IL_0009:  ldstr      "Statistic"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityWaitML::set_Statistic

.method public hidebysig specialname instance uint32
get_Capacity() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ActivityWaitML::_Capacity
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityWaitML::get_Capacity

.method public hidebysig specialname instance void
set_Capacity(uint32 'value') cil managed
{
// Code size       68 (0x44)
.maxstack 3
.locals init (bool V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityWaitML::resource
IL_0007:  brfalse  IL_0017

IL_0009:  ldarg.1
IL_000a:  ldarg.0
IL_000b:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ActivityWaitML::_Capacity
IL_0010:  cgt.un
IL_0012:  ldc.i4.0
IL_0013:  ceq
IL_0015:  br       IL_0018

IL_0017:  ldc.i4.1
IL_0018:  stloc.0
IL_0019:  ldloc.0
IL_001a:  brtrue   IL_0030

IL_001c:  ldarg.0
IL_001d:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityWaitML::resource
IL_0022:  ldarg.1
IL_0023:  ldarg.0
IL_0024:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ActivityWaitML::_Capacity
IL_0029:  sub
IL_002a:  callvirt   instance void [SimNet]SimNet.ResourceObj::IncrementResources(int32)
IL_002f:  nop
IL_0030:  ldarg.0
IL_0031:  ldarg.1
IL_0032:  stfld      uint32 SimNetUI.ModelLogic.Activities.ActivityWaitML::_Capacity
IL_0037:  ldarg.0
IL_0038:  ldstr      "Capacity"
IL_003d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0042:  nop
IL_0043:  ret
} // end of method ActivityWaitML::set_Capacity

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       10 (0xa)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::.ctor()
IL_0006:  nop
IL_0007:  nop
IL_0008:  nop
IL_0009:  ret
} // end of method ActivityWaitML::.ctor

.method assembly hidebysig strict virtual
instance void  OnResetActivity() cil managed
{
// Code size       68 (0x44)
.maxstack 3
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  newobj     instance void [SimNet]SimNet.ResourceObj::.ctor()
IL_0007:  stfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityWaitML::resource
IL_000c:  ldarg.0
IL_000d:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityWaitML::resource
IL_0012:  ldarg.0
IL_0013:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ActivityWaitML::_Capacity
IL_0018:  callvirt   instance void [SimNet]SimNet.ResourceObj::CreateResource(int32)
IL_001d:  nop
IL_001e:  ldarg.0
IL_001f:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0024:  callvirt   instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::Reset()
IL_0029:  nop
IL_002a:  ldarg.0
IL_002b:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0030:  ldarg.0
IL_0031:  call       instance uint32 SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Capacity()
IL_0036:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_capacity(uint32)
IL_003b:  nop
IL_003c:  ldarg.0
IL_003d:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::OnResetActivity()
IL_0042:  nop
IL_0043:  ret
} // end of method ActivityWaitML::OnResetActivity

.method assembly hidebysig strict virtual
instance void  RecalculateTimeBasedStatistics(float64 SimulationTime) cil managed
{
// Code size       14 (0xe)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0007:  callvirt   instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::UpdateTimeBasedStatistics()
IL_000c:  nop
IL_000d:  ret
} // end of method ActivityWaitML::RecalculateTimeBasedStatistics

.method assembly hidebysig strict virtual
instance void  OnReceiveEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML) cil managed
{
// Code size       46 (0x2e)
.maxstack 4
.locals init (class SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  newobj     instance void SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::.ctor(class SimNetUI.ModelLogic.Activities.ActivityWaitML)
IL_0007:  stloc.0
IL_0008:  ldloc.0
IL_0009:  ldftn      instance void SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::wait(float64,
float64,
object[])
IL_000f:  newobj     instance void [SimNet]SimNet.TellMethod::.ctor(object,
native int)
IL_0014:  ldc.r8     0.0
IL_001d:  ldc.r8     0.0
IL_0026:  ldnull
IL_0027:  call       void [SimNet]SimNet.Simulation::Tell(class [SimNet]SimNet.TellMethod,
float64,
float64,
object[])
IL_002c:  nop
IL_002d:  ret
} // end of method ActivityWaitML::OnReceiveEntity

.property instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML
Statistic()
{
.get instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
.set instance void SimNetUI.ModelLogic.Activities.ActivityWaitML::set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML)
} // end of property ActivityWaitML::Statistic
.property instance uint32 Capacity()
{
.get instance uint32 SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Capacity()
.set instance void SimNetUI.ModelLogic.Activities.ActivityWaitML::set_Capacity(uint32)
} // end of property ActivityWaitML::Capacity
} // end of class SimNetUI.ModelLogic.Activities.ActivityWaitML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Entity.EntityML
extends SimNetUI.ModelLogic.Base.ModelLogicBase
{
.field private string _Type
.field private uint32 _Priority
.field private uint64 _ID
.field private class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> _ResourceDependencies
.method public hidebysig specialname instance string
get_Type() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (string V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      string SimNetUI.ModelLogic.Entity.EntityML::_Type
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method EntityML::get_Type

.method public hidebysig specialname instance void
set_Type(string 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      string SimNetUI.ModelLogic.Entity.EntityML::_Type
IL_0008:  ldarg.0
IL_0009:  ldstr      "Type"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method EntityML::set_Type

.method public hidebysig specialname instance uint32
get_Priority() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Entity.EntityML::_Priority
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method EntityML::get_Priority

.method public hidebysig specialname instance void
set_Priority(uint32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      uint32 SimNetUI.ModelLogic.Entity.EntityML::_Priority
IL_0008:  ldarg.0
IL_0009:  ldstr      "Priority"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method EntityML::set_Priority

.method public hidebysig specialname instance uint64
get_ID() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint64 SimNetUI.ModelLogic.Entity.EntityML::_ID
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method EntityML::get_ID

.method public hidebysig specialname instance void
set_ID(uint64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      uint64 SimNetUI.ModelLogic.Entity.EntityML::_ID
IL_0008:  ldarg.0
IL_0009:  ldstr      "ID"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method EntityML::set_ID

.method public hidebysig specialname instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>
get_ResourceDependencies() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Entity.EntityML::_ResourceDependencies
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method EntityML::get_ResourceDependencies

.method public hidebysig specialname instance void
set_ResourceDependencies(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Entity.EntityML::_ResourceDependencies
IL_0008:  ldarg.0
IL_0009:  ldstr      "ResourceDependencies"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method EntityML::set_ResourceDependencies

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.ModelLogicBase::.ctor()
IL_0006:  ret
} // end of method EntityML::.ctor

.property instance string Type()
{
.set instance void SimNetUI.ModelLogic.Entity.EntityML::set_Type(string)
.get instance string SimNetUI.ModelLogic.Entity.EntityML::get_Type()
} // end of property EntityML::Type
.property instance uint32 Priority()
{
.set instance void SimNetUI.ModelLogic.Entity.EntityML::set_Priority(uint32)
.get instance uint32 SimNetUI.ModelLogic.Entity.EntityML::get_Priority()
} // end of property EntityML::Priority
.property instance uint64 ID()
{
.get instance uint64 SimNetUI.ModelLogic.Entity.EntityML::get_ID()
.set instance void SimNetUI.ModelLogic.Entity.EntityML::set_ID(uint64)
} // end of property EntityML::ID
.property instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>
ResourceDependencies()
{
.get instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Entity.EntityML::get_ResourceDependencies()
.set instance void SimNetUI.ModelLogic.Entity.EntityML::set_ResourceDependencies(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>)
} // end of property EntityML::ResourceDependencies
} // end of class SimNetUI.ModelLogic.Entity.EntityML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML
extends SimNetUI.ModelLogic.Activities.Base.ActivityQueueBaseML
implements class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.IStatisticInfo`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML>
{
.class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2'
extends [mscorlib]System.Object
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
.class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass4'
extends [mscorlib]System.Object
{
.field public class SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2' 'CS$<>8__locals3'
.field public class SimNetUI.ModelLogic.Resources.ResourceML resource
.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
IL_0006:  ret
} // end of method '<>c__DisplayClass4'::.ctor

.method public hidebysig instance bool
'<OnReceiveEntity>b__1'(class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML e) cil managed
{
// Code size       19 (0x13)
.maxstack 3
.locals init (bool V_0)
IL_0000:  ldarg.1
IL_0001:  callvirt   instance class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_0006:  ldarg.0
IL_0007:  ldfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'/'<>c__DisplayClass4'::resource
IL_000c:  ceq
IL_000e:  stloc.0
IL_000f:  br       IL_0011

IL_0011:  ldloc.0
IL_0012:  ret
} // end of method '<>c__DisplayClass4'::'<OnReceiveEntity>b__1'

} // end of class '<>c__DisplayClass4'

.field public class SimNetUI.ModelLogic.Entity.EntityML entityML
.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
IL_0006:  ret
} // end of method '<>c__DisplayClass2'::.ctor

.method public hidebysig instance int32
'<OnReceiveEntity>b__0'(class SimNetUI.ModelLogic.Resources.ResourceML resource) cil managed
{
// Code size       87 (0x57)
.maxstack 4
.locals init (class [mscorlib]System.Collections.Generic.IEnumerable`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> V_0,
class SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'/'<>c__DisplayClass4' V_1,
int32 V_2,
bool V_3)
IL_0000:  newobj     instance void SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'/'<>c__DisplayClass4'::.ctor()
IL_0005:  stloc.1
IL_0006:  ldloc.1
IL_0007:  ldarg.0
IL_0008:  stfld      class SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2' SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'/'<>c__DisplayClass4'::'CS$<>8__locals3'
IL_000d:  ldloc.1
IL_000e:  ldarg.1
IL_000f:  stfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'/'<>c__DisplayClass4'::resource
IL_0014:  nop
IL_0015:  ldarg.0
IL_0016:  ldfld      class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'::entityML
IL_001b:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Entity.EntityML::get_ResourceDependencies()
IL_0020:  ldloc.1
IL_0021:  ldftn      instance bool SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'/'<>c__DisplayClass4'::'<OnReceiveEntity>b__1'(class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML)
IL_0027:  newobj     instance void class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML,bool>::.ctor(object,
native int)
IL_002c:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::Where<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
class [mscorlib]System.Func`2<!!0,bool>)
IL_0031:  stloc.0
IL_0032:  ldloc.0
IL_0033:  call       int32 [System.Core]System.Linq.Enumerable::Count<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
IL_0038:  ldc.i4.0
IL_0039:  cgt
IL_003b:  ldc.i4.0
IL_003c:  ceq
IL_003e:  stloc.3
IL_003f:  ldloc.3
IL_0040:  brtrue   IL_0051

IL_0042:  nop
IL_0043:  ldloc.0
IL_0044:  call       !!0 [System.Core]System.Linq.Enumerable::First<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
IL_0049:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_004e:  stloc.2
IL_004f:  br       IL_0055

IL_0051:  ldc.i4.0
IL_0052:  stloc.2
IL_0053:  br       IL_0055

IL_0055:  ldloc.2
IL_0056:  ret
} // end of method '<>c__DisplayClass2'::'<OnReceiveEntity>b__0'

} // end of class '<>c__DisplayClass2'

.field private class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML _Statistic
.field private class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> _EntityResourceDependencies
.method public hidebysig newslot specialname virtual final
instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML
get_Statistic() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::_Statistic
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityReleaseResourceML::get_Statistic

.method public hidebysig newslot specialname virtual final
instance void  set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::_Statistic
IL_0008:  ldarg.0
IL_0009:  ldstr      "Statistic"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityReleaseResourceML::set_Statistic

.method public hidebysig specialname instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>
get_EntityResourceDependencies() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::_EntityResourceDependencies
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityReleaseResourceML::get_EntityResourceDependencies

.method public hidebysig specialname instance void
set_EntityResourceDependencies(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::_EntityResourceDependencies
IL_0008:  ldarg.0
IL_0009:  ldstr      "EntityResourceDependencies"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityReleaseResourceML::set_EntityResourceDependencies

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       10 (0xa)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityQueueBaseML::.ctor()
IL_0006:  nop
IL_0007:  nop
IL_0008:  nop
IL_0009:  ret
} // end of method ActivityReleaseResourceML::.ctor

.method assembly hidebysig strict virtual
instance void  OnResetActivity() cil managed
{
// Code size       86 (0x56)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML V_0,
class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> V_1,
bool V_2)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::get_Statistic()
IL_0007:  callvirt   instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::Reset()
IL_000c:  nop
IL_000d:  nop
IL_000e:  ldarg.0
IL_000f:  call       instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::get_EntityResourceDependencies()
IL_0014:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::GetEnumerator()
IL_0019:  stloc.1
.try
{
IL_001a:  br       IL_0031

IL_001c:  ldloc.1
IL_001d:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Current()
IL_0022:  stloc.0
IL_0023:  nop
IL_0024:  ldloc.0
IL_0025:  callvirt   instance class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_002a:  callvirt   instance void SimNetUI.ModelLogic.Resources.ResourceML::clearResource()
IL_002f:  nop
IL_0030:  nop
IL_0031:  ldloc.1
IL_0032:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_0037:  stloc.2
IL_0038:  ldloc.2
IL_0039:  brtrue   IL_001c

IL_003b:  leave    IL_004d

}  // end .try
finally
{
IL_003d:  ldloc.1
IL_003e:  ldnull
IL_003f:  ceq
IL_0041:  stloc.2
IL_0042:  ldloc.2
IL_0043:  brtrue   IL_004c

IL_0045:  ldloc.1
IL_0046:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_004b:  nop
IL_004c:  endfinally
}  // end handler
IL_004d:  nop
IL_004e:  ldarg.0
IL_004f:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityQueueBaseML::OnResetActivity()
IL_0054:  nop
IL_0055:  ret
} // end of method ActivityReleaseResourceML::OnResetActivity

.method assembly hidebysig strict virtual
instance void  RecalculateTimeBasedStatistics(float64 SimulationTime) cil managed
{
// Code size       2 (0x2)
.maxstack 8
IL_0000:  nop
IL_0001:  ret
} // end of method ActivityReleaseResourceML::RecalculateTimeBasedStatistics

.method assembly hidebysig strict virtual
instance void  OnReceiveEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML inConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML outConnectorML) cil managed
{
// Code size       250 (0xfa)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML V_0,
class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Resources.ResourceML,int32> V_1,
class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML V_2,
int32 V_3,
class SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2' V_4,
class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> V_5,
bool V_6)
IL_0000:  newobj     instance void SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'::.ctor()
IL_0005:  stloc.s    V_4
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  call       instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_OutConnectors()
IL_000e:  ldstr      "Out"
IL_0013:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>::get_Item(!0)
IL_0018:  stloc.0
IL_0019:  ldloc.s    V_4
IL_001b:  ldarg.0
IL_001c:  ldloc.0
IL_001d:  call       instance class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::GetProvidedEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML)
IL_0022:  stfld      class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'::entityML
IL_0027:  ldloc.s    V_4
IL_0029:  ldftn      instance int32 SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'::'<OnReceiveEntity>b__0'(class SimNetUI.ModelLogic.Resources.ResourceML)
IL_002f:  newobj     instance void class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Resources.ResourceML,int32>::.ctor(object,
native int)
IL_0034:  stloc.1
IL_0035:  nop
IL_0036:  ldarg.0
IL_0037:  call       instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::get_EntityResourceDependencies()
IL_003c:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::GetEnumerator()
IL_0041:  stloc.s    V_5
.try
{
IL_0043:  br       IL_00b1

IL_0045:  ldloc.s    V_5
IL_0047:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Current()
IL_004c:  stloc.2
IL_004d:  nop
IL_004e:  ldloc.1
IL_004f:  ldloc.2
IL_0050:  callvirt   instance class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_0055:  callvirt   instance !1 class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Resources.ResourceML,int32>::Invoke(!0)
IL_005a:  stloc.3
IL_005b:  ldloc.3
IL_005c:  ldc.i4.0
IL_005d:  cgt
IL_005f:  ldc.i4.0
IL_0060:  ceq
IL_0062:  stloc.s    V_6
IL_0064:  ldloc.s    V_6
IL_0066:  brtrue   IL_00b0

IL_0068:  nop
IL_0069:  ldloc.3
IL_006a:  ldloc.2
IL_006b:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_0070:  cgt
IL_0072:  ldc.i4.0
IL_0073:  ceq
IL_0075:  stloc.s    V_6
IL_0077:  ldloc.s    V_6
IL_0079:  brtrue   IL_0082

IL_007b:  ldloc.2
IL_007c:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_0081:  stloc.3
IL_0082:  ldloc.2
IL_0083:  callvirt   instance class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_0088:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
IL_008d:  ldloc.s    V_4
IL_008f:  ldfld      class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'::entityML
IL_0094:  ldloc.3
IL_0095:  callvirt   instance void [SimNet]SimNet.ResourceObj::TakeBack(object,
int32)
IL_009a:  nop
IL_009b:  ldarg.0
IL_009c:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::get_Statistic()
IL_00a1:  dup
IL_00a2:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::get_ReleasedResources()
IL_00a7:  ldloc.3
IL_00a8:  add
IL_00a9:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::set_ReleasedResources(uint32)
IL_00ae:  nop
IL_00af:  nop
IL_00b0:  nop
IL_00b1:  ldloc.s    V_5
IL_00b3:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_00b8:  stloc.s    V_6
IL_00ba:  ldloc.s    V_6
IL_00bc:  brtrue   IL_0045

IL_00be:  leave    IL_00d4

}  // end .try
finally
{
IL_00c0:  ldloc.s    V_5
IL_00c2:  ldnull
IL_00c3:  ceq
IL_00c5:  stloc.s    V_6
IL_00c7:  ldloc.s    V_6
IL_00c9:  brtrue   IL_00d3

IL_00cb:  ldloc.s    V_5
IL_00cd:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_00d2:  nop
IL_00d3:  endfinally
}  // end handler
IL_00d4:  nop
IL_00d5:  ldarg.0
IL_00d6:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::get_Statistic()
IL_00db:  dup
IL_00dc:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::get_ProcessedEntities()
IL_00e1:  ldc.i4.1
IL_00e2:  add
IL_00e3:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::set_ProcessedEntities(uint32)
IL_00e8:  nop
IL_00e9:  ldarg.0
IL_00ea:  ldloc.0
IL_00eb:  ldloc.s    V_4
IL_00ed:  ldfld      class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'::entityML
IL_00f2:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::SendEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,
class SimNetUI.ModelLogic.Entity.EntityML)
IL_00f7:  nop
IL_00f8:  nop
IL_00f9:  ret
} // end of method ActivityReleaseResourceML::OnReceiveEntity

.property instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML
Statistic()
{
.get instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::get_Statistic()
.set instance void SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML)
} // end of property ActivityReleaseResourceML::Statistic
.property instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>
EntityResourceDependencies()
{
.set instance void SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::set_EntityResourceDependencies(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>)
.get instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::get_EntityResourceDependencies()
} // end of property ActivityReleaseResourceML::EntityResourceDependencies
} // end of class SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML
{
.field private uint32 _ProcessedEntities
.field private uint32 _AssignedResources
.method assembly hidebysig strict virtual
instance void  Reset() cil managed
{
// Code size       25 (0x19)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::Reset()
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  ldc.i4.0
IL_000a:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::set_ProcessedEntities(uint32)
IL_000f:  nop
IL_0010:  ldarg.0
IL_0011:  ldc.i4.0
IL_0012:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::set_AssignedResources(uint32)
IL_0017:  nop
IL_0018:  ret
} // end of method ActivityAssignResourceStatisticInfoML::Reset

.method public hidebysig specialname instance uint32
get_ProcessedEntities() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::_ProcessedEntities
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityAssignResourceStatisticInfoML::get_ProcessedEntities

.method public hidebysig specialname instance void
set_ProcessedEntities(uint32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::_ProcessedEntities
IL_0008:  ldarg.0
IL_0009:  ldstr      "ProcessedEntities"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityAssignResourceStatisticInfoML::set_ProcessedEntities

.method public hidebysig specialname instance uint32
get_AssignedResources() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::_AssignedResources
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityAssignResourceStatisticInfoML::get_AssignedResources

.method public hidebysig specialname instance void
set_AssignedResources(uint32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::_AssignedResources
IL_0008:  ldarg.0
IL_0009:  ldstr      "AssignedResources"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityAssignResourceStatisticInfoML::set_AssignedResources

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::.ctor()
IL_0006:  ret
} // end of method ActivityAssignResourceStatisticInfoML::.ctor

.property instance uint32 ProcessedEntities()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::set_ProcessedEntities(uint32)
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::get_ProcessedEntities()
} // end of property ActivityAssignResourceStatisticInfoML::ProcessedEntities
.property instance uint32 AssignedResources()
{
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::get_AssignedResources()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::set_AssignedResources(uint32)
} // end of property ActivityAssignResourceStatisticInfoML::AssignedResources
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML
{
.field private int32 _Min
.field private int32 _Max
.method public hidebysig specialname instance int32
get_Min() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (int32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::_Min
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method UniformIntML::get_Min

.method public hidebysig specialname instance void
set_Min(int32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::_Min
IL_0008:  ldarg.0
IL_0009:  ldstr      "Min"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method UniformIntML::set_Min

.method public hidebysig specialname instance int32
get_Max() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (int32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::_Max
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method UniformIntML::get_Max

.method public hidebysig specialname instance void
set_Max(int32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::_Max
IL_0008:  ldarg.0
IL_0009:  ldstr      "Max"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method UniformIntML::set_Max

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       30 (0x1e)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0007:  ldarg.0
IL_0008:  call       instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::get_Min()
IL_000d:  ldarg.0
IL_000e:  call       instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::get_Max()
IL_0013:  callvirt   instance int32 [SimNet]SimNet.RandomObj::UniformInt(int32,
int32)
IL_0018:  conv.r8
IL_0019:  stloc.0
IL_001a:  br       IL_001c

IL_001c:  ldloc.0
IL_001d:  ret
} // end of method UniformIntML::GetNextValue

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::.ctor()
IL_0006:  ret
} // end of method UniformIntML::.ctor

.property instance int32 Min()
{
.get instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::get_Min()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::set_Min(int32)
} // end of property UniformIntML::Min
.property instance int32 Max()
{
.get instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::get_Max()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::set_Max(int32)
} // end of property UniformIntML::Max
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NoEventML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML
{
.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  nop
IL_0001:  newobj     instance void [mscorlib]System.NotImplementedException::.ctor()
IL_0006:  throw
} // end of method NoEventML::GetNextValue

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::.ctor()
IL_0006:  ret
} // end of method NoEventML::.ctor

} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NoEventML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML
{
.field private float64 _Alpha
.field private float64 _Beta
.method public hidebysig specialname instance float64
get_Alpha() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::_Alpha
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method NormalML::get_Alpha

.method public hidebysig specialname instance void
set_Alpha(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::_Alpha
IL_0008:  ldarg.0
IL_0009:  ldstr      "Alpha"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method NormalML::set_Alpha

.method public hidebysig specialname instance float64
get_Beta() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::_Beta
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method NormalML::get_Beta

.method public hidebysig specialname instance void
set_Beta(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::_Beta
IL_0008:  ldarg.0
IL_0009:  ldstr      "Beta"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method NormalML::set_Beta

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       29 (0x1d)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0007:  ldarg.0
IL_0008:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::get_Alpha()
IL_000d:  ldarg.0
IL_000e:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::get_Beta()
IL_0013:  callvirt   instance float64 [SimNet]SimNet.RandomObj::Normal(float64,
float64)
IL_0018:  stloc.0
IL_0019:  br       IL_001b

IL_001b:  ldloc.0
IL_001c:  ret
} // end of method NormalML::GetNextValue

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::.ctor()
IL_0006:  ret
} // end of method NormalML::.ctor

.property instance float64 Alpha()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::set_Alpha(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::get_Alpha()
} // end of property NormalML::Alpha
.property instance float64 Beta()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::set_Beta(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::get_Beta()
} // end of property NormalML::Beta
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ActivityGeneratorML
extends SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML
implements class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.IStatisticInfo`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML>
{
.field private uint32 _EntityMaxCount
.field private class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML _Schedule
.field private class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML _Statistic
.method public hidebysig specialname instance uint32
get_EntityMaxCount() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ActivityGeneratorML::_EntityMaxCount
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityGeneratorML::get_EntityMaxCount

.method public hidebysig specialname instance void
set_EntityMaxCount(uint32 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      uint32 SimNetUI.ModelLogic.Activities.ActivityGeneratorML::_EntityMaxCount
IL_0008:  ldarg.0
IL_0009:  ldstr      "EntityMaxCount"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityGeneratorML::set_EntityMaxCount

.method public hidebysig specialname instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML
get_Schedule() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::_Schedule
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityGeneratorML::get_Schedule

.method public hidebysig specialname instance void
set_Schedule(class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::_Schedule
IL_0008:  ldarg.0
IL_0009:  ldstr      "Schedule"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityGeneratorML::set_Schedule

.method public hidebysig newslot specialname virtual final
instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML
get_Statistic() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::_Statistic
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ActivityGeneratorML::get_Statistic

.method public hidebysig newslot specialname virtual final
instance void  set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::_Statistic
IL_0008:  ldarg.0
IL_0009:  ldstr      "Statistic"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method ActivityGeneratorML::set_Statistic

.method assembly hidebysig strict virtual
instance void  RecalculateTimeBasedStatistics(float64 SimulationTime) cil managed
{
// Code size       2 (0x2)
.maxstack 8
IL_0000:  nop
IL_0001:  ret
} // end of method ActivityGeneratorML::RecalculateTimeBasedStatistics

.method assembly hidebysig strict virtual
instance void  OnReceiveEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML) cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  nop
IL_0001:  newobj     instance void [mscorlib]System.NotImplementedException::.ctor()
IL_0006:  throw
} // end of method ActivityGeneratorML::OnReceiveEntity

.method assembly hidebysig strict virtual
instance void  OnResetActivity() cil managed
{
// Code size       91 (0x5b)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML V_0,
class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML> V_1,
bool V_2)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Statistic()
IL_0007:  callvirt   instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::Reset()
IL_000c:  nop
IL_000d:  nop
IL_000e:  ldarg.0
IL_000f:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::_Schedule
IL_0014:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Content()
IL_0019:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::OfType<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML>(class [mscorlib]System.Collections.IEnumerable)
IL_001e:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML>::GetEnumerator()
IL_0023:  stloc.1
.try
{
IL_0024:  br       IL_0036

IL_0026:  ldloc.1
IL_0027:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML>::get_Current()
IL_002c:  stloc.0
IL_002d:  nop
IL_002e:  ldloc.0
IL_002f:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::ResetRandomNumberGenerator()
IL_0034:  nop
IL_0035:  nop
IL_0036:  ldloc.1
IL_0037:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_003c:  stloc.2
IL_003d:  ldloc.2
IL_003e:  brtrue   IL_0026

IL_0040:  leave    IL_0052

}  // end .try
finally
{
IL_0042:  ldloc.1
IL_0043:  ldnull
IL_0044:  ceq
IL_0046:  stloc.2
IL_0047:  ldloc.2
IL_0048:  brtrue   IL_0051

IL_004a:  ldloc.1
IL_004b:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_0050:  nop
IL_0051:  endfinally
}  // end handler
IL_0052:  nop
IL_0053:  ldarg.0
IL_0054:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::OnResetActivity()
IL_0059:  nop
IL_005a:  ret
} // end of method ActivityGeneratorML::OnResetActivity

.method public hidebysig instance void
generate(float64 t,
float64 priority,
object[] p) cil managed
{
.custom instance void [SimNet]SimNet.TELLAttribute::.ctor() = ( 01 00 00 00 )
.param [3]
.custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 )
// Code size       490 (0x1ea)
.maxstack 3
.locals init (bool V_0,
int32 V_1,
class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML V_2,
float64 V_3,
float64 V_4,
float64 V_5,
float64 V_6,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML V_7,
class SimNetUI.ModelLogic.Entity.EntityML V_8,
bool V_9,
object[] locals,
class [SimNet]SimNet.SimObj obj,
string label)
call       class [SimNet]SimNet.SimObj [SimNet]SimNet.Scheduler::GetCurrentSchedObj()
stloc      obj
ldloc      obj
callvirt   instance string [SimNet]SimNet.SimObj::get_Label()
stloc      label
ldloc      label
ldstr ""
call       bool [mscorlib]System.String::op_Equality(string,string) 
brfalse    SIM_JUMP_0
br         IL_0000
SIM_JUMP_0:   ldloc      label
ldstr "SIM_WAIT_0"
call       bool [mscorlib]System.String::op_Equality(string,string) 
brfalse    SIM_JUMP_1
br         SIM_WAIT_0
SIM_JUMP_1:   ldloc      label
ldstr "SIM_WAIT_1"
call       bool [mscorlib]System.String::op_Equality(string,string) 
brfalse    SIM_JUMP_2
br         SIM_WAIT_1
SIM_JUMP_2:   ldloc      label
ldstr "SIM_WAIT_2"
call       bool [mscorlib]System.String::op_Equality(string,string) 
brfalse    IL_01e9
br         SIM_WAIT_2
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
IL_0007:  ldnull
IL_0008:  ceq
IL_000a:  ldc.i4.0
IL_000b:  ceq
IL_000d:  stloc.s    V_9
IL_000f:  ldloc.s    V_9
IL_0011:  brtrue   IL_002e

IL_0013:  ldstr      "No schedule for Generator "
IL_0018:  ldarg.0
IL_0019:  call       instance string SimNetUI.ModelLogic.Base.ModelLogicBase::get_Name()
IL_001e:  ldstr      " available. Schedule Object was null"
IL_0023:  call       string [mscorlib]System.String::Concat(string,
string,
string)
IL_0028:  newobj     instance void SimNetUI.ModelLogic.Base.SimNetUIModelLogicException::.ctor(string)
IL_002d:  throw

IL_002e:  ldarg.0
IL_002f:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
IL_0034:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Content()
IL_0039:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML>::get_Count()
IL_003e:  ldc.i4.0
IL_003f:  ceq
IL_0041:  ldc.i4.0
IL_0042:  ceq
IL_0044:  stloc.s    V_9
IL_0046:  ldloc.s    V_9
IL_0048:  brtrue   IL_0060

IL_004a:  ldstr      "No distributions defined for schedule of Generator "
IL_004f:  ldarg.0
IL_0050:  call       instance string SimNetUI.ModelLogic.Base.ModelLogicBase::get_Name()
IL_0055:  call       string [mscorlib]System.String::Concat(string,
string)
IL_005a:  newobj     instance void SimNetUI.ModelLogic.Base.SimNetUIModelLogicException::.ctor(string)
IL_005f:  throw

IL_0060:  ldc.i4.0
IL_0061:  stloc.0
IL_0062:  ldc.i4.0
IL_0063:  stloc.1
IL_0064:  ldarg.0
IL_0065:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
IL_006a:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Content()
IL_006f:  ldloc.1
IL_0070:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML>::get_Item(int32)
IL_0075:  stloc.2
IL_0076:  ldarg.0
IL_0077:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
IL_007c:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Stop()
IL_0081:  stloc.3
IL_0082:  ldarg.0
IL_0083:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
IL_0088:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Start()
IL_008d:  stloc.s    V_4
IL_008f:  ldloc.2
IL_0090:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::get_ScheduleDuration()
IL_0095:  stloc.s    V_5
.try
{
IL_0097:
ldc.i4.s 10
newarr		[mscorlib]System.Object
stloc  		locals
ldloc		locals
ldc.i4.s 0
ldstr "INTERRUPT"
stelem.ref
ldloc		locals
ldc.i4.s 1
ldloc.s 1
box			[mscorlib]System.Int32
stelem.ref
ldloc		locals
ldc.i4.s 2
ldloc.s 2
stelem.ref
ldloc		locals
ldc.i4.s 3
ldloc.s 3
box			[mscorlib]System.Double
stelem.ref
ldloc		locals
ldc.i4.s 4
ldloc.s 4
box			[mscorlib]System.Double
stelem.ref
ldloc		locals
ldc.i4.s 5
ldloc.s 5
box			[mscorlib]System.Double
stelem.ref
ldloc		locals
ldc.i4.s 6
ldloc.s 6
box			[mscorlib]System.Double
stelem.ref
ldloc		locals
ldc.i4.s 7
ldloc.s 7
stelem.ref
ldloc		locals
ldc.i4.s 8
ldloc.s 8
stelem.ref
ldloc		locals
ldc.i4.s 9
ldloc.s 9
box			[mscorlib]System.Boolean
stelem.ref
ldloc      obj
ldloc      locals
callvirt   instance void [SimNet]SimNet.SimObj::set_Locals(object[])
ldloc      obj
ldstr "SIM_WAIT_0"
callvirt   instance void [SimNet]SimNet.SimObj::set_Label(string)
ldloc      obj
ldarg.3
callvirt   instance void [SimNet]SimNet.SimObj::set_Params(object[])
nop
IL_0098:  ldloc.s    V_4
IL_009a:  ldloca.s   V_0
IL_009c:  call       void [SimNet]SimNet.Simulation::Wait(float64,
bool&)
nop
ret
IL_00a1:  nop
IL_00a2:  nop
IL_00a3:  leave    IL_00aa

}  // end .try
catch [mscorlib]System.Object
{
IL_00a5:  pop
IL_00a6:  nop
IL_00a7:  nop
IL_00a8:  leave    IL_00aa

}  // end handler
SIM_WAIT_0:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc.s    obj
callvirt   instance bool [SimNet]SimNet.SimObj::get_Interrupt()
stloc.s    V_0
ldloc     locals
ldc.i4.s 1
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 1
ldloc     locals
ldc.i4.s 2
ldelem.ref
stloc.s 2
ldloc     locals
ldc.i4.s 3
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
stloc.s 3
ldloc     locals
ldc.i4.s 4
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
stloc.s 4
ldloc     locals
ldc.i4.s 5
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
stloc.s 5
ldloc     locals
ldc.i4.s 6
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
stloc.s 6
ldloc     locals
ldc.i4.s 7
ldelem.ref
stloc.s 7
ldloc     locals
ldc.i4.s 8
ldelem.ref
stloc.s 8
ldloc     locals
ldc.i4.s 9
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 9
IL_00aa:  nop
IL_00ab:  br         IL_01c2

IL_00b0:  nop
IL_00b1:  ldarg.0
IL_00b2:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_00b7:  callvirt   instance bool SimNetUI.ModelLogic.SimulationML::CheckIfSimulationIsCanceld()
IL_00bc:  ldc.i4.0
IL_00bd:  ceq
IL_00bf:  stloc.s    V_9
IL_00c1:  ldloc.s    V_9
IL_00c3:  brtrue   IL_00d7

IL_00c5:  nop
IL_00c6:  ldarg.0
IL_00c7:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_00cc:  callvirt   instance void SimNetUI.ModelLogic.SimulationML::StopSimulation()
IL_00d1:  nop
IL_00d2:  br         IL_01e9

IL_00d7:  ldloc.2
IL_00d8:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::GetNextValue()
IL_00dd:  call       float64 [mscorlib]System.Math::Abs(float64)
IL_00e2:  stloc.s    V_6
IL_00e4:  ldloc.3
IL_00e5:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_00ea:  ldloc.s    V_6
IL_00ec:  add
IL_00ed:  clt.un
IL_00ef:  stloc.s    V_9
IL_00f1:  ldloc.s    V_9
IL_00f3:  brtrue     IL_01be

IL_00f8:  nop
IL_00f9:  ldloc.s    V_5
IL_00fb:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_0100:  ldloc.s    V_6
IL_0102:  add
IL_0103:  clt.un
IL_0105:  stloc.s    V_9
IL_0107:  ldloc.s    V_9
IL_0109:  brtrue   IL_015e

IL_010b:  nop
.try
{
IL_010c:
ldc.i4.s 10
newarr		[mscorlib]System.Object
stloc  		locals
ldloc		locals
ldc.i4.s 0
ldstr "INTERRUPT"
stelem.ref
ldloc		locals
ldc.i4.s 1
ldloc.s 1
box			[mscorlib]System.Int32
stelem.ref
ldloc		locals
ldc.i4.s 2
ldloc.s 2
stelem.ref
ldloc		locals
ldc.i4.s 3
ldloc.s 3
box			[mscorlib]System.Double
stelem.ref
ldloc		locals
ldc.i4.s 4
ldloc.s 4
box			[mscorlib]System.Double
stelem.ref
ldloc		locals
ldc.i4.s 5
ldloc.s 5
box			[mscorlib]System.Double
stelem.ref
ldloc		locals
ldc.i4.s 6
ldloc.s 6
box			[mscorlib]System.Double
stelem.ref
ldloc		locals
ldc.i4.s 7
ldloc.s 7
stelem.ref
ldloc		locals
ldc.i4.s 8
ldloc.s 8
stelem.ref
ldloc		locals
ldc.i4.s 9
ldloc.s 9
box			[mscorlib]System.Boolean
stelem.ref
ldloc      obj
ldloc      locals
callvirt   instance void [SimNet]SimNet.SimObj::set_Locals(object[])
ldloc      obj
ldstr "SIM_WAIT_1"
callvirt   instance void [SimNet]SimNet.SimObj::set_Label(string)
ldloc      obj
ldarg.3
callvirt   instance void [SimNet]SimNet.SimObj::set_Params(object[])
nop
IL_010d:  ldloc.s    V_6
IL_010f:  ldloca.s   V_0
IL_0111:  call       void [SimNet]SimNet.Simulation::Wait(float64,
bool&)
nop
ret
IL_0116:  nop
IL_0117:  nop
IL_0118:  leave    IL_011f

}  // end .try
catch [mscorlib]System.Object
{
IL_011a:  pop
IL_011b:  nop
IL_011c:  nop
IL_011d:  leave    IL_011f

}  // end handler
SIM_WAIT_1:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc.s    obj
callvirt   instance bool [SimNet]SimNet.SimObj::get_Interrupt()
stloc.s    V_0
ldloc     locals
ldc.i4.s 1
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 1
ldloc     locals
ldc.i4.s 2
ldelem.ref
stloc.s 2
ldloc     locals
ldc.i4.s 3
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
stloc.s 3
ldloc     locals
ldc.i4.s 4
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
stloc.s 4
ldloc     locals
ldc.i4.s 5
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
stloc.s 5
ldloc     locals
ldc.i4.s 6
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
stloc.s 6
ldloc     locals
ldc.i4.s 7
ldelem.ref
stloc.s 7
ldloc     locals
ldc.i4.s 8
ldelem.ref
stloc.s 8
ldloc     locals
ldc.i4.s 9
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 9
IL_011f:  nop
IL_0120:  ldarg.0
IL_0121:  call       instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_OutConnectors()
IL_0126:  ldstr      "Out"
IL_012b:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>::get_Item(!0)
IL_0130:  stloc.s    V_7
IL_0132:  ldarg.0
IL_0133:  ldloc.s    V_7
IL_0135:  call       instance class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::GetProvidedEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML)
IL_013a:  stloc.s    V_8
IL_013c:  ldarg.0
IL_013d:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Statistic()
IL_0142:  dup
IL_0143:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML::get_DepartedEntities()
IL_0148:  ldc.i4.1
IL_0149:  add
IL_014a:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML::set_DepartedEntities(uint32)
IL_014f:  nop
IL_0150:  ldarg.0
IL_0151:  ldloc.s    V_7
IL_0153:  ldloc.s    V_8
IL_0155:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::SendEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,
class SimNetUI.ModelLogic.Entity.EntityML)
IL_015a:  nop
IL_015b:  nop
IL_015c:  br       IL_01bb

IL_015e:  nop
.try
{
IL_015f:
ldc.i4.s 10
newarr		[mscorlib]System.Object
stloc  		locals
ldloc		locals
ldc.i4.s 0
ldstr "INTERRUPT"
stelem.ref
ldloc		locals
ldc.i4.s 1
ldloc.s 1
box			[mscorlib]System.Int32
stelem.ref
ldloc		locals
ldc.i4.s 2
ldloc.s 2
stelem.ref
ldloc		locals
ldc.i4.s 3
ldloc.s 3
box			[mscorlib]System.Double
stelem.ref
ldloc		locals
ldc.i4.s 4
ldloc.s 4
box			[mscorlib]System.Double
stelem.ref
ldloc		locals
ldc.i4.s 5
ldloc.s 5
box			[mscorlib]System.Double
stelem.ref
ldloc		locals
ldc.i4.s 6
ldloc.s 6
box			[mscorlib]System.Double
stelem.ref
ldloc		locals
ldc.i4.s 7
ldloc.s 7
stelem.ref
ldloc		locals
ldc.i4.s 8
ldloc.s 8
stelem.ref
ldloc		locals
ldc.i4.s 9
ldloc.s 9
box			[mscorlib]System.Boolean
stelem.ref
ldloc      obj
ldloc      locals
callvirt   instance void [SimNet]SimNet.SimObj::set_Locals(object[])
ldloc      obj
ldstr "SIM_WAIT_2"
callvirt   instance void [SimNet]SimNet.SimObj::set_Label(string)
ldloc      obj
ldarg.3
callvirt   instance void [SimNet]SimNet.SimObj::set_Params(object[])
nop
IL_0160:  ldloc.s    V_5
IL_0162:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_0167:  sub
IL_0168:  ldloca.s   V_0
IL_016a:  call       void [SimNet]SimNet.Simulation::Wait(float64,
bool&)
nop
ret
IL_016f:  nop
IL_0170:  nop
IL_0171:  leave    IL_0178

}  // end .try
catch [mscorlib]System.Object
{
IL_0173:  pop
IL_0174:  nop
IL_0175:  nop
IL_0176:  leave    IL_0178

}  // end handler
SIM_WAIT_2:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc.s    obj
callvirt   instance bool [SimNet]SimNet.SimObj::get_Interrupt()
stloc.s    V_0
ldloc     locals
ldc.i4.s 1
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 1
ldloc     locals
ldc.i4.s 2
ldelem.ref
stloc.s 2
ldloc     locals
ldc.i4.s 3
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
stloc.s 3
ldloc     locals
ldc.i4.s 4
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
stloc.s 4
ldloc     locals
ldc.i4.s 5
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
stloc.s 5
ldloc     locals
ldc.i4.s 6
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
stloc.s 6
ldloc     locals
ldc.i4.s 7
ldelem.ref
stloc.s 7
ldloc     locals
ldc.i4.s 8
ldelem.ref
stloc.s 8
ldloc     locals
ldc.i4.s 9
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 9
IL_0178:  nop
IL_0179:  ldarg.0
IL_017a:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
IL_017f:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Content()
IL_0184:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML>::get_Count()
IL_0189:  ldloc.1
IL_018a:  ldc.i4.1
IL_018b:  add
IL_018c:  dup
IL_018d:  stloc.1
IL_018e:  cgt
IL_0190:  ldc.i4.0
IL_0191:  ceq
IL_0193:  stloc.s    V_9
IL_0195:  ldloc.s    V_9
IL_0197:  brtrue   IL_01b7

IL_0199:  nop
IL_019a:  ldarg.0
IL_019b:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
IL_01a0:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Content()
IL_01a5:  ldloc.1
IL_01a6:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML>::get_Item(int32)
IL_01ab:  stloc.2
IL_01ac:  ldloc.2
IL_01ad:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::get_ScheduleDuration()
IL_01b2:  stloc.s    V_5
IL_01b4:  nop
IL_01b5:  br       IL_01ba

IL_01b7:  nop
IL_01b8:  br       IL_01e9

IL_01ba:  nop
IL_01bb:  nop
IL_01bc:  br       IL_01c1

IL_01be:  nop
IL_01bf:  br       IL_01e9

IL_01c1:  nop
IL_01c2:  ldloc.3
IL_01c3:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_01c8:  blt.un   IL_01df

IL_01ca:  ldarg.0
IL_01cb:  call       instance uint32 SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_EntityMaxCount()
IL_01d0:  ldarg.0
IL_01d1:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Statistic()
IL_01d6:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML::get_DepartedEntities()
IL_01db:  cgt.un
IL_01dd:  br       IL_01e0

IL_01df:  ldc.i4.0
IL_01e0:  stloc.s    V_9
IL_01e2:  ldloc.s    V_9
IL_01e4:  brtrue     IL_00b0

IL_01e9: call       void [SimNet]SimNet.Scheduler::RemoveSchedObj()
  ret
} // end of method ActivityGeneratorML::generate

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityRouteBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityGeneratorML::.ctor

.property instance uint32 EntityMaxCount()
{
.get instance uint32 SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_EntityMaxCount()
.set instance void SimNetUI.ModelLogic.Activities.ActivityGeneratorML::set_EntityMaxCount(uint32)
} // end of property ActivityGeneratorML::EntityMaxCount
.property instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML
Schedule()
{
.get instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
.set instance void SimNetUI.ModelLogic.Activities.ActivityGeneratorML::set_Schedule(class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML)
} // end of property ActivityGeneratorML::Schedule
.property instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML
Statistic()
{
.get instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Statistic()
.set instance void SimNetUI.ModelLogic.Activities.ActivityGeneratorML::set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML)
} // end of property ActivityGeneratorML::Statistic
} // end of class SimNetUI.ModelLogic.Activities.ActivityGeneratorML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML
{
.field private float64 _Alpha
.field private float64 _Beta
.method public hidebysig specialname instance float64
get_Alpha() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::_Alpha
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method WeibullML::get_Alpha

.method public hidebysig specialname instance void
set_Alpha(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::_Alpha
IL_0008:  ldarg.0
IL_0009:  ldstr      "Alpha"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method WeibullML::set_Alpha

.method public hidebysig specialname instance float64
get_Beta() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::_Beta
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method WeibullML::get_Beta

.method public hidebysig specialname instance void
set_Beta(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::_Beta
IL_0008:  ldarg.0
IL_0009:  ldstr      "Beta"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method WeibullML::set_Beta

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       29 (0x1d)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0007:  ldarg.0
IL_0008:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::get_Alpha()
IL_000d:  ldarg.0
IL_000e:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::get_Beta()
IL_0013:  callvirt   instance float64 [SimNet]SimNet.RandomObj::Weibull(float64,
float64)
IL_0018:  stloc.0
IL_0019:  br       IL_001b

IL_001b:  ldloc.0
IL_001c:  ret
} // end of method WeibullML::GetNextValue

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::.ctor()
IL_0006:  ret
} // end of method WeibullML::.ctor

.property instance float64 Alpha()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::set_Alpha(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::get_Alpha()
} // end of property WeibullML::Alpha
.property instance float64 Beta()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::set_Beta(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::get_Beta()
} // end of property WeibullML::Beta
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML
extends SimNetUI.ModelLogic.Base.StatisticInfoBaseML
{
.field private class SimNetUI.ModelLogic.Resources.ResourceML _Resource
.field public uint32 _AvailableResources
.field public uint32 _PendingResources
.field public uint32 _MaxAvailableResources
.method public hidebysig specialname instance uint32
get_AvailableResources() cil managed
{
// Code size       33 (0x21)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::_Resource
IL_0007:  brtrue   IL_000c

IL_0009:  ldc.i4.0
IL_000a:  br       IL_001c

IL_000c:  ldarg.0
IL_000d:  ldfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::_Resource
IL_0012:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
IL_0017:  callvirt   instance int32 [SimNet]SimNet.ResourceObj::get_Resources()
IL_001c:  stloc.0
IL_001d:  br       IL_001f

IL_001f:  ldloc.0
IL_0020:  ret
} // end of method ResourceStatisticInfoML::get_AvailableResources

.method public hidebysig specialname instance uint32
get_PendingResources() cil managed
{
// Code size       33 (0x21)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::_Resource
IL_0007:  brtrue   IL_000c

IL_0009:  ldc.i4.0
IL_000a:  br       IL_001c

IL_000c:  ldarg.0
IL_000d:  ldfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::_Resource
IL_0012:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
IL_0017:  callvirt   instance int32 [SimNet]SimNet.ResourceObj::get_PendingResources()
IL_001c:  stloc.0
IL_001d:  br       IL_001f

IL_001f:  ldloc.0
IL_0020:  ret
} // end of method ResourceStatisticInfoML::get_PendingResources

.method public hidebysig specialname instance uint32
get_MaxAvailableResources() cil managed
{
// Code size       33 (0x21)
.maxstack 3
.locals init (uint32 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::_Resource
IL_0007:  brtrue   IL_000c

IL_0009:  ldc.i4.0
IL_000a:  br       IL_001c

IL_000c:  ldarg.0
IL_000d:  ldfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::_Resource
IL_0012:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
IL_0017:  callvirt   instance int32 [SimNet]SimNet.ResourceObj::get_MaxResources()
IL_001c:  stloc.0
IL_001d:  br       IL_001f

IL_001f:  ldloc.0
IL_0020:  ret
} // end of method ResourceStatisticInfoML::get_MaxAvailableResources

.method assembly hidebysig instance void
SuscribePropertyChanged() cil managed
{
// Code size       82 (0x52)
.maxstack 4
.locals init (bool V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::_Resource
IL_0007:  ldnull
IL_0008:  ceq
IL_000a:  stloc.0
IL_000b:  ldloc.0
IL_000c:  brtrue   IL_0051

IL_000e:  nop
IL_000f:  ldarg.0
IL_0010:  ldfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::_Resource
IL_0015:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
IL_001a:  ldarg.0
IL_001b:  ldftn      instance void SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::OnResourcePropertyUpdated(object,
class [System]System.ComponentModel.PropertyChangedEventArgs)
IL_0021:  newobj     instance void [System]System.ComponentModel.PropertyChangedEventHandler::.ctor(object,
native int)
IL_0026:  callvirt   instance void [SimNet]SimNet.ResourceObj::add_PropertyChanged(class [System]System.ComponentModel.PropertyChangedEventHandler)
IL_002b:  nop
IL_002c:  ldarg.0
IL_002d:  ldstr      "AvailableResources"
IL_0032:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0037:  nop
IL_0038:  ldarg.0
IL_0039:  ldstr      "PendingResources"
IL_003e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0043:  nop
IL_0044:  ldarg.0
IL_0045:  ldstr      "MaxAvailableResources"
IL_004a:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_004f:  nop
IL_0050:  nop
IL_0051:  ret
} // end of method ResourceStatisticInfoML::SuscribePropertyChanged

.method assembly hidebysig instance void
UnSuscribePropertyChanged() cil managed
{
// Code size       44 (0x2c)
.maxstack 4
.locals init (bool V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::_Resource
IL_0007:  ldnull
IL_0008:  ceq
IL_000a:  stloc.0
IL_000b:  ldloc.0
IL_000c:  brtrue   IL_002b

IL_000e:  ldarg.0
IL_000f:  ldfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::_Resource
IL_0014:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Resources.ResourceML::get_obj()
IL_0019:  ldarg.0
IL_001a:  ldftn      instance void SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::OnResourcePropertyUpdated(object,
class [System]System.ComponentModel.PropertyChangedEventArgs)
IL_0020:  newobj     instance void [System]System.ComponentModel.PropertyChangedEventHandler::.ctor(object,
native int)
IL_0025:  callvirt   instance void [SimNet]SimNet.ResourceObj::remove_PropertyChanged(class [System]System.ComponentModel.PropertyChangedEventHandler)
IL_002a:  nop
IL_002b:  ret
} // end of method ResourceStatisticInfoML::UnSuscribePropertyChanged

.method assembly hidebysig specialname
instance class SimNetUI.ModelLogic.Resources.ResourceML
get_Resource() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (class SimNetUI.ModelLogic.Resources.ResourceML V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::_Resource
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method ResourceStatisticInfoML::get_Resource

.method assembly hidebysig specialname
instance void  set_Resource(class SimNetUI.ModelLogic.Resources.ResourceML 'value') cil managed
{
// Code size       23 (0x17)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance void SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::UnSuscribePropertyChanged()
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  ldarg.1
IL_000a:  stfld      class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::_Resource
IL_000f:  ldarg.0
IL_0010:  call       instance void SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::SuscribePropertyChanged()
IL_0015:  nop
IL_0016:  ret
} // end of method ResourceStatisticInfoML::set_Resource

.method private hidebysig instance void
OnResourcePropertyUpdated(object sender,
class [System]System.ComponentModel.PropertyChangedEventArgs e) cil managed
{
// Code size       95 (0x5f)
.maxstack 3
.locals init (string V_0)
IL_0000:  nop
IL_0001:  ldarg.2
IL_0002:  callvirt   instance string [System]System.ComponentModel.PropertyChangedEventArgs::get_PropertyName()
IL_0007:  stloc.0
IL_0008:  ldloc.0
IL_0009:  brfalse  IL_005e

IL_000b:  ldloc.0
IL_000c:  ldstr      "Resources"
IL_0011:  call       bool [mscorlib]System.String::op_Equality(string,
string)
IL_0016:  brtrue   IL_0034

IL_0018:  ldloc.0
IL_0019:  ldstr      "PendingResources"
IL_001e:  call       bool [mscorlib]System.String::op_Equality(string,
string)
IL_0023:  brtrue   IL_0042

IL_0025:  ldloc.0
IL_0026:  ldstr      "MaxResources"
IL_002b:  call       bool [mscorlib]System.String::op_Equality(string,
string)
IL_0030:  brtrue   IL_0050

IL_0032:  br       IL_005e

IL_0034:  ldarg.0
IL_0035:  ldstr      "AvailableResources"
IL_003a:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_003f:  nop
IL_0040:  br       IL_005e

IL_0042:  ldarg.0
IL_0043:  ldstr      "PendingResources"
IL_0048:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_004d:  nop
IL_004e:  br       IL_005e

IL_0050:  ldarg.0
IL_0051:  ldstr      "MaxAvailableResources"
IL_0056:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_005b:  nop
IL_005c:  br       IL_005e

IL_005e:  ret
} // end of method ResourceStatisticInfoML::OnResourcePropertyUpdated

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.StatisticInfoBaseML::.ctor()
IL_0006:  ret
} // end of method ResourceStatisticInfoML::.ctor

.property instance uint32 AvailableResources()
{
.get instance uint32 SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::get_AvailableResources()
} // end of property ResourceStatisticInfoML::AvailableResources
.property instance uint32 PendingResources()
{
.get instance uint32 SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::get_PendingResources()
} // end of property ResourceStatisticInfoML::PendingResources
.property instance uint32 MaxAvailableResources()
{
.get instance uint32 SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::get_MaxAvailableResources()
} // end of property ResourceStatisticInfoML::MaxAvailableResources
.property instance class SimNetUI.ModelLogic.Resources.ResourceML
Resource()
{
.get instance class SimNetUI.ModelLogic.Resources.ResourceML SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::get_Resource()
.set instance void SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML::set_Resource(class SimNetUI.ModelLogic.Resources.ResourceML)
} // end of property ResourceStatisticInfoML::Resource
} // end of class SimNetUI.ModelLogic.Resources.ResourceStatisticInfoML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML
{
.field private float64 _Min
.field private float64 _Max
.method public hidebysig specialname instance float64
get_Min() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::_Min
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method UniformDoubleML::get_Min

.method public hidebysig specialname instance void
set_Min(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::_Min
IL_0008:  ldarg.0
IL_0009:  ldstr      "Min"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method UniformDoubleML::set_Min

.method public hidebysig specialname instance float64
get_Max() cil managed
{
// Code size       12 (0xc)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::_Max
IL_0007:  stloc.0
IL_0008:  br       IL_000a

IL_000a:  ldloc.0
IL_000b:  ret
} // end of method UniformDoubleML::get_Max

.method public hidebysig specialname instance void
set_Max(float64 'value') cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldarg.1
IL_0003:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::_Max
IL_0008:  ldarg.0
IL_0009:  ldstr      "Max"
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0013:  nop
IL_0014:  ret
} // end of method UniformDoubleML::set_Max

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       29 (0x1d)
.maxstack 3
.locals init (float64 V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0007:  ldarg.0
IL_0008:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::get_Min()
IL_000d:  ldarg.0
IL_000e:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::get_Max()
IL_0013:  callvirt   instance float64 [SimNet]SimNet.RandomObj::UniformDouble(float64,
float64)
IL_0018:  stloc.0
IL_0019:  br       IL_001b

IL_001b:  ldloc.0
IL_001c:  ret
} // end of method UniformDoubleML::GetNextValue

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::.ctor()
IL_0006:  ret
} // end of method UniformDoubleML::.ctor

.property instance float64 Min()
{
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::get_Min()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::set_Min(float64)
} // end of property UniformDoubleML::Min
.property instance float64 Max()
{
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::get_Max()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::set_Max(float64)
} // end of property UniformDoubleML::Max
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML
{
.field private class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> '<Incomming>k__BackingField'
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
.method public hidebysig specialname instance class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>
get_Incomming() cil managed
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
// Code size       11 (0xb)
.maxstack 3
.locals init (class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> V_0)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML::'<Incomming>k__BackingField'
IL_0006:  stloc.0
IL_0007:  br       IL_0009

IL_0009:  ldloc.0
IL_000a:  ret
} // end of method InConnectorML::get_Incomming

.method public hidebysig specialname instance void
set_Incomming(class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> 'value') cil managed
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
// Code size       8 (0x8)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML::'<Incomming>k__BackingField'
IL_0007:  ret
} // end of method InConnectorML::set_Incomming

.method public hidebysig specialname virtual
instance bool  get_IsLimitReached() cil managed
{
// Code size       30 (0x1e)
.maxstack 3
.locals init (bool V_0)
IL_0000:  nop
IL_0001:  ldarg.0
IL_0002:  call       instance class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML::get_Incomming()
IL_0007:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>::get_Count()
IL_000c:  conv.i8
IL_000d:  ldarg.0
IL_000e:  call       instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::get_LimitConnections()
IL_0013:  conv.u8
IL_0014:  clt
IL_0016:  ldc.i4.0
IL_0017:  ceq
IL_0019:  stloc.0
IL_001a:  br       IL_001c

IL_001c:  ldloc.0
IL_001d:  ret
} // end of method InConnectorML::get_IsLimitReached

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       22 (0x16)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::.ctor()
IL_0006:  nop
IL_0007:  nop
IL_0008:  ldarg.0
IL_0009:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>::.ctor()
IL_000e:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML::set_Incomming(class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>)
IL_0013:  nop
IL_0014:  nop
IL_0015:  ret
} // end of method InConnectorML::.ctor

.property instance class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>
Incomming()
{
.get instance class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML::get_Incomming()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML::set_Incomming(class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>)
} // end of property InConnectorML::Incomming
.property instance bool IsLimitReached()
{
.get instance bool SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML::get_IsLimitReached()
} // end of property InConnectorML::IsLimitReached
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// Warnung: Win32-Ressourcendatei "SimNetUI.ModelLogic.res" wurde erstellt.
