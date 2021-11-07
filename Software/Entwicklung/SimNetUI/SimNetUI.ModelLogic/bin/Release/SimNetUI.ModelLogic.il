
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
.ver 1:0:4242:30808
}
.assembly extern System.Core
{
.publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
.ver 4:0:0:0
}
.assembly SimNetUI.ModelLogic
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
.custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 )
.custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 09 4D 69 63 72 6F 73 6F 66 74 00 00 )       // ...Microsoft..
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 )
.custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 )

// --- The following custom attribute is added automatically, do not uncomment -------
//  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 )

.custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 )
.custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 13 53 69 6D 4E 65 74 55 49 2E 4D 6F 64 65   // ...SimNetUI.Mode
6C 4C 6F 67 69 63 00 00 )                         // lLogic..
.custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 1B 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright ..
4D 69 63 72 6F 73 6F 66 74 20 32 30 31 31 00 00 ) // Microsoft 2011..
.custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 13 53 69 6D 4E 65 74 55 49 2E 4D 6F 64 65   // ...SimNetUI.Mode
6C 4C 6F 67 69 63 00 00 )                         // lLogic..
.custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 )
.custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 38 30 38 31 31 66 33 2D 62 33 31 62   // ..$580811f3-b31b
2D 34 61 33 37 2D 62 65 34 30 2D 37 33 34 35 63   // -4a37-be40-7345c
34 39 30 61 36 63 62 00 00 )                      // 490a6cb..
.custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
.custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 29 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ..).NETFramework
2C 56 65 72 73 69 6F 6E 3D 76 34 2E 30 2C 50 72   // ,Version=v4.0,Pr
6F 66 69 6C 65 3D 43 6C 69 65 6E 74 01 00 54 0E   // ofile=Client..T.
14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61   // .FrameworkDispla
79 4E 61 6D 65 1F 2E 4E 45 54 20 46 72 61 6D 65   // yName..NET Frame
77 6F 72 6B 20 34 20 43 6C 69 65 6E 74 20 50 72   // work 4 Client Pr
6F 66 69 6C 65 )                                  // ofile
.hash algorithm 0x00008004
.ver 1:0:0:0
}
.module SimNetUI.ModelLogic.dll
// MVID: {E83B1CA3-3FD9-450F-9035-5D752F80A398}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED
// Image base: 0x0000000000290000


// =============== CLASS MEMBERS DECLARATION ===================

.class interface private abstract auto ansi SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.IStatisticInfo`1<(SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.StatisticInfoBaseML) T>
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
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
IL_0006:  ret
} // end of method ModelLogicBase::.ctor

.method public hidebysig specialname instance string
get_Name() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      string SimNetUI.ModelLogic.Base.ModelLogicBase::_displayName
IL_0006:  ret
} // end of method ModelLogicBase::get_Name

.method public hidebysig specialname instance void
set_Name(string 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      string SimNetUI.ModelLogic.Base.ModelLogicBase::_displayName
IL_0007:  ldarg.0
IL_0008:  ldstr      "Name"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ModelLogicBase::set_Name

.method public hidebysig instance void
VerifyPropertyName(string propertyName) cil managed
{
.custom instance void [mscorlib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 )
.custom instance void [mscorlib]System.Diagnostics.ConditionalAttribute::.ctor(string) = ( 01 00 05 44 45 42 55 47 00 00 )                   // ...DEBUG..
// Code size       42 (0x2a)
.maxstack 3
.locals init ([0] string msg)
IL_0000:  ldarg.0
IL_0001:  call       class [System]System.ComponentModel.PropertyDescriptorCollection [System]System.ComponentModel.TypeDescriptor::GetProperties(object)
IL_0006:  ldarg.1
IL_0007:  callvirt   instance class [System]System.ComponentModel.PropertyDescriptor [System]System.ComponentModel.PropertyDescriptorCollection::get_Item(string)
IL_000c:  brtrue   IL_0029

IL_000e:  ldstr      "Invalid property name: "
IL_0013:  ldarg.1
IL_0014:  call       string [mscorlib]System.String::Concat(string,
string)
IL_0019:  stloc.0
IL_001a:  ldarg.0
IL_001b:  callvirt   instance bool SimNetUI.ModelLogic.Base.ModelLogicBase::get_ThrowOnInvalidPropertyName()
IL_0020:  blt.un  IL_0029

IL_0022:  ldloc.0
IL_0023:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
IL_0028:  throw

IL_0029:  ret
} // end of method ModelLogicBase::VerifyPropertyName

.method family hidebysig newslot specialname virtual
instance bool  get_ThrowOnInvalidPropertyName() cil managed
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      bool SimNetUI.ModelLogic.Base.ModelLogicBase::'<ThrowOnInvalidPropertyName>k__BackingField'
IL_0006:  ret
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
// Code size       41 (0x29)
.maxstack 3
.locals init (class [System]System.ComponentModel.PropertyChangedEventHandler V_0,
class [System]System.ComponentModel.PropertyChangedEventHandler V_1,
class [System]System.ComponentModel.PropertyChangedEventHandler V_2)
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
IL_0026:  blt.un   IL_0007

IL_0028:  ret
} // end of method ModelLogicBase::add_PropertyChanged

.method public hidebysig newslot specialname virtual final
instance void  remove_PropertyChanged(class [System]System.ComponentModel.PropertyChangedEventHandler 'value') cil managed
{
// Code size       41 (0x29)
.maxstack 3
.locals init (class [System]System.ComponentModel.PropertyChangedEventHandler V_0,
class [System]System.ComponentModel.PropertyChangedEventHandler V_1,
class [System]System.ComponentModel.PropertyChangedEventHandler V_2)
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
IL_0026:  blt.un   IL_0007

IL_0028:  ret
} // end of method ModelLogicBase::remove_PropertyChanged

.method family hidebysig newslot virtual
instance void  OnPropertyChanged(string propertyName) cil managed
{
// Code size       26 (0x1a)
.maxstack 3
.locals init ([0] class [System]System.ComponentModel.PropertyChangedEventHandler 'handler',
[1] class [System]System.ComponentModel.PropertyChangedEventArgs e)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [System]System.ComponentModel.PropertyChangedEventHandler SimNetUI.ModelLogic.Base.ModelLogicBase::PropertyChanged
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  blt.un  IL_0019

IL_000a:  ldarg.1
IL_000b:  newobj     instance void [System]System.ComponentModel.PropertyChangedEventArgs::.ctor(string)
IL_0010:  stloc.1
IL_0011:  ldloc.0
IL_0012:  ldarg.0
IL_0013:  ldloc.1
IL_0014:  callvirt   instance void [System]System.ComponentModel.PropertyChangedEventHandler::Invoke(object,
class [System]System.ComponentModel.PropertyChangedEventArgs)
IL_0019:  ret
} // end of method ModelLogicBase::OnPropertyChanged

.method public hidebysig newslot virtual final
instance void  Dispose() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnDispose()
IL_0006:  ret
} // end of method ModelLogicBase::Dispose

.method family hidebysig newslot virtual
instance void  OnDispose() cil managed
{
// Code size       1 (0x1)
.maxstack 8
IL_0000:  ret
} // end of method ModelLogicBase::OnDispose

.event [System]System.ComponentModel.PropertyChangedEventHandler PropertyChanged
{
.addon instance void SimNetUI.ModelLogic.Base.ModelLogicBase::add_PropertyChanged(class [System]System.ComponentModel.PropertyChangedEventHandler)
.removeon instance void SimNetUI.ModelLogic.Base.ModelLogicBase::remove_PropertyChanged(class [System]System.ComponentModel.PropertyChangedEventHandler)
} // end of event ModelLogicBase::PropertyChanged
.property instance string Name()
{
.get instance string SimNetUI.ModelLogic.Base.ModelLogicBase::get_Name()
.set instance void SimNetUI.ModelLogic.Base.ModelLogicBase::set_Name(string)
} // end of property ModelLogicBase::Name
.property instance bool ThrowOnInvalidPropertyName()
{
.get instance bool SimNetUI.ModelLogic.Base.ModelLogicBase::get_ThrowOnInvalidPropertyName()
.set instance void SimNetUI.ModelLogic.Base.ModelLogicBase::set_ThrowOnInvalidPropertyName(bool)
} // end of property ModelLogicBase::ThrowOnInvalidPropertyName
} // end of class SimNetUI.ModelLogic.Base.ModelLogicBase

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML
extends SimNetUI.ModelLogic.Base.ModelLogicBase
{
.field private float64 _ScheduleDuration
.method public hidebysig specialname instance float64
get_ScheduleDuration() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::_ScheduleDuration
IL_0006:  ret
} // end of method DistributionBaseML::get_ScheduleDuration

.method public hidebysig specialname instance void
set_ScheduleDuration(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::_ScheduleDuration
IL_0007:  ldarg.0
IL_0008:  ldstr      "ScheduleDuration"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
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
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::_Seed
IL_0006:  ret
} // end of method ProbabilityDistributionBaseML::get_Seed

.method public hidebysig specialname instance void
set_Seed(int32 'value') cil managed
{
// Code size       36 (0x24)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::_Seed
IL_0007:  ldarg.0
IL_0008:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_000d:  ldarg.0
IL_000e:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::_Seed
IL_0013:  callvirt   instance void [SimNet]SimNet.RandomObj::SetSeed(int32)
IL_0018:  ldarg.0
IL_0019:  ldstr      "Seed"
IL_001e:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0023:  ret
} // end of method ProbabilityDistributionBaseML::set_Seed

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       18 (0x12)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::.ctor()
IL_0006:  ldarg.0
IL_0007:  newobj     instance void [SimNet]SimNet.RandomObj::.ctor()
IL_000c:  stfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0011:  ret
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
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::_Min
IL_0006:  ret
} // end of method TriangularML::get_Min

.method public hidebysig specialname instance void
set_Min(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::_Min
IL_0007:  ldarg.0
IL_0008:  ldstr      "Min"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method TriangularML::set_Min

.method public hidebysig specialname instance float64
get_Max() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::_Max
IL_0006:  ret
} // end of method TriangularML::get_Max

.method public hidebysig specialname instance void
set_Max(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::_Max
IL_0007:  ldarg.0
IL_0008:  ldstr      "Max"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method TriangularML::set_Max

.method public hidebysig specialname instance float64
get_Mode() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::_Mode
IL_0006:  ret
} // end of method TriangularML::get_Mode

.method public hidebysig specialname instance void
set_Mode(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::_Mode
IL_0007:  ldarg.0
IL_0008:  ldstr      "Max"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method TriangularML::set_Mode

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       30 (0x1e)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0006:  ldarg.0
IL_0007:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::get_Min()
IL_000c:  ldarg.0
IL_000d:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::get_Mode()
IL_0012:  ldarg.0
IL_0013:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::get_Max()
IL_0018:  callvirt   instance float64 [SimNet]SimNet.RandomObj::Triangular(float64,
float64,
float64)
IL_001d:  ret
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
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::set_Min(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::get_Min()
} // end of property TriangularML::Min
.property instance float64 Max()
{
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::get_Max()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.TriangularML::set_Max(float64)
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
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.FixedML::_Value
IL_0006:  ret
} // end of method FixedML::get_Value

.method public hidebysig specialname instance void
set_Value(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.FixedML::_Value
IL_0007:  ldarg.0
IL_0008:  ldstr      "Value"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method FixedML::set_Value

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.FixedML::get_Value()
IL_0006:  ret
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
// Code size       8 (0x8)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  call       instance void [mscorlib]System.Exception::.ctor(string)
IL_0007:  ret
} // end of method SimNetUIModelLogicException::.ctor

.method public hidebysig specialname rtspecialname
instance void  .ctor(class [mscorlib]System.Runtime.Serialization.SerializationInfo si,
valuetype [mscorlib]System.Runtime.Serialization.StreamingContext sc) cil managed
{
// Code size       9 (0x9)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  ldarg.2
IL_0003:  call       instance void [mscorlib]System.Exception::.ctor(class [mscorlib]System.Runtime.Serialization.SerializationInfo,
valuetype [mscorlib]System.Runtime.Serialization.StreamingContext)
IL_0008:  ret
} // end of method SimNetUIModelLogicException::.ctor

.method public hidebysig specialname rtspecialname
instance void  .ctor(string str,
class [mscorlib]System.Exception e) cil managed
{
// Code size       9 (0x9)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  ldarg.2
IL_0003:  call       instance void [mscorlib]System.Exception::.ctor(string,
class [mscorlib]System.Exception)
IL_0008:  ret
} // end of method SimNetUIModelLogicException::.ctor

} // end of class SimNetUI.ModelLogic.Base.SimNetUIModelLogicException

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.StatisticInfoBaseML
extends SimNetUI.ModelLogic.Base.ModelLogicBase
{
.method family hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.ModelLogicBase::.ctor()
IL_0006:  ret
} // end of method StatisticInfoBaseML::.ctor

} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.StatisticInfoBaseML

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.StatisticInfoBaseML
{
.field private uint32 _InQueue
.field private uint32 _MaxInQueue
.field private float64 _AverageInQueue
.method public hidebysig specialname instance uint32
get_InQueue() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::_InQueue
IL_0006:  ret
} // end of method ActivityQueueBaseStatisticInfoML::get_InQueue

.method public hidebysig specialname instance void
set_InQueue(uint32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::_InQueue
IL_0007:  ldarg.0
IL_0008:  ldstr      "InQueue"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityQueueBaseStatisticInfoML::set_InQueue

.method public hidebysig specialname instance uint32
get_MaxInQueue() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::_MaxInQueue
IL_0006:  ret
} // end of method ActivityQueueBaseStatisticInfoML::get_MaxInQueue

.method public hidebysig specialname instance void
set_MaxInQueue(uint32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::_MaxInQueue
IL_0007:  ldarg.0
IL_0008:  ldstr      "MaxInQueue"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityQueueBaseStatisticInfoML::set_MaxInQueue

.method public hidebysig specialname instance float64
get_AverageInQueue() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::_AverageInQueue
IL_0006:  ret
} // end of method ActivityQueueBaseStatisticInfoML::get_AverageInQueue

.method public hidebysig specialname instance void
set_AverageInQueue(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::_AverageInQueue
IL_0007:  ldarg.0
IL_0008:  ldstr      "AverageInQueue"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityQueueBaseStatisticInfoML::set_AverageInQueue

.method family hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.StatisticInfoBaseML::.ctor()
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
.field private float64 _Busy
.field private uint32 _Processed
.method public hidebysig specialname instance uint32
get_Processed() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::_Processed
IL_0006:  ret
} // end of method ActivityDelayBaseStatisticInfoML::get_Processed

.method public hidebysig specialname instance void
set_Processed(uint32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::_Processed
IL_0007:  ldarg.0
IL_0008:  ldstr      "Processed"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityDelayBaseStatisticInfoML::set_Processed

.method public hidebysig specialname instance float64
get_Busy() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::_Busy
IL_0006:  ret
} // end of method ActivityDelayBaseStatisticInfoML::get_Busy

.method public hidebysig specialname instance void
set_Busy(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::_Busy
IL_0007:  ldarg.0
IL_0008:  ldstr      "Busy"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityDelayBaseStatisticInfoML::set_Busy

.method public hidebysig specialname instance float64
get_WorkingTime() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::_WorkingTime
IL_0006:  ret
} // end of method ActivityDelayBaseStatisticInfoML::get_WorkingTime

.method public hidebysig specialname instance void
set_WorkingTime(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::_WorkingTime
IL_0007:  ldarg.0
IL_0008:  ldstr      "WorkingTime"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityDelayBaseStatisticInfoML::set_WorkingTime

.method public hidebysig specialname instance float64
get_OffTime() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::_OffTime
IL_0006:  ret
} // end of method ActivityDelayBaseStatisticInfoML::get_OffTime

.method public hidebysig specialname instance void
set_OffTime(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::_OffTime
IL_0007:  ldarg.0
IL_0008:  ldstr      "OffTime"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
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
.property instance float64 Busy()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_Busy(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::get_Busy()
} // end of property ActivityDelayBaseStatisticInfoML::Busy
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
.field private uint32 _InWork
.field private uint32 _MaxInWork
.field private float64 _AverageInWork
.method public hidebysig specialname instance uint32
get_InWork() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::_InWork
IL_0006:  ret
} // end of method ActivityWaitStatisticInfoML::get_InWork

.method public hidebysig specialname instance void
set_InWork(uint32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::_InWork
IL_0007:  ldarg.0
IL_0008:  ldstr      "InWork"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityWaitStatisticInfoML::set_InWork

.method public hidebysig specialname instance uint32
get_MaxInWork() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::_MaxInWork
IL_0006:  ret
} // end of method ActivityWaitStatisticInfoML::get_MaxInWork

.method public hidebysig specialname instance void
set_MaxInWork(uint32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::_MaxInWork
IL_0007:  ldarg.0
IL_0008:  ldstr      "MaxInWork"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityWaitStatisticInfoML::set_MaxInWork

.method public hidebysig specialname instance float64
get_AverageInWork() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::_AverageInWork
IL_0006:  ret
} // end of method ActivityWaitStatisticInfoML::get_AverageInWork

.method public hidebysig specialname instance void
set_AverageInWork(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::_AverageInWork
IL_0007:  ldarg.0
IL_0008:  ldstr      "AverageInWork"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
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

.property instance uint32 InWork()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_InWork(uint32)
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_InWork()
} // end of property ActivityWaitStatisticInfoML::InWork
.property instance uint32 MaxInWork()
{
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_MaxInWork()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_MaxInWork(uint32)
} // end of property ActivityWaitStatisticInfoML::MaxInWork
.property instance float64 AverageInWork()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_AverageInWork(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_AverageInWork()
} // end of property ActivityWaitStatisticInfoML::AverageInWork
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.StatisticInfoBaseML
{
.field private uint32 _ArrivedEntities
.method public hidebysig specialname instance uint32
get_ArrivedEntities() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML::_ArrivedEntities
IL_0006:  ret
} // end of method ActivityExitStatisticInfoML::get_ArrivedEntities

.method public hidebysig specialname instance void
set_ArrivedEntities(uint32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML::_ArrivedEntities
IL_0007:  ldarg.0
IL_0008:  ldstr      "ArrivedEntities"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityExitStatisticInfoML::set_ArrivedEntities

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.StatisticInfoBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityExitStatisticInfoML::.ctor

.property instance uint32 ArrivedEntities()
{
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML::get_ArrivedEntities()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML::set_ArrivedEntities(uint32)
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
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::_LimitConnections
IL_0006:  ret
} // end of method ConnectorML::get_LimitConnections

.method public hidebysig specialname instance void
set_LimitConnections(uint32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::_LimitConnections
IL_0007:  ldarg.0
IL_0008:  ldstr      "LimitConnections"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ConnectorML::set_LimitConnections

.method public hidebysig specialname instance class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML
get_ParentActivity() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::_ParentActivity
IL_0006:  ret
} // end of method ConnectorML::get_ParentActivity

.method public hidebysig specialname instance void
set_ParentActivity(class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::_ParentActivity
IL_0007:  ldarg.0
IL_0008:  ldstr      "ParentActivity"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
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

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.Base.ActivityBaseML
extends SimNetUI.ModelLogic.Base.ModelLogicBase
{
.field private class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> _InConnectors
.field private class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> _OutConnectors
.field private class SimNetUI.ModelLogic.SimulationML _Parent
.field private class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SendAndReceive
.field private class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> ProvideEntity
.method public hidebysig specialname instance class SimNetUI.ModelLogic.SimulationML
get_SimulationParent() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::_Parent
IL_0006:  ret
} // end of method ActivityBaseML::get_SimulationParent

.method public hidebysig specialname instance void
set_SimulationParent(class SimNetUI.ModelLogic.SimulationML 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::_Parent
IL_0007:  ldarg.0
IL_0008:  ldstr      "SimulationParent"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityBaseML::set_SimulationParent

.method public hidebysig specialname instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>
get_InConnectors() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::_InConnectors
IL_0006:  ret
} // end of method ActivityBaseML::get_InConnectors

.method public hidebysig specialname instance void
set_InConnectors(class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::_InConnectors
IL_0007:  ldarg.0
IL_0008:  ldstr      "InConnectors"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityBaseML::set_InConnectors

.method public hidebysig specialname instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>
get_OutConnectors() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::_OutConnectors
IL_0006:  ret
} // end of method ActivityBaseML::get_OutConnectors

.method public hidebysig specialname instance void
set_OutConnectors(class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::_OutConnectors
IL_0007:  ldarg.0
IL_0008:  ldstr      "OutConnectors"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityBaseML::set_OutConnectors

.method public hidebysig specialname instance void
add_SendAndReceive(class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> 'value') cil managed
{
// Code size       41 (0x29)
.maxstack 3
.locals init (class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_0,
class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_1,
class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_2)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::SendAndReceive
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::SendAndReceive
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  blt.un   IL_0007

IL_0028:  ret
} // end of method ActivityBaseML::add_SendAndReceive

.method public hidebysig specialname instance void
remove_SendAndReceive(class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> 'value') cil managed
{
// Code size       41 (0x29)
.maxstack 3
.locals init (class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_0,
class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_1,
class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_2)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::SendAndReceive
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Remove(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::SendAndReceive
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  blt.un   IL_0007

IL_0028:  ret
} // end of method ActivityBaseML::remove_SendAndReceive

.method public hidebysig specialname instance void
add_ProvideEntity(class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> 'value') cil managed
{
// Code size       41 (0x29)
.maxstack 3
.locals init (class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_0,
class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_1,
class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_2)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::ProvideEntity
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::ProvideEntity
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  blt.un   IL_0007

IL_0028:  ret
} // end of method ActivityBaseML::add_ProvideEntity

.method public hidebysig specialname instance void
remove_ProvideEntity(class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> 'value') cil managed
{
// Code size       41 (0x29)
.maxstack 3
.locals init (class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_0,
class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_1,
class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> V_2)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::ProvideEntity
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Remove(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::ProvideEntity
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  blt.un   IL_0007

IL_0028:  ret
} // end of method ActivityBaseML::remove_ProvideEntity

.method family hidebysig instance class SimNetUI.ModelLogic.Entity.EntityML
GetProvidedEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML connection) cil managed
{
// Code size       24 (0x18)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_0006:  callvirt   instance void SimNetUI.ModelLogic.SimulationML::NotifySimulationTimeChanged()
IL_000b:  ldarg.0
IL_000c:  ldfld      class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::ProvideEntity
IL_0011:  ldarg.1
IL_0012:  callvirt   instance !1 class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>::Invoke(!0)
IL_0017:  ret
} // end of method ActivityBaseML::GetProvidedEntity

.method assembly hidebysig newslot abstract strict virtual
instance void  OnResetActivity() cil managed
{
} // end of method ActivityBaseML::OnResetActivity

.method family hidebysig newslot abstract virtual
instance void  OnReceiveEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML) cil managed
{
} // end of method ActivityBaseML::OnReceiveEntity

.method assembly hidebysig newslot abstract strict virtual
instance void  RecalculateTimeBasedStatistics(float64 SimulationTime) cil managed
{
} // end of method ActivityBaseML::RecalculateTimeBasedStatistics

.method family hidebysig instance void
SendEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML,
class SimNetUI.ModelLogic.Entity.EntityML entityML) cil managed
{
// Code size       88 (0x58)
.maxstack 4
IL_0000:  ldarg.0
IL_0001:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_0006:  callvirt   instance bool SimNetUI.ModelLogic.SimulationML::CheckIfSimulationIsCanceld()
IL_000b:  blt.un   IL_004c

IL_000d:  ldarg.0
IL_000e:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_0013:  callvirt   instance void SimNetUI.ModelLogic.SimulationML::NotifySimulationTimeChanged()
IL_0018:  ldarg.0
IL_0019:  ldfld      class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::SendAndReceive
IL_001e:  ldarg.1
IL_001f:  ldarg.2
IL_0020:  ldarg.3
IL_0021:  callvirt   instance void class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>::Invoke(!0,
!1,
!2)
IL_0026:  ldarg.1
IL_0027:  callvirt   instance class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::get_ParentActivity()
IL_002c:  ldarg.1
IL_002d:  ldarg.2
IL_002e:  callvirt   instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::OnReceiveEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML)
IL_0033:  ldarg.0
IL_0034:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_0039:  callvirt   instance bool SimNetUI.ModelLogic.SimulationML::CheckIfSimulationIsCanceld()
IL_003e:  blt.un  IL_0057

IL_0040:  ldarg.0
IL_0041:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_0046:  callvirt   instance void SimNetUI.ModelLogic.SimulationML::StopSimulation()
IL_004b:  ret

IL_004c:  ldarg.0
IL_004d:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_0052:  callvirt   instance void SimNetUI.ModelLogic.SimulationML::StopSimulation()
IL_0057:  ret
} // end of method ActivityBaseML::SendEntity

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       29 (0x1d)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.ModelLogicBase::.ctor()
IL_0006:  ldarg.0
IL_0007:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>::.ctor()
IL_000c:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::set_OutConnectors(class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>)
IL_0011:  ldarg.0
IL_0012:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>::.ctor()
IL_0017:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::set_InConnectors(class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>)
IL_001c:  ret
} // end of method ActivityBaseML::.ctor

.event class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> SendAndReceive
{
.removeon instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::remove_SendAndReceive(class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>)
.addon instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::add_SendAndReceive(class [mscorlib]System.Action`3<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>)
} // end of event ActivityBaseML::SendAndReceive
.event class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML> ProvideEntity
{
.removeon instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::remove_ProvideEntity(class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>)
.addon instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::add_ProvideEntity(class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,class SimNetUI.ModelLogic.Entity.EntityML>)
} // end of event ActivityBaseML::ProvideEntity
.property instance class SimNetUI.ModelLogic.SimulationML
SimulationParent()
{
.set instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::set_SimulationParent(class SimNetUI.ModelLogic.SimulationML)
.get instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
} // end of property ActivityBaseML::SimulationParent
.property instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>
InConnectors()
{
.set instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::set_InConnectors(class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>)
.get instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_InConnectors()
} // end of property ActivityBaseML::InConnectors
.property instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>
OutConnectors()
{
.set instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::set_OutConnectors(class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>)
.get instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_OutConnectors()
} // end of property ActivityBaseML::OutConnectors
} // end of class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ActivityRouteML
extends SimNetUI.ModelLogic.Activities.Base.ActivityBaseML
implements class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.IStatisticInfo`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML>
{
.field private class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> ProvideRouteTargetConnector
.field private class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML _Statistic
.method public hidebysig specialname instance void
add_ProvideRouteTargetConnector(class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> 'value') cil managed
{
// Code size       41 (0x29)
.maxstack 3
.locals init (class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> V_0,
class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> V_1,
class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> V_2)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.ActivityRouteML::ProvideRouteTargetConnector
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.ActivityRouteML::ProvideRouteTargetConnector
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  blt.un   IL_0007

IL_0028:  ret
} // end of method ActivityRouteML::add_ProvideRouteTargetConnector

.method public hidebysig specialname instance void
remove_ProvideRouteTargetConnector(class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> 'value') cil managed
{
// Code size       41 (0x29)
.maxstack 3
.locals init (class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> V_0,
class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> V_1,
class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> V_2)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.ActivityRouteML::ProvideRouteTargetConnector
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  stloc.1
IL_0009:  ldloc.1
IL_000a:  ldarg.1
IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Remove(class [mscorlib]System.Delegate,
class [mscorlib]System.Delegate)
IL_0010:  castclass  class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>
IL_0015:  stloc.2
IL_0016:  ldarg.0
IL_0017:  ldflda     class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.ActivityRouteML::ProvideRouteTargetConnector
IL_001c:  ldloc.2
IL_001d:  ldloc.1
IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>>(!!0&,
!!0,
!!0)
IL_0023:  stloc.0
IL_0024:  ldloc.0
IL_0025:  ldloc.1
IL_0026:  blt.un   IL_0007

IL_0028:  ret
} // end of method ActivityRouteML::remove_ProvideRouteTargetConnector

.method public hidebysig newslot specialname virtual final
instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML
get_Statistic() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityRouteML::_Statistic
IL_0006:  ret
} // end of method ActivityRouteML::get_Statistic

.method public hidebysig newslot specialname virtual final
instance void  set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityRouteML::_Statistic
IL_0007:  ldarg.0
IL_0008:  ldstr      "Statistic"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityRouteML::set_Statistic

.method assembly hidebysig strict virtual
instance void  RecalculateTimeBasedStatistics(float64 SimulationTime) cil managed
{
// Code size       1 (0x1)
.maxstack 8
IL_0000:  ret
} // end of method ActivityRouteML::RecalculateTimeBasedStatistics

.method assembly hidebysig strict virtual
instance void  OnResetActivity() cil managed
{
// Code size       13 (0xd)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityRouteML::get_Statistic()
IL_0006:  ldc.i4.0
IL_0007:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML::set_RoutedEntities(uint32)
IL_000c:  ret
} // end of method ActivityRouteML::OnResetActivity

.method family hidebysig virtual instance void
OnReceiveEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML) cil managed
{
// Code size       67 (0x43)
.maxstack 4
.locals init ([0] class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML start,
[1] class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML target,
[2] class SimNetUI.ModelLogic.Entity.EntityML entity)
IL_0000:  ldarg.0
IL_0001:  call       instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_OutConnectors()
IL_0006:  ldstr      "Out"
IL_000b:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>::get_Item(!0)
IL_0010:  stloc.0
IL_0011:  ldarg.0
IL_0012:  ldfld      class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.ActivityRouteML::ProvideRouteTargetConnector
IL_0017:  ldloc.0
IL_0018:  callvirt   instance !1 class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>::Invoke(!0)
IL_001d:  stloc.1
IL_001e:  ldarg.0
IL_001f:  ldloc.1
IL_0020:  call       instance class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::GetProvidedEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML)
IL_0025:  stloc.2
IL_0026:  ldarg.0
IL_0027:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityRouteML::get_Statistic()
IL_002c:  dup
IL_002d:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML::get_RoutedEntities()
IL_0032:  ldc.i4.1
IL_0033:  add
IL_0034:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML::set_RoutedEntities(uint32)
IL_0039:  ldarg.0
IL_003a:  ldloc.1
IL_003b:  ldloc.0
IL_003c:  ldloc.2
IL_003d:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::SendEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,
class SimNetUI.ModelLogic.Entity.EntityML)
IL_0042:  ret
} // end of method ActivityRouteML::OnReceiveEntity

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityRouteML::.ctor

.event class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> ProvideRouteTargetConnector
{
.addon instance void SimNetUI.ModelLogic.Activities.ActivityRouteML::add_ProvideRouteTargetConnector(class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>)
.removeon instance void SimNetUI.ModelLogic.Activities.ActivityRouteML::remove_ProvideRouteTargetConnector(class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>)
} // end of event ActivityRouteML::ProvideRouteTargetConnector
.property instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML
Statistic()
{
.set instance void SimNetUI.ModelLogic.Activities.ActivityRouteML::set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML)
.get instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityRouteML::get_Statistic()
} // end of property ActivityRouteML::Statistic
} // end of class SimNetUI.ModelLogic.Activities.ActivityRouteML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.StatisticInfoBaseML
{
.field private uint32 _RoutedEntities
.method public hidebysig specialname instance uint32
get_RoutedEntities() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML::_RoutedEntities
IL_0006:  ret
} // end of method ActivityRouteStatisticInfoML::get_RoutedEntities

.method public hidebysig specialname instance void
set_RoutedEntities(uint32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML::_RoutedEntities
IL_0007:  ldarg.0
IL_0008:  ldstr      "RoutedEntities"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityRouteStatisticInfoML::set_RoutedEntities

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.StatisticInfoBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityRouteStatisticInfoML::.ctor

.property instance uint32 RoutedEntities()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML::set_RoutedEntities(uint32)
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML::get_RoutedEntities()
} // end of property ActivityRouteStatisticInfoML::RoutedEntities
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityRouteStatisticInfoML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.StatisticInfoBaseML
{
.field private uint32 _DepartedEntities
.method public hidebysig specialname instance uint32
get_DepartedEntities() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML::_DepartedEntities
IL_0006:  ret
} // end of method ActivityGeneratorStatisticInfoML::get_DepartedEntities

.method public hidebysig specialname instance void
set_DepartedEntities(uint32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML::_DepartedEntities
IL_0007:  ldarg.0
IL_0008:  ldstr      "DepartedEntities"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityGeneratorStatisticInfoML::set_DepartedEntities

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.StatisticInfoBaseML::.ctor()
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
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::_Alpha
IL_0006:  ret
} // end of method ErlangML::get_Alpha

.method public hidebysig specialname instance void
set_Alpha(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::_Alpha
IL_0007:  ldarg.0
IL_0008:  ldstr      "Alpha"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ErlangML::set_Alpha

.method public hidebysig specialname instance int32
get_Beta() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::_Beta
IL_0006:  ret
} // end of method ErlangML::get_Beta

.method public hidebysig specialname instance void
set_Beta(int32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::_Beta
IL_0007:  ldarg.0
IL_0008:  ldstr      "Beta"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ErlangML::set_Beta

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       24 (0x18)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0006:  ldarg.0
IL_0007:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::get_Alpha()
IL_000c:  ldarg.0
IL_000d:  call       instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::get_Beta()
IL_0012:  callvirt   instance float64 [SimNet]SimNet.RandomObj::Erlang(float64,
int32)
IL_0017:  ret
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
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::set_Alpha(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::get_Alpha()
} // end of property ErlangML::Alpha
.property instance int32 Beta()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::set_Beta(int32)
.get instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML::get_Beta()
} // end of property ErlangML::Beta
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ErlangML

.class public abstract auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.Base.ActivityQueueBaseML
extends SimNetUI.ModelLogic.Activities.Base.ActivityBaseML
{
.method family hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityQueueBaseML::.ctor

} // end of class SimNetUI.ModelLogic.Activities.Base.ActivityQueueBaseML

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
// Code size       14 (0xe)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
IL_0006:  ldarg.0
IL_0007:  ldarg.1
IL_0008:  stfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_000d:  ret
} // end of method NestedClassSimulationLogic::.ctor

.method public hidebysig instance void
AssignResource(float64 t,
float64 priority,
object[] p) cil managed
{
.custom instance void [SimNet]SimNet.TELLAttribute::.ctor() = ( 01 00 00 00 )
.param [3]
.custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 )
// Code size       758 (0x2f6)
.maxstack 5
.locals init ([0] bool interrupt,
[1] int32 i,
[2] class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML,
[3] class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
[4] class SimNetUI.ModelLogic.Entity.EntityML entityML,
[5] int32 V_5,
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
brfalse    IL_02f5
br         SIM_WAIT_2
IL_0000:  ldc.i4.0
IL_0001:  stloc.0
IL_0002:  ldarg.0
IL_0003:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0008:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_000d:  dup
IL_000e:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_0013:  ldc.i4.1
IL_0014:  add
IL_0015:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_InQueue(uint32)
IL_001a:  ldarg.0
IL_001b:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0020:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_0025:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_002a:  ldarg.0
IL_002b:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0030:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_0035:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_MaxInQueue()
IL_003a:  blt.un   IL_0069

IL_003c:  ldarg.0
IL_003d:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0042:  callvirt   instance bool SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AllResourcesAvailable()
IL_0047:  blt.un   IL_0069

IL_0049:  ldarg.0
IL_004a:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_004f:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_0054:  ldarg.0
IL_0055:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_005a:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_005f:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_0064:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_MaxInQueue(uint32)
.try
{
IL_0069:
ldc.i4.s 6
newarr		[mscorlib]System.Object
stloc  		locals
ldloc		locals
ldc.i4.s 0
ldloc.s 0
box			[mscorlib]System.Boolean
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
stelem.ref
ldloc		locals
ldc.i4.s 4
ldloc.s 4
stelem.ref
ldloc		locals
ldc.i4.s 5
ldloc.s 5
box			[mscorlib]System.Int32
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
ldarg.0
IL_006a:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_006f:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::resource
IL_0074:  ldftn      instance bool [SimNet]SimNet.ResourceObj::Give(object,
int32,
float64)
IL_007a:  newobj     instance void [SimNet]SimNet.GiveMethod::.ctor(object,
native int)
IL_007f:  ldarg.0
IL_0080:  ldc.i4.1
IL_0081:  ldloca.s   interrupt
IL_0083:  ldc.r8     0.0
IL_008c:  call       void [SimNet]SimNet.Simulation::WaitFor(class [SimNet]SimNet.GiveMethod,
object,
int32,
bool&,
float64)
nop
ret
IL_0091:  blt.un    IL_0096

}  // end .try
catch [mscorlib]System.Object
{
IL_0093:  pop
IL_0094:  blt.un    IL_0096

}  // end handler
SIM_WAIT_0:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc     locals
ldc.i4.s 0
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 0
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
stloc.s 3
ldloc     locals
ldc.i4.s 4
ldelem.ref
stloc.s 4
ldloc     locals
ldc.i4.s 5
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 5
IL_0096:  ldc.i4.0
IL_0097:  stloc.1
IL_0098:  br         IL_01aa

.try
{
IL_009d:
ldc.i4.s 6
newarr		[mscorlib]System.Object
stloc  		locals
ldloc		locals
ldc.i4.s 0
ldloc.s 0
box			[mscorlib]System.Boolean
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
stelem.ref
ldloc		locals
ldc.i4.s 4
ldloc.s 4
stelem.ref
ldloc		locals
ldc.i4.s 5
ldloc.s 5
box			[mscorlib]System.Int32
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
ldarg.0
IL_009e:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_00a3:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_00a8:  ldloc.1
IL_00a9:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_00ae:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_00b3:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::get_obj()
IL_00b8:  ldftn      instance bool [SimNet]SimNet.ResourceObj::Give(object,
int32,
float64)
IL_00be:  newobj     instance void [SimNet]SimNet.GiveMethod::.ctor(object,
native int)
IL_00c3:  ldarg.0
IL_00c4:  ldarg.0
IL_00c5:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_00ca:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_00cf:  ldloc.1
IL_00d0:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_00d5:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_00da:  ldloca.s   interrupt
IL_00dc:  ldc.r8     0.0
IL_00e5:  call       void [SimNet]SimNet.Simulation::WaitFor(class [SimNet]SimNet.GiveMethod,
object,
int32,
bool&,
float64)
nop
ret
IL_00ea:  blt.un    IL_00ef

}  // end .try
catch [mscorlib]System.Object
{
IL_00ec:  pop
IL_00ed:  blt.un    IL_00ef

}  // end handler
SIM_WAIT_1:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc     locals
ldc.i4.s 0
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 0
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
stloc.s 3
ldloc     locals
ldc.i4.s 4
ldelem.ref
stloc.s 4
ldloc     locals
ldc.i4.s 5
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 5
IL_00ef:  ldarg.0
IL_00f0:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_00f5:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_00fa:  dup
IL_00fb:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::get_AssignedResources()
IL_0100:  ldarg.0
IL_0101:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0106:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_010b:  ldloc.1
IL_010c:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_0111:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_0116:  add
IL_0117:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::set_AssignedResources(uint32)
IL_011c:  ldarg.0
IL_011d:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0122:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_0127:  ldarg.0
IL_0128:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_012d:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDeltaSum
IL_0132:  sub
IL_0133:  stfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDelta
IL_0138:  ldarg.0
IL_0139:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_013e:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_0143:  ldarg.0
IL_0144:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0149:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_014e:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_0153:  conv.r.un
IL_0154:  conv.r8
IL_0155:  ldarg.0
IL_0156:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_015b:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDelta
IL_0160:  mul
IL_0161:  ldarg.0
IL_0162:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0167:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_016c:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_AverageInQueue()
IL_0171:  ldarg.0
IL_0172:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0177:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDeltaSum
IL_017c:  mul
IL_017d:  add
IL_017e:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_0183:  div
IL_0184:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_AverageInQueue(float64)
IL_0189:  ldarg.0
IL_018a:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_018f:  dup
IL_0190:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDeltaSum
IL_0195:  ldarg.0
IL_0196:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_019b:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDelta
IL_01a0:  add
IL_01a1:  stfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDeltaSum
IL_01a6:  ldloc.1
IL_01a7:  ldc.i4.1
IL_01a8:  add
IL_01a9:  stloc.1
IL_01aa:  ldloc.1
IL_01ab:  ldarg.0
IL_01ac:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_01b1:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_01b6:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Count()
IL_01bb:  blt        IL_009d

IL_01c0:  ldarg.0
IL_01c1:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_01c6:  callvirt   instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_OutConnectors()
IL_01cb:  ldstr      "Out"
IL_01d0:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>::get_Item(!0)
IL_01d5:  stloc.2
IL_01d6:  ldloc.2
IL_01d7:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML::get_Outgoing()
IL_01dc:  ldc.i4.0
IL_01dd:  call       !!0 [System.Core]System.Linq.Enumerable::ElementAt<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
int32)
IL_01e2:  stloc.3
IL_01e3:  ldarg.0
IL_01e4:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_01e9:  ldloc.3
IL_01ea:  callvirt   instance class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::GetProvidedEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML)
IL_01ef:  stloc.s    entityML
IL_01f1:  ldc.i4.0
IL_01f2:  stloc.s    V_5
IL_01f4:  br         IL_028d

IL_01f9:  ldarg.0
IL_01fa:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_01ff:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_0204:  ldloc.s    V_5
IL_0206:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_020b:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_0210:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::get_obj()
IL_0215:  ldarg.0
IL_0216:  ldarg.0
IL_0217:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_021c:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_0221:  ldloc.s    V_5
IL_0223:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_0228:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_022d:  callvirt   instance void [SimNet]SimNet.ResourceObj::TakeBack(object,
int32)
.try
{
IL_0232:
ldc.i4.s 6
newarr		[mscorlib]System.Object
stloc  		locals
ldloc		locals
ldc.i4.s 0
ldloc.s 0
box			[mscorlib]System.Boolean
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
stelem.ref
ldloc		locals
ldc.i4.s 4
ldloc.s 4
stelem.ref
ldloc		locals
ldc.i4.s 5
ldloc.s 5
box			[mscorlib]System.Int32
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
ldarg.0
IL_0233:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0238:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_023d:  ldloc.s    V_5
IL_023f:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_0244:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_0249:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::get_obj()
IL_024e:  ldftn      instance bool [SimNet]SimNet.ResourceObj::Give(object,
int32,
float64)
IL_0254:  newobj     instance void [SimNet]SimNet.GiveMethod::.ctor(object,
native int)
IL_0259:  ldloc.s    entityML
IL_025b:  ldarg.0
IL_025c:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0261:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_0266:  ldloc.s    V_5
IL_0268:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_026d:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_0272:  ldloca.s   interrupt
IL_0274:  ldc.r8     0.0
IL_027d:  call       void [SimNet]SimNet.Simulation::WaitFor(class [SimNet]SimNet.GiveMethod,
object,
int32,
bool&,
float64)
nop
ret
IL_0282:  blt.un    IL_0287

}  // end .try
catch [mscorlib]System.Object
{
IL_0284:  pop
IL_0285:  blt.un    IL_0287

}  // end handler
SIM_WAIT_2:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc     locals
ldc.i4.s 0
ldelem.ref
unbox		[mscorlib]System.Boolean
ldind.i4
stloc.s 0
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
stloc.s 3
ldloc     locals
ldc.i4.s 4
ldelem.ref
stloc.s 4
ldloc     locals
ldc.i4.s 5
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 5
IL_0287:  ldloc.s    V_5
IL_0289:  ldc.i4.1
IL_028a:  add
IL_028b:  stloc.s    V_5
IL_028d:  ldloc.s    V_5
IL_028f:  ldarg.0
IL_0290:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_0295:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
IL_029a:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Count()
IL_029f:  blt        IL_01f9

IL_02a4:  ldarg.0
IL_02a5:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_02aa:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_02af:  dup
IL_02b0:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::get_ProcessedEntities()
IL_02b5:  ldc.i4.1
IL_02b6:  add
IL_02b7:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::set_ProcessedEntities(uint32)
IL_02bc:  ldarg.0
IL_02bd:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_02c2:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_02c7:  dup
IL_02c8:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_02cd:  ldc.i4.1
IL_02ce:  sub
IL_02cf:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_InQueue(uint32)
IL_02d4:  ldarg.0
IL_02d5:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_02da:  ldloc.3
IL_02db:  ldloc.2
IL_02dc:  ldloc.s    entityML
IL_02de:  callvirt   instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::SendEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,
class SimNetUI.ModelLogic.Entity.EntityML)
IL_02e3:  ldarg.0
IL_02e4:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::parent
IL_02e9:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::resource
IL_02ee:  ldarg.0
IL_02ef:  ldc.i4.1
IL_02f0:  callvirt   instance void [SimNet]SimNet.ResourceObj::TakeBack(object,
int32)
IL_02f5: call       void [SimNet]SimNet.Scheduler::RemoveSchedObj()
  ret
} // end of method NestedClassSimulationLogic::AssignResource

} // end of class NestedClassSimulationLogic

.field private class [SimNet]SimNet.ResourceObj resource
.field private class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML _Statistic
.field private class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> _EntityResourceDependencies
.field private float64 AverageInQueue_tDeltaSum
.field private float64 AverageInQueue_tDelta
.method public hidebysig newslot specialname virtual final
instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML
get_Statistic() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::_Statistic
IL_0006:  ret
} // end of method ActivityAssignResourceML::get_Statistic

.method public hidebysig newslot specialname virtual final
instance void  set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::_Statistic
IL_0007:  ldarg.0
IL_0008:  ldstr      "Statistic"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityAssignResourceML::set_Statistic

.method public hidebysig specialname instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>
get_EntityResourceDependencies() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::_EntityResourceDependencies
IL_0006:  ret
} // end of method ActivityAssignResourceML::get_EntityResourceDependencies

.method public hidebysig specialname instance void
set_EntityResourceDependencies(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::_EntityResourceDependencies
IL_0007:  ldarg.0
IL_0008:  ldstr      "EntityResourceDependencies"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityAssignResourceML::set_EntityResourceDependencies

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       30 (0x1e)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityQueueBaseML::.ctor()
IL_0006:  ldarg.0
IL_0007:  newobj     instance void [SimNet]SimNet.ResourceObj::.ctor()
IL_000c:  stfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::resource
IL_0011:  ldarg.0
IL_0012:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::resource
IL_0017:  ldc.i4.1
IL_0018:  callvirt   instance void [SimNet]SimNet.ResourceObj::CreateResource(int32)
IL_001d:  ret
} // end of method ActivityAssignResourceML::.ctor

.method family hidebysig instance bool
AllResourcesAvailable() cil managed
{
// Code size       73 (0x49)
.maxstack 3
.locals init ([0] class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML dependency,
[1] bool CS$1$0000,
[2] class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> CS$5$0001)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::_EntityResourceDependencies
IL_0006:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::GetEnumerator()
IL_000b:  stloc.2
.try
{
IL_000c:  blt.un       IL_0031

IL_000e:  ldloc.2
IL_000f:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Current()
IL_0014:  stloc.0
IL_0015:  ldloc.0
IL_0016:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_001b:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::get_obj()
IL_0020:  callvirt   instance int32 [SimNet]SimNet.ResourceObj::get_Resources()
IL_0025:  ldloc.0
IL_0026:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_002b:  blt.un      IL_0031

IL_002d:  ldc.i4.0
IL_002e:  stloc.1
IL_002f:  blt.un    IL_0047

IL_0031:  ldloc.2
IL_0032:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_0037:  blt.un   IL_000e

IL_0039:  blt.un    IL_0045

}  // end .try
finally
{
IL_003b:  ldloc.2
IL_003c:  blt.un  IL_0044

IL_003e:  ldloc.2
IL_003f:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_0044:  endfinally
}  // end handler
IL_0045:  ldc.i4.1
IL_0046:  ret

IL_0047:  ldloc.1
IL_0048:  ret
} // end of method ActivityAssignResourceML::AllResourcesAvailable

.method assembly hidebysig strict virtual
instance void  OnResetActivity() cil managed
{
// Code size       99 (0x63)
.maxstack 3
IL_0000:  ldarg.0
IL_0001:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_0006:  ldc.i4.0
IL_0007:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::set_AssignedResources(uint32)
IL_000c:  ldarg.0
IL_000d:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_0012:  ldc.i4.0
IL_0013:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::set_ProcessedEntities(uint32)
IL_0018:  ldarg.0
IL_0019:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_001e:  ldc.i4.0
IL_001f:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_InQueue(uint32)
IL_0024:  ldarg.0
IL_0025:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_002a:  ldc.i4.0
IL_002b:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_MaxInQueue(uint32)
IL_0030:  ldarg.0
IL_0031:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_0036:  ldc.r8     0.0
IL_003f:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_AverageInQueue(float64)
IL_0044:  ldarg.0
IL_0045:  ldc.r8     0.0
IL_004e:  stfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDelta
IL_0053:  ldarg.0
IL_0054:  ldc.r8     0.0
IL_005d:  stfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDeltaSum
IL_0062:  ret
} // end of method ActivityAssignResourceML::OnResetActivity

.method assembly hidebysig strict virtual
instance void  RecalculateTimeBasedStatistics(float64 SimulationTime) cil managed
{
// Code size       86 (0x56)
.maxstack 4
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  ldarg.0
IL_0003:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDeltaSum
IL_0008:  sub
IL_0009:  stfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDelta
IL_000e:  ldarg.0
IL_000f:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_0014:  ldarg.0
IL_0015:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_001a:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_001f:  conv.r.un
IL_0020:  conv.r8
IL_0021:  ldarg.0
IL_0022:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDelta
IL_0027:  mul
IL_0028:  ldarg.0
IL_0029:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_Statistic()
IL_002e:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_AverageInQueue()
IL_0033:  ldarg.0
IL_0034:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDeltaSum
IL_0039:  mul
IL_003a:  add
IL_003b:  ldarg.1
IL_003c:  div
IL_003d:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_AverageInQueue(float64)
IL_0042:  ldarg.0
IL_0043:  dup
IL_0044:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDeltaSum
IL_0049:  ldarg.0
IL_004a:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDelta
IL_004f:  add
IL_0050:  stfld      float64 SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::AverageInQueue_tDeltaSum
IL_0055:  ret
} // end of method ActivityAssignResourceML::RecalculateTimeBasedStatistics

.method family hidebysig virtual instance void
OnReceiveEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML) cil managed
{
// Code size       44 (0x2c)
.maxstack 4
.locals init ([0] class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic logic)
IL_0000:  ldarg.0
IL_0001:  newobj     instance void SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::.ctor(class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML)
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  ldftn      instance void SimNetUI.ModelLogic.Activities.ActivityAssignResourceML/NestedClassSimulationLogic::AssignResource(float64,
float64,
object[])
IL_000e:  newobj     instance void [SimNet]SimNet.TellMethod::.ctor(object,
native int)
IL_0013:  ldc.r8     0.0
IL_001c:  ldc.r8     0.0
IL_0025:  ldnull
IL_0026:  call       void [SimNet]SimNet.Simulation::Tell(class [SimNet]SimNet.TellMethod,
float64,
float64,
object[])
IL_002b:  ret
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
.get instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::get_EntityResourceDependencies()
.set instance void SimNetUI.ModelLogic.Activities.ActivityAssignResourceML::set_EntityResourceDependencies(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>)
} // end of property ActivityAssignResourceML::EntityResourceDependencies
} // end of class SimNetUI.ModelLogic.Activities.ActivityAssignResourceML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.StatisticInfoBaseML
{
.field private uint32 _ProcessedEntities
.field private uint32 _ReleasedResources
.method public hidebysig specialname instance uint32
get_ProcessedEntities() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::_ProcessedEntities
IL_0006:  ret
} // end of method ActivityReleaseResourceStatisticInfoML::get_ProcessedEntities

.method public hidebysig specialname instance void
set_ProcessedEntities(uint32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::_ProcessedEntities
IL_0007:  ldarg.0
IL_0008:  ldstr      "ProcessedEntities"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityReleaseResourceStatisticInfoML::set_ProcessedEntities

.method public hidebysig specialname instance uint32
get_ReleasedResources() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::_ReleasedResources
IL_0006:  ret
} // end of method ActivityReleaseResourceStatisticInfoML::get_ReleasedResources

.method public hidebysig specialname instance void
set_ReleasedResources(uint32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::_ReleasedResources
IL_0007:  ldarg.0
IL_0008:  ldstr      "ReleasedResources"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityReleaseResourceStatisticInfoML::set_ReleasedResources

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.StatisticInfoBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityReleaseResourceStatisticInfoML::.ctor

.property instance uint32 ProcessedEntities()
{
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::get_ProcessedEntities()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::set_ProcessedEntities(uint32)
} // end of property ActivityReleaseResourceStatisticInfoML::ProcessedEntities
.property instance uint32 ReleasedResources()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::set_ReleasedResources(uint32)
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::get_ReleasedResources()
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
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::_Start
IL_0006:  ret
} // end of method ScheduleML::get_Start

.method public hidebysig specialname instance void
set_Start(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::_Start
IL_0007:  ldarg.0
IL_0008:  ldstr      "Start"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ScheduleML::set_Start

.method public hidebysig specialname instance float64
get_Stop() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::_End
IL_0006:  ret
} // end of method ScheduleML::get_Stop

.method public hidebysig specialname instance void
set_Stop(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::_End
IL_0007:  ldarg.0
IL_0008:  ldstr      "Stop"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ScheduleML::set_Stop

.method public hidebysig specialname instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML>
get_Content() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::_Content
IL_0006:  ret
} // end of method ScheduleML::get_Content

.method public hidebysig specialname instance void
set_Content(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::_Content
IL_0007:  ldarg.0
IL_0008:  ldstr      "Content"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
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
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Start()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::set_Start(float64)
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
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML::'<Outgoing>k__BackingField'
IL_0006:  ret
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
// Code size       25 (0x19)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML::get_Outgoing()
IL_0006:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>::get_Count()
IL_000b:  conv.i8
IL_000c:  ldarg.0
IL_000d:  call       instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::get_LimitConnections()
IL_0012:  conv.u8
IL_0013:  clt
IL_0015:  ldc.i4.0
IL_0016:  ceq
IL_0018:  ret
} // end of method OutConnectorML::get_IsLimitReached

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       18 (0x12)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::.ctor()
IL_0006:  ldarg.0
IL_0007:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>::.ctor()
IL_000c:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML::set_Outgoing(class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>)
IL_0011:  ret
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
.method public hidebysig newslot specialname virtual final
instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML
get_Statistic() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityExitML::_Statistic
IL_0006:  ret
} // end of method ActivityExitML::get_Statistic

.method public hidebysig newslot specialname virtual final
instance void  set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityExitML::_Statistic
IL_0007:  ldarg.0
IL_0008:  ldstr      "Statistic"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityExitML::set_Statistic

.method assembly hidebysig strict virtual
instance void  RecalculateTimeBasedStatistics(float64 SimulationTime) cil managed
{
// Code size       1 (0x1)
.maxstack 8
IL_0000:  ret
} // end of method ActivityExitML::RecalculateTimeBasedStatistics

.method assembly hidebysig strict virtual
instance void  OnResetActivity() cil managed
{
// Code size       13 (0xd)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityExitML::get_Statistic()
IL_0006:  ldc.i4.0
IL_0007:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML::set_ArrivedEntities(uint32)
IL_000c:  ret
} // end of method ActivityExitML::OnResetActivity

.method family hidebysig virtual instance void
OnReceiveEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML) cil managed
{
// Code size       20 (0x14)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityExitML::get_Statistic()
IL_0006:  dup
IL_0007:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML::get_ArrivedEntities()
IL_000c:  ldc.i4.1
IL_000d:  add
IL_000e:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityExitStatisticInfoML::set_ArrivedEntities(uint32)
IL_0013:  ret
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
// Code size       18 (0x12)
.maxstack 8
IL_0000:  ldarg.1
IL_0001:  callvirt   instance string SimNetUI.ModelLogic.Base.ModelLogicBase::get_Name()
IL_0006:  ldarg.0
IL_0007:  ldfld      string SimNetUI.ModelLogic.SimulationML/'<>c__DisplayClass1'::name
IL_000c:  call       bool [mscorlib]System.String::op_Equality(string,
string)
IL_0011:  ret
} // end of method '<>c__DisplayClass1'::'<ContainsActivity>b__0'

} // end of class '<>c__DisplayClass1'

.field private class [mscorlib]System.Func`1<bool> SimulationCancelCheck
.field private class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> _Activities
.field private bool SimulationHasStoped
.method public hidebysig specialname instance void
add_SimulationCancelCheck(class [mscorlib]System.Func`1<bool> 'value') cil managed
{
// Code size       41 (0x29)
.maxstack 3
.locals init (class [mscorlib]System.Func`1<bool> V_0,
class [mscorlib]System.Func`1<bool> V_1,
class [mscorlib]System.Func`1<bool> V_2)
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
IL_0026:  blt.un   IL_0007

IL_0028:  ret
} // end of method SimulationML::add_SimulationCancelCheck

.method public hidebysig specialname instance void
remove_SimulationCancelCheck(class [mscorlib]System.Func`1<bool> 'value') cil managed
{
// Code size       41 (0x29)
.maxstack 3
.locals init (class [mscorlib]System.Func`1<bool> V_0,
class [mscorlib]System.Func`1<bool> V_1,
class [mscorlib]System.Func`1<bool> V_2)
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
IL_0026:  blt.un   IL_0007

IL_0028:  ret
} // end of method SimulationML::remove_SimulationCancelCheck

.method assembly hidebysig instance bool
CheckIfSimulationIsCanceld() cil managed
{
// Code size       12 (0xc)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Func`1<bool> SimNetUI.ModelLogic.SimulationML::SimulationCancelCheck
IL_0006:  callvirt   instance !0 class [mscorlib]System.Func`1<bool>::Invoke()
IL_000b:  ret
} // end of method SimulationML::CheckIfSimulationIsCanceld

.method public hidebysig specialname instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>
get_Activities() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> SimNetUI.ModelLogic.SimulationML::_Activities
IL_0006:  ret
} // end of method SimulationML::get_Activities

.method public hidebysig specialname instance void
set_Activities(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> 'value') cil managed
{
// Code size       67 (0x43)
.maxstack 3
.locals init ([0] class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML activity,
[1] class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> CS$5$0000)
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> SimNetUI.ModelLogic.SimulationML::_Activities
IL_0007:  ldarg.0
IL_0008:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> SimNetUI.ModelLogic.SimulationML::_Activities
IL_000d:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>::GetEnumerator()
IL_0012:  stloc.1
.try
{
IL_0013:  blt.un       IL_0023

IL_0015:  ldloc.1
IL_0016:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>::get_Current()
IL_001b:  stloc.0
IL_001c:  ldloc.0
IL_001d:  ldarg.0
IL_001e:  callvirt   instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::set_SimulationParent(class SimNetUI.ModelLogic.SimulationML)
IL_0023:  ldloc.1
IL_0024:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_0029:  blt.un   IL_0015

IL_002b:  blt.un    IL_0037

}  // end .try
finally
{
IL_002d:  ldloc.1
IL_002e:  blt.un  IL_0036

IL_0030:  ldloc.1
IL_0031:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_0036:  endfinally
}  // end handler
IL_0037:  ldarg.0
IL_0038:  ldstr      "Activities"
IL_003d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0042:  ret
} // end of method SimulationML::set_Activities

.method public hidebysig specialname instance float64
get_SimulationTime() cil managed
{
// Code size       6 (0x6)
.maxstack 8
IL_0000:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_0005:  ret
} // end of method SimulationML::get_SimulationTime

.method public hidebysig instance void
NotifySimulationTimeChanged() cil managed
{
// Code size       66 (0x42)
.maxstack 3
.locals init ([0] float64 simTime,
[1] class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML activity,
[2] class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> CS$5$0000)
IL_0000:  ldarg.0
IL_0001:  ldstr      "SimulationTime"
IL_0006:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_000b:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_0010:  stloc.0
IL_0011:  ldarg.0
IL_0012:  call       instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> SimNetUI.ModelLogic.SimulationML::get_Activities()
IL_0017:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>::GetEnumerator()
IL_001c:  stloc.2
.try
{
IL_001d:  blt.un       IL_002d

IL_001f:  ldloc.2
IL_0020:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>::get_Current()
IL_0025:  stloc.1
IL_0026:  ldloc.1
IL_0027:  ldloc.0
IL_0028:  callvirt   instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::RecalculateTimeBasedStatistics(float64)
IL_002d:  ldloc.2
IL_002e:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_0033:  blt.un   IL_001f

IL_0035:  blt.un    IL_0041

}  // end .try
finally
{
IL_0037:  ldloc.2
IL_0038:  blt.un  IL_0040

IL_003a:  ldloc.2
IL_003b:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_0040:  endfinally
}  // end handler
IL_0041:  ret
} // end of method SimulationML::NotifySimulationTimeChanged

.method assembly hidebysig instance class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML
ContainsActivity(string name) cil managed
{
// Code size       42 (0x2a)
.maxstack 4
.locals init ([0] class SimNetUI.ModelLogic.SimulationML/'<>c__DisplayClass1' 'CS$<>8__locals2')
IL_0000:  newobj     instance void SimNetUI.ModelLogic.SimulationML/'<>c__DisplayClass1'::.ctor()
IL_0005:  stloc.0
IL_0006:  ldloc.0
IL_0007:  ldarg.1
IL_0008:  stfld      string SimNetUI.ModelLogic.SimulationML/'<>c__DisplayClass1'::name
IL_000d:  ldarg.0
IL_000e:  call       instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> SimNetUI.ModelLogic.SimulationML::get_Activities()
IL_0013:  ldloc.0
IL_0014:  ldftn      instance bool SimNetUI.ModelLogic.SimulationML/'<>c__DisplayClass1'::'<ContainsActivity>b__0'(class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML)
IL_001a:  newobj     instance void class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML,bool>::.ctor(object,
native int)
IL_001f:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::Where<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
class [mscorlib]System.Func`2<!!0,bool>)
IL_0024:  call       !!0 [System.Core]System.Linq.Enumerable::First<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
IL_0029:  ret
} // end of method SimulationML::ContainsActivity

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.ModelLogicBase::.ctor()
IL_0006:  ret
} // end of method SimulationML::.ctor

.method public hidebysig instance void
StartSimulation() cil managed
{
// Code size       112 (0x70)
.maxstack 4
.locals init ([0] class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML activity,
[1] class SimNetUI.ModelLogic.Activities.ActivityGeneratorML generator,
[2] class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> CS$5$0000)
IL_0000:  ldarg.0
IL_0001:  call       instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML> SimNetUI.ModelLogic.SimulationML::get_Activities()
IL_0006:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>::GetEnumerator()
IL_000b:  stloc.2
.try
{
IL_000c:  blt.un       IL_0049

IL_000e:  ldloc.2
IL_000f:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.Base.ActivityBaseML>::get_Current()
IL_0014:  stloc.0
IL_0015:  ldloc.0
IL_0016:  isinst     SimNetUI.ModelLogic.Activities.ActivityGeneratorML
IL_001b:  stloc.1
IL_001c:  ldloc.1
IL_001d:  blt.un  IL_0043

IL_001f:  ldloc.1
IL_0020:  ldftn      instance void SimNetUI.ModelLogic.Activities.ActivityGeneratorML::generate(float64,
float64,
object[])
IL_0026:  newobj     instance void [SimNet]SimNet.TellMethod::.ctor(object,
native int)
IL_002b:  ldc.r8     0.0
IL_0034:  ldc.r8     0.0
IL_003d:  ldnull
IL_003e:  call       void [SimNet]SimNet.Simulation::Tell(class [SimNet]SimNet.TellMethod,
float64,
float64,
object[])
IL_0043:  ldloc.0
IL_0044:  callvirt   instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::OnResetActivity()
IL_0049:  ldloc.2
IL_004a:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_004f:  blt.un   IL_000e

IL_0051:  blt.un    IL_005d

}  // end .try
finally
{
IL_0053:  ldloc.2
IL_0054:  blt.un  IL_005c

IL_0056:  ldloc.2
IL_0057:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_005c:  endfinally
}  // end handler
IL_005d:  ldarg.0
IL_005e:  ldc.i4.0
IL_005f:  stfld      bool SimNetUI.ModelLogic.SimulationML::SimulationHasStoped
IL_0064:  call       void [SimNet]SimNet.Simulation::StartSimulation()
IL_0069:  ldarg.0
IL_006a:  call       instance void SimNetUI.ModelLogic.SimulationML::StopSimulation()
IL_006f:  ret
} // end of method SimulationML::StartSimulation

.method public hidebysig instance void
StopSimulation() cil managed
{
// Code size       21 (0x15)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      bool SimNetUI.ModelLogic.SimulationML::SimulationHasStoped
IL_0006:  blt.un   IL_0014

IL_0008:  call       void [SimNet]SimNet.Simulation::StopSimulation()
IL_000d:  ldarg.0
IL_000e:  ldc.i4.1
IL_000f:  stfld      bool SimNetUI.ModelLogic.SimulationML::SimulationHasStoped
IL_0014:  ret
} // end of method SimulationML::StopSimulation

.event class [mscorlib]System.Func`1<bool> SimulationCancelCheck
{
.addon instance void SimNetUI.ModelLogic.SimulationML::add_SimulationCancelCheck(class [mscorlib]System.Func`1<bool>)
.removeon instance void SimNetUI.ModelLogic.SimulationML::remove_SimulationCancelCheck(class [mscorlib]System.Func`1<bool>)
} // end of event SimulationML::SimulationCancelCheck
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
} // end of class SimNetUI.ModelLogic.SimulationML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML
extends SimNetUI.ModelLogic.Base.ModelLogicBase
{
.field private int32 _count
.field private class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML _resource
.method public hidebysig specialname instance int32
get_Count() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::_count
IL_0006:  ret
} // end of method ResourceDependencyML::get_Count

.method public hidebysig specialname instance void
set_Count(int32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::_count
IL_0007:  ldarg.0
IL_0008:  ldstr      "Count"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ResourceDependencyML::set_Count

.method public hidebysig specialname instance class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML
get_Resource() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::_resource
IL_0006:  ret
} // end of method ResourceDependencyML::get_Resource

.method public hidebysig specialname instance void
set_Resource(class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::_resource
IL_0007:  ldarg.0
IL_0008:  ldstr      "Resource"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
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
.property instance class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML
Resource()
{
.get instance class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::set_Resource(class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML)
} // end of property ResourceDependencyML::Resource
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ExponentialML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML
{
.field private float64 _Alpha
.method public hidebysig specialname instance float64
get_Alpha() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ExponentialML::_Alpha
IL_0006:  ret
} // end of method ExponentialML::get_Alpha

.method public hidebysig specialname instance void
set_Alpha(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ExponentialML::_Alpha
IL_0007:  ldarg.0
IL_0008:  ldstr      "Alpha"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ExponentialML::set_Alpha

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       18 (0x12)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0006:  ldarg.0
IL_0007:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ExponentialML::get_Alpha()
IL_000c:  callvirt   instance float64 [SimNet]SimNet.RandomObj::Exponential(float64)
IL_0011:  ret
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

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML
extends SimNetUI.ModelLogic.Base.ModelLogicBase
{
.field private int32 _Capacity
.field private class [SimNet]SimNet.ResourceObj '<obj>k__BackingField'
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
.method public hidebysig specialname instance int32
get_Capacity() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::_Capacity
IL_0006:  ret
} // end of method ResourceML::get_Capacity

.method public hidebysig specialname instance void
set_Capacity(int32 'value') cil managed
{
// Code size       70 (0x46)
.maxstack 3
IL_0000:  ldarg.0
IL_0001:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::_Capacity
IL_0006:  ldarg.1
IL_0007:  blt.un      IL_0017

IL_0009:  ldarg.0
IL_000a:  call       instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::get_obj()
IL_000f:  ldarg.1
IL_0010:  callvirt   instance void [SimNet]SimNet.ResourceObj::CreateResource(int32)
IL_0015:  blt.un       IL_0033

IL_0017:  ldarg.0
IL_0018:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::_Capacity
IL_001d:  ldarg.1
IL_001e:  blt.un      IL_0033

IL_0020:  ldarg.0
IL_0021:  call       instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::get_obj()
IL_0026:  ldarg.1
IL_0027:  ldarg.0
IL_0028:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::_Capacity
IL_002d:  sub
IL_002e:  callvirt   instance void [SimNet]SimNet.ResourceObj::IncrementResources(int32)
IL_0033:  ldarg.0
IL_0034:  ldarg.1
IL_0035:  stfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::_Capacity
IL_003a:  ldarg.0
IL_003b:  ldstr      "Capacity"
IL_0040:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0045:  ret
} // end of method ResourceML::set_Capacity

.method assembly hidebysig specialname
instance class [SimNet]SimNet.ResourceObj
get_obj() cil managed
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::'<obj>k__BackingField'
IL_0006:  ret
} // end of method ResourceML::get_obj

.method assembly hidebysig specialname
instance void  set_obj(class [SimNet]SimNet.ResourceObj 'value') cil managed
{
.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
// Code size       8 (0x8)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::'<obj>k__BackingField'
IL_0007:  ret
} // end of method ResourceML::set_obj

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       18 (0x12)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Base.ModelLogicBase::.ctor()
IL_0006:  ldarg.0
IL_0007:  newobj     instance void [SimNet]SimNet.ResourceObj::.ctor()
IL_000c:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::set_obj(class [SimNet]SimNet.ResourceObj)
IL_0011:  ret
} // end of method ResourceML::.ctor

.property instance int32 Capacity()
{
.get instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::get_Capacity()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::set_Capacity(int32)
} // end of property ResourceML::Capacity
.property instance class [SimNet]SimNet.ResourceObj
obj()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::set_obj(class [SimNet]SimNet.ResourceObj)
.get instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::get_obj()
} // end of property ResourceML::obj
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML
{
.field private float64 _Alpha
.field private float64 _Beta
.method public hidebysig specialname instance float64
get_Alpha() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::_Alpha
IL_0006:  ret
} // end of method LogNormalML::get_Alpha

.method public hidebysig specialname instance void
set_Alpha(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::_Alpha
IL_0007:  ldarg.0
IL_0008:  ldstr      "Alpha"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method LogNormalML::set_Alpha

.method public hidebysig specialname instance float64
get_Beta() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::_Beta
IL_0006:  ret
} // end of method LogNormalML::get_Beta

.method public hidebysig specialname instance void
set_Beta(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::_Beta
IL_0007:  ldarg.0
IL_0008:  ldstr      "Beta"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method LogNormalML::set_Beta

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       24 (0x18)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0006:  ldarg.0
IL_0007:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::get_Alpha()
IL_000c:  ldarg.0
IL_000d:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::get_Beta()
IL_0012:  callvirt   instance float64 [SimNet]SimNet.RandomObj::LgNormal(float64,
float64)
IL_0017:  ret
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
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::set_Alpha(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::get_Alpha()
} // end of property LogNormalML::Alpha
.property instance float64 Beta()
{
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::get_Beta()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.LogNormalML::set_Beta(float64)
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
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::_Distribution
IL_0006:  ret
} // end of method ActivityDelayBaseML::get_Distribution

.method public hidebysig specialname instance void
set_Distribution(class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::_Distribution
IL_0007:  ldarg.0
IL_0008:  ldstr      "Distribution"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityDelayBaseML::set_Distribution

.method public hidebysig specialname instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>
get_ResourceDependencies() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::_ResourceDependencies
IL_0006:  ret
} // end of method ActivityDelayBaseML::get_ResourceDependencies

.method public hidebysig specialname instance void
set_ResourceDependencies(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::_ResourceDependencies
IL_0007:  ldarg.0
IL_0008:  ldstr      "ResourceDependencies"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityDelayBaseML::set_ResourceDependencies

.method family hidebysig instance bool
AllResourcesAvailable() cil managed
{
// Code size       73 (0x49)
.maxstack 3
.locals init ([0] class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML dependency,
[1] bool CS$1$0000,
[2] class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> CS$5$0001)
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::_ResourceDependencies
IL_0006:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::GetEnumerator()
IL_000b:  stloc.2
.try
{
IL_000c:  blt.un       IL_0031

IL_000e:  ldloc.2
IL_000f:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Current()
IL_0014:  stloc.0
IL_0015:  ldloc.0
IL_0016:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_001b:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::get_obj()
IL_0020:  callvirt   instance int32 [SimNet]SimNet.ResourceObj::get_Resources()
IL_0025:  ldloc.0
IL_0026:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_002b:  blt.un      IL_0031

IL_002d:  ldc.i4.0
IL_002e:  stloc.1
IL_002f:  blt.un    IL_0047

IL_0031:  ldloc.2
IL_0032:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_0037:  blt.un   IL_000e

IL_0039:  blt.un    IL_0045

}  // end .try
finally
{
IL_003b:  ldloc.2
IL_003c:  blt.un  IL_0044

IL_003e:  ldloc.2
IL_003f:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_0044:  endfinally
}  // end handler
IL_0045:  ldc.i4.1
IL_0046:  ret

IL_0047:  ldloc.1
IL_0048:  ret
} // end of method ActivityDelayBaseML::AllResourcesAvailable

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
.get instance class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_Distribution()
.set instance void SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::set_Distribution(class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML)
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
// Code size       14 (0xe)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
IL_0006:  ldarg.0
IL_0007:  ldarg.1
IL_0008:  stfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_000d:  ret
} // end of method NestedClassSimulationLogic::.ctor

.method public hidebysig instance void
wait(float64 t,
float64 priority,
object[] p) cil managed
{
.custom instance void [SimNet]SimNet.TELLAttribute::.ctor() = ( 01 00 00 00 )
.param [3]
.custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 )
// Code size       865 (0x361)
.maxstack 5
.locals init ([0] bool interrupt,
[1] int32 i,
[2] float64 'value',
[3] class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML,
[4] class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
[5] class SimNetUI.ModelLogic.Entity.EntityML entityML,
[6] int32 V_6,
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
brfalse    IL_0360
br         SIM_WAIT_2
IL_0000:  ldc.i4.0
IL_0001:  stloc.0
IL_0002:  ldarg.0
IL_0003:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0008:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_000d:  dup
IL_000e:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_0013:  ldc.i4.1
IL_0014:  add
IL_0015:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_InQueue(uint32)
IL_001a:  ldarg.0
IL_001b:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0020:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0025:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_002a:  ldarg.0
IL_002b:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0030:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0035:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_MaxInQueue()
IL_003a:  blt.un   IL_007b

IL_003c:  ldarg.0
IL_003d:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0042:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityWaitML::resource
IL_0047:  callvirt   instance int32 [SimNet]SimNet.ResourceObj::get_Resources()
IL_004c:  blt.un  IL_005b

IL_004e:  ldarg.0
IL_004f:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0054:  callvirt   instance bool SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::AllResourcesAvailable()
IL_0059:  blt.un   IL_007b

IL_005b:  ldarg.0
IL_005c:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0061:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0066:  ldarg.0
IL_0067:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_006c:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0071:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_0076:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_MaxInQueue(uint32)
.try
{
IL_007b:
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
box			[mscorlib]System.Int32
stelem.ref
ldloc		locals
ldc.i4.s 2
ldloc.s 2
box			[mscorlib]System.Double
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
stelem.ref
ldloc		locals
ldc.i4.s 6
ldloc.s 6
box			[mscorlib]System.Int32
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
ldarg.0
IL_007c:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0081:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityWaitML::resource
IL_0086:  ldftn      instance bool [SimNet]SimNet.ResourceObj::Give(object,
int32,
float64)
IL_008c:  newobj     instance void [SimNet]SimNet.GiveMethod::.ctor(object,
native int)
IL_0091:  ldarg.0
IL_0092:  ldc.i4.1
IL_0093:  ldloca.s   interrupt
IL_0095:  ldc.r8     0.0
IL_009e:  call       void [SimNet]SimNet.Simulation::WaitFor(class [SimNet]SimNet.GiveMethod,
object,
int32,
bool&,
float64)
nop
ret
IL_00a3:  blt.un    IL_00a8

}  // end .try
catch [mscorlib]System.Object
{
IL_00a5:  pop
IL_00a6:  blt.un    IL_00a8

}  // end handler
SIM_WAIT_0:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc.s    obj
callvirt   instance bool [SimNet]SimNet.SimObj::get_Interrupt()
stloc.s    interrupt
ldloc     locals
ldc.i4.s 1
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 1
ldloc     locals
ldc.i4.s 2
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
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
stloc.s 5
ldloc     locals
ldc.i4.s 6
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 6
IL_00a8:  ldc.i4.0
IL_00a9:  stloc.1
IL_00aa:  blt.un       IL_0102

.try
{
IL_00ac:
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
box			[mscorlib]System.Int32
stelem.ref
ldloc		locals
ldc.i4.s 2
ldloc.s 2
box			[mscorlib]System.Double
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
stelem.ref
ldloc		locals
ldc.i4.s 6
ldloc.s 6
box			[mscorlib]System.Int32
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
ldarg.0
IL_00ad:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_00b2:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_ResourceDependencies()
IL_00b7:  ldloc.1
IL_00b8:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_00bd:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_00c2:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::get_obj()
IL_00c7:  ldftn      instance bool [SimNet]SimNet.ResourceObj::Give(object,
int32,
float64)
IL_00cd:  newobj     instance void [SimNet]SimNet.GiveMethod::.ctor(object,
native int)
IL_00d2:  ldarg.0
IL_00d3:  ldarg.0
IL_00d4:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_00d9:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_ResourceDependencies()
IL_00de:  ldloc.1
IL_00df:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_00e4:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_00e9:  ldloca.s   interrupt
IL_00eb:  ldc.r8     0.0
IL_00f4:  call       void [SimNet]SimNet.Simulation::WaitFor(class [SimNet]SimNet.GiveMethod,
object,
int32,
bool&,
float64)
nop
ret
IL_00f9:  blt.un    IL_00fe

}  // end .try
catch [mscorlib]System.Object
{
IL_00fb:  pop
IL_00fc:  blt.un    IL_00fe

}  // end handler
SIM_WAIT_1:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc.s    obj
callvirt   instance bool [SimNet]SimNet.SimObj::get_Interrupt()
stloc.s    interrupt
ldloc     locals
ldc.i4.s 1
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 1
ldloc     locals
ldc.i4.s 2
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
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
stloc.s 5
ldloc     locals
ldc.i4.s 6
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 6
IL_00fe:  ldloc.1
IL_00ff:  ldc.i4.1
IL_0100:  add
IL_0101:  stloc.1
IL_0102:  ldloc.1
IL_0103:  ldarg.0
IL_0104:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0109:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_ResourceDependencies()
IL_010e:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Count()
IL_0113:  blt.un      IL_00ac

IL_0115:  ldarg.0
IL_0116:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_011b:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0120:  dup
IL_0121:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_0126:  ldc.i4.1
IL_0127:  sub
IL_0128:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_InQueue(uint32)
IL_012d:  ldarg.0
IL_012e:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0133:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0138:  dup
IL_0139:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_InWork()
IL_013e:  ldc.i4.1
IL_013f:  add
IL_0140:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_InWork(uint32)
IL_0145:  ldarg.0
IL_0146:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_014b:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_0150:  stfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::lastWorkStarted
IL_0155:  ldarg.0
IL_0156:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_015b:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0160:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_InWork()
IL_0165:  ldarg.0
IL_0166:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_016b:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0170:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_MaxInWork()
IL_0175:  blt.un   IL_0197

IL_0177:  ldarg.0
IL_0178:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_017d:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0182:  ldarg.0
IL_0183:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0188:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_018d:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_InWork()
IL_0192:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_MaxInWork(uint32)
IL_0197:  ldarg.0
IL_0198:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_019d:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_Distribution()
IL_01a2:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::GetNextValue()
IL_01a7:  stloc.2
IL_01a8:  ldloca.s   'value'
IL_01aa:  call       instance string [mscorlib]System.Double::ToString()
IL_01af:  call       void [mscorlib]System.Console::WriteLine(string)
IL_01b4:  ldarg.0
IL_01b5:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_01ba:  callvirt   instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_OutConnectors()
IL_01bf:  ldstr      "Out"
IL_01c4:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>::get_Item(!0)
IL_01c9:  stloc.3
IL_01ca:  ldloc.3
IL_01cb:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML::get_Outgoing()
IL_01d0:  ldc.i4.0
IL_01d1:  call       !!0 [System.Core]System.Linq.Enumerable::ElementAt<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
int32)
IL_01d6:  stloc.s    targetConnectorML
IL_01d8:  ldarg.0
IL_01d9:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_01de:  ldloc.s    targetConnectorML
IL_01e0:  callvirt   instance class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::GetProvidedEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML)
IL_01e5:  stloc.s    entityML
.try
{
IL_01e7:
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
box			[mscorlib]System.Int32
stelem.ref
ldloc		locals
ldc.i4.s 2
ldloc.s 2
box			[mscorlib]System.Double
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
stelem.ref
ldloc		locals
ldc.i4.s 6
ldloc.s 6
box			[mscorlib]System.Int32
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
ldloc.2
IL_01e8:  ldloca.s   interrupt
IL_01ea:  call       void [SimNet]SimNet.Simulation::Wait(float64,
bool&)
nop
ret
IL_01ef:  blt.un    IL_01f4

}  // end .try
catch [mscorlib]System.Object
{
IL_01f1:  pop
IL_01f2:  blt.un    IL_01f4

}  // end handler
SIM_WAIT_2:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc.s    obj
callvirt   instance bool [SimNet]SimNet.SimObj::get_Interrupt()
stloc.s    interrupt
ldloc     locals
ldc.i4.s 1
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 1
ldloc     locals
ldc.i4.s 2
ldelem.ref
unbox		[mscorlib]System.Double
ldind.r8
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
stloc.s 5
ldloc     locals
ldc.i4.s 6
ldelem.ref
unbox		[mscorlib]System.Int32
ldind.i4
stloc.s 6
IL_01f4:  ldarg.0
IL_01f5:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_01fa:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_01ff:  dup
IL_0200:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::get_Processed()
IL_0205:  ldc.i4.1
IL_0206:  add
IL_0207:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_Processed(uint32)
IL_020c:  ldarg.0
IL_020d:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0212:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0217:  dup
IL_0218:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_InWork()
IL_021d:  ldc.i4.1
IL_021e:  sub
IL_021f:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_InWork(uint32)
IL_0224:  ldarg.0
IL_0225:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_022a:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_022f:  dup
IL_0230:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::get_WorkingTime()
IL_0235:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_023a:  ldarg.0
IL_023b:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0240:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::lastWorkStarted
IL_0245:  sub
IL_0246:  add
IL_0247:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_WorkingTime(float64)
IL_024c:  ldarg.0
IL_024d:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0252:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_0257:  stfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::lastWorkStarted
IL_025c:  ldarg.0
IL_025d:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0262:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_0267:  ldarg.0
IL_0268:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_026d:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDeltaSum
IL_0272:  sub
IL_0273:  stfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDelta
IL_0278:  ldarg.0
IL_0279:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_027e:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0283:  ldarg.0
IL_0284:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0289:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_028e:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_0293:  conv.r.un
IL_0294:  conv.r8
IL_0295:  ldarg.0
IL_0296:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_029b:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDelta
IL_02a0:  mul
IL_02a1:  ldarg.0
IL_02a2:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_02a7:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_02ac:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_AverageInQueue()
IL_02b1:  ldarg.0
IL_02b2:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_02b7:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDeltaSum
IL_02bc:  mul
IL_02bd:  add
IL_02be:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_02c3:  div
IL_02c4:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_AverageInQueue(float64)
IL_02c9:  ldarg.0
IL_02ca:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_02cf:  dup
IL_02d0:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDeltaSum
IL_02d5:  ldarg.0
IL_02d6:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_02db:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDelta
IL_02e0:  add
IL_02e1:  stfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDeltaSum
IL_02e6:  ldarg.0
IL_02e7:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_02ec:  ldloc.s    targetConnectorML
IL_02ee:  ldloc.3
IL_02ef:  ldloc.s    entityML
IL_02f1:  callvirt   instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::SendEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,
class SimNetUI.ModelLogic.Entity.EntityML)
IL_02f6:  ldc.i4.0
IL_02f7:  stloc.s    V_6
IL_02f9:  blt.un       IL_033a

IL_02fb:  ldarg.0
IL_02fc:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0301:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_ResourceDependencies()
IL_0306:  ldloc.s    V_6
IL_0308:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_030d:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_0312:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::get_obj()
IL_0317:  ldarg.0
IL_0318:  ldarg.0
IL_0319:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_031e:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_ResourceDependencies()
IL_0323:  ldloc.s    V_6
IL_0325:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Item(int32)
IL_032a:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_032f:  callvirt   instance void [SimNet]SimNet.ResourceObj::TakeBack(object,
int32)
IL_0334:  ldloc.s    V_6
IL_0336:  ldc.i4.1
IL_0337:  add
IL_0338:  stloc.s    V_6
IL_033a:  ldloc.s    V_6
IL_033c:  ldarg.0
IL_033d:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0342:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::get_ResourceDependencies()
IL_0347:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Count()
IL_034c:  blt.un      IL_02fb

IL_034e:  ldarg.0
IL_034f:  ldfld      class SimNetUI.ModelLogic.Activities.ActivityWaitML SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::parent
IL_0354:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityWaitML::resource
IL_0359:  ldarg.0
IL_035a:  ldc.i4.1
IL_035b:  callvirt   instance void [SimNet]SimNet.ResourceObj::TakeBack(object,
int32)
IL_0360: call       void [SimNet]SimNet.Scheduler::RemoveSchedObj()
  ret
} // end of method NestedClassSimulationLogic::wait

} // end of class NestedClassSimulationLogic

.field private class [SimNet]SimNet.ResourceObj resource
.field private class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML _Statistic
.field private uint32 _Capacity
.field private float64 AverageInQueue_tDeltaSum
.field private float64 AverageInQueue_tDelta
.field private float64 lastWorkStarted
.method public hidebysig newslot specialname virtual final
instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML
get_Statistic() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::_Statistic
IL_0006:  ret
} // end of method ActivityWaitML::get_Statistic

.method public hidebysig newslot specialname virtual final
instance void  set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::_Statistic
IL_0007:  ldarg.0
IL_0008:  ldstr      "Statistic"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityWaitML::set_Statistic

.method public hidebysig specialname instance uint32
get_Capacity() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ActivityWaitML::_Capacity
IL_0006:  ret
} // end of method ActivityWaitML::get_Capacity

.method public hidebysig specialname instance void
set_Capacity(uint32 'value') cil managed
{
// Code size       80 (0x50)
.maxstack 3
IL_0000:  ldarg.0
IL_0001:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityWaitML::resource
IL_0006:  blt.un  IL_0026

IL_0008:  ldarg.1
IL_0009:  ldarg.0
IL_000a:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ActivityWaitML::_Capacity
IL_000f:  blt.un   IL_0026

IL_0011:  ldarg.0
IL_0012:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityWaitML::resource
IL_0017:  ldarg.1
IL_0018:  ldarg.0
IL_0019:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ActivityWaitML::_Capacity
IL_001e:  sub
IL_001f:  callvirt   instance void [SimNet]SimNet.ResourceObj::IncrementResources(int32)
IL_0024:  blt.un       IL_003d

IL_0026:  ldarg.0
IL_0027:  newobj     instance void [SimNet]SimNet.ResourceObj::.ctor()
IL_002c:  stfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityWaitML::resource
IL_0031:  ldarg.0
IL_0032:  ldfld      class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ActivityWaitML::resource
IL_0037:  ldarg.1
IL_0038:  callvirt   instance void [SimNet]SimNet.ResourceObj::CreateResource(int32)
IL_003d:  ldarg.0
IL_003e:  ldarg.1
IL_003f:  stfld      uint32 SimNetUI.ModelLogic.Activities.ActivityWaitML::_Capacity
IL_0044:  ldarg.0
IL_0045:  ldstr      "Capacity"
IL_004a:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_004f:  ret
} // end of method ActivityWaitML::set_Capacity

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityDelayBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityWaitML::.ctor

.method assembly hidebysig strict virtual
instance void  OnResetActivity() cil managed
{
// Code size       211 (0xd3)
.maxstack 3
IL_0000:  ldarg.0
IL_0001:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::_Statistic
IL_0006:  ldc.r8     0.0
IL_000f:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_Busy(float64)
IL_0014:  ldarg.0
IL_0015:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::_Statistic
IL_001a:  ldc.i4.0
IL_001b:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_InQueue(uint32)
IL_0020:  ldarg.0
IL_0021:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::_Statistic
IL_0026:  ldc.i4.0
IL_0027:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_InWork(uint32)
IL_002c:  ldarg.0
IL_002d:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::_Statistic
IL_0032:  ldc.i4.0
IL_0033:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_MaxInWork(uint32)
IL_0038:  ldarg.0
IL_0039:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::_Statistic
IL_003e:  ldc.i4.0
IL_003f:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_MaxInQueue(uint32)
IL_0044:  ldarg.0
IL_0045:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::_Statistic
IL_004a:  ldc.r8     0.0
IL_0053:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_OffTime(float64)
IL_0058:  ldarg.0
IL_0059:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::_Statistic
IL_005e:  ldc.i4.0
IL_005f:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_Processed(uint32)
IL_0064:  ldarg.0
IL_0065:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::_Statistic
IL_006a:  ldc.r8     0.0
IL_0073:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_WorkingTime(float64)
IL_0078:  ldarg.0
IL_0079:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::_Statistic
IL_007e:  ldc.r8     0.0
IL_0087:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_OffTime(float64)
IL_008c:  ldarg.0
IL_008d:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::_Statistic
IL_0092:  ldc.r8     0.0
IL_009b:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_AverageInQueue(float64)
IL_00a0:  ldarg.0
IL_00a1:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::_Statistic
IL_00a6:  ldc.r8     0.0
IL_00af:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::set_AverageInWork(float64)
IL_00b4:  ldarg.0
IL_00b5:  ldc.r8     0.0
IL_00be:  stfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDeltaSum
IL_00c3:  ldarg.0
IL_00c4:  ldc.r8     0.0
IL_00cd:  stfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDelta
IL_00d2:  ret
} // end of method ActivityWaitML::OnResetActivity

.method assembly hidebysig strict virtual
instance void  RecalculateTimeBasedStatistics(float64 SimulationTime) cil managed
{
// Code size       182 (0xb6)
.maxstack 4
IL_0000:  ldarg.0
IL_0001:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0006:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML::get_InWork()
IL_000b:  blt.un   IL_0027

IL_000d:  ldarg.0
IL_000e:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0013:  ldarg.1
IL_0014:  ldarg.0
IL_0015:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_001a:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::get_WorkingTime()
IL_001f:  sub
IL_0020:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_OffTime(float64)
IL_0025:  blt.un       IL_0041

IL_0027:  ldarg.0
IL_0028:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_002d:  dup
IL_002e:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::get_WorkingTime()
IL_0033:  ldarg.1
IL_0034:  ldarg.0
IL_0035:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::lastWorkStarted
IL_003a:  sub
IL_003b:  add
IL_003c:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_WorkingTime(float64)
IL_0041:  ldarg.0
IL_0042:  ldarg.1
IL_0043:  stfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::lastWorkStarted
IL_0048:  ldarg.0
IL_0049:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_004e:  ldarg.0
IL_004f:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0054:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::get_WorkingTime()
IL_0059:  ldarg.1
IL_005a:  div
IL_005b:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityDelayBaseStatisticInfoML::set_Busy(float64)
IL_0060:  ldarg.0
IL_0061:  ldarg.1
IL_0062:  ldarg.0
IL_0063:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDeltaSum
IL_0068:  sub
IL_0069:  stfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDelta
IL_006e:  ldarg.0
IL_006f:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_0074:  ldarg.0
IL_0075:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_007a:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_InQueue()
IL_007f:  conv.r.un
IL_0080:  conv.r8
IL_0081:  ldarg.0
IL_0082:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDelta
IL_0087:  mul
IL_0088:  ldarg.0
IL_0089:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
IL_008e:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::get_AverageInQueue()
IL_0093:  ldarg.0
IL_0094:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDeltaSum
IL_0099:  mul
IL_009a:  add
IL_009b:  ldarg.1
IL_009c:  div
IL_009d:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityQueueBaseStatisticInfoML::set_AverageInQueue(float64)
IL_00a2:  ldarg.0
IL_00a3:  dup
IL_00a4:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDeltaSum
IL_00a9:  ldarg.0
IL_00aa:  ldfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDelta
IL_00af:  add
IL_00b0:  stfld      float64 SimNetUI.ModelLogic.Activities.ActivityWaitML::AverageInQueue_tDeltaSum
IL_00b5:  ret
} // end of method ActivityWaitML::RecalculateTimeBasedStatistics

.method family hidebysig virtual instance void
OnReceiveEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML) cil managed
{
// Code size       44 (0x2c)
.maxstack 4
.locals init ([0] class SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic logic)
IL_0000:  ldarg.0
IL_0001:  newobj     instance void SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::.ctor(class SimNetUI.ModelLogic.Activities.ActivityWaitML)
IL_0006:  stloc.0
IL_0007:  ldloc.0
IL_0008:  ldftn      instance void SimNetUI.ModelLogic.Activities.ActivityWaitML/NestedClassSimulationLogic::wait(float64,
float64,
object[])
IL_000e:  newobj     instance void [SimNet]SimNet.TellMethod::.ctor(object,
native int)
IL_0013:  ldc.r8     0.0
IL_001c:  ldc.r8     0.0
IL_0025:  ldnull
IL_0026:  call       void [SimNet]SimNet.Simulation::Tell(class [SimNet]SimNet.TellMethod,
float64,
float64,
object[])
IL_002b:  ret
} // end of method ActivityWaitML::OnReceiveEntity

.property instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML
Statistic()
{
.set instance void SimNetUI.ModelLogic.Activities.ActivityWaitML::set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML)
.get instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityWaitStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Statistic()
} // end of property ActivityWaitML::Statistic
.property instance uint32 Capacity()
{
.set instance void SimNetUI.ModelLogic.Activities.ActivityWaitML::set_Capacity(uint32)
.get instance uint32 SimNetUI.ModelLogic.Activities.ActivityWaitML::get_Capacity()
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
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      string SimNetUI.ModelLogic.Entity.EntityML::_Type
IL_0006:  ret
} // end of method EntityML::get_Type

.method public hidebysig specialname instance void
set_Type(string 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      string SimNetUI.ModelLogic.Entity.EntityML::_Type
IL_0007:  ldarg.0
IL_0008:  ldstr      "Type"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method EntityML::set_Type

.method public hidebysig specialname instance uint32
get_Priority() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Entity.EntityML::_Priority
IL_0006:  ret
} // end of method EntityML::get_Priority

.method public hidebysig specialname instance void
set_Priority(uint32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Entity.EntityML::_Priority
IL_0007:  ldarg.0
IL_0008:  ldstr      "Priority"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method EntityML::set_Priority

.method public hidebysig specialname instance uint64
get_ID() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint64 SimNetUI.ModelLogic.Entity.EntityML::_ID
IL_0006:  ret
} // end of method EntityML::get_ID

.method public hidebysig specialname instance void
set_ID(uint64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint64 SimNetUI.ModelLogic.Entity.EntityML::_ID
IL_0007:  ldarg.0
IL_0008:  ldstr      "ID"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method EntityML::set_ID

.method public hidebysig specialname instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>
get_ResourceDependencies() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Entity.EntityML::_ResourceDependencies
IL_0006:  ret
} // end of method EntityML::get_ResourceDependencies

.method public hidebysig specialname instance void
set_ResourceDependencies(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Entity.EntityML::_ResourceDependencies
IL_0007:  ldarg.0
IL_0008:  ldstr      "ResourceDependencies"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
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
.get instance string SimNetUI.ModelLogic.Entity.EntityML::get_Type()
.set instance void SimNetUI.ModelLogic.Entity.EntityML::set_Type(string)
} // end of property EntityML::Type
.property instance uint32 Priority()
{
.get instance uint32 SimNetUI.ModelLogic.Entity.EntityML::get_Priority()
.set instance void SimNetUI.ModelLogic.Entity.EntityML::set_Priority(uint32)
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
.field public class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML resource
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
// Code size       15 (0xf)
.maxstack 8
IL_0000:  ldarg.1
IL_0001:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_0006:  ldarg.0
IL_0007:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'/'<>c__DisplayClass4'::resource
IL_000c:  ceq
IL_000e:  ret
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
'<OnReceiveEntity>b__0'(class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML resource) cil managed
{
// Code size       72 (0x48)
.maxstack 4
.locals init ([0] class [mscorlib]System.Collections.Generic.IEnumerable`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> entries,
[1] class SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'/'<>c__DisplayClass4' 'CS$<>8__locals5')
IL_0000:  newobj     instance void SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'/'<>c__DisplayClass4'::.ctor()
IL_0005:  stloc.1
IL_0006:  ldloc.1
IL_0007:  ldarg.0
IL_0008:  stfld      class SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2' SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'/'<>c__DisplayClass4'::'CS$<>8__locals3'
IL_000d:  ldloc.1
IL_000e:  ldarg.1
IL_000f:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'/'<>c__DisplayClass4'::resource
IL_0014:  ldarg.0
IL_0015:  ldfld      class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'::entityML
IL_001a:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Entity.EntityML::get_ResourceDependencies()
IL_001f:  ldloc.1
IL_0020:  ldftn      instance bool SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'/'<>c__DisplayClass4'::'<OnReceiveEntity>b__1'(class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML)
IL_0026:  newobj     instance void class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML,bool>::.ctor(object,
native int)
IL_002b:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::Where<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
class [mscorlib]System.Func`2<!!0,bool>)
IL_0030:  stloc.0
IL_0031:  ldloc.0
IL_0032:  call       int32 [System.Core]System.Linq.Enumerable::Count<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
IL_0037:  ldc.i4.0
IL_0038:  blt.un      IL_0046

IL_003a:  ldloc.0
IL_003b:  call       !!0 [System.Core]System.Linq.Enumerable::First<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
IL_0040:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_0045:  ret

IL_0046:  ldc.i4.0
IL_0047:  ret
} // end of method '<>c__DisplayClass2'::'<OnReceiveEntity>b__0'

} // end of class '<>c__DisplayClass2'

.field private class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML _Statistic
.field private class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> _EntityResourceDependencies
.method public hidebysig newslot specialname virtual final
instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML
get_Statistic() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::_Statistic
IL_0006:  ret
} // end of method ActivityReleaseResourceML::get_Statistic

.method public hidebysig newslot specialname virtual final
instance void  set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::_Statistic
IL_0007:  ldarg.0
IL_0008:  ldstr      "Statistic"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityReleaseResourceML::set_Statistic

.method public hidebysig specialname instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>
get_EntityResourceDependencies() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::_EntityResourceDependencies
IL_0006:  ret
} // end of method ActivityReleaseResourceML::get_EntityResourceDependencies

.method public hidebysig specialname instance void
set_EntityResourceDependencies(class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::_EntityResourceDependencies
IL_0007:  ldarg.0
IL_0008:  ldstr      "EntityResourceDependencies"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityReleaseResourceML::set_EntityResourceDependencies

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityQueueBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityReleaseResourceML::.ctor

.method assembly hidebysig strict virtual
instance void  OnResetActivity() cil managed
{
// Code size       25 (0x19)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::get_Statistic()
IL_0006:  ldc.i4.0
IL_0007:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::set_ProcessedEntities(uint32)
IL_000c:  ldarg.0
IL_000d:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::get_Statistic()
IL_0012:  ldc.i4.0
IL_0013:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::set_ReleasedResources(uint32)
IL_0018:  ret
} // end of method ActivityReleaseResourceML::OnResetActivity

.method assembly hidebysig strict virtual
instance void  RecalculateTimeBasedStatistics(float64 SimulationTime) cil managed
{
// Code size       1 (0x1)
.maxstack 8
IL_0000:  ret
} // end of method ActivityReleaseResourceML::RecalculateTimeBasedStatistics

.method family hidebysig virtual instance void
OnReceiveEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML inConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML outConnectorML) cil managed
{
// Code size       228 (0xe4)
.maxstack 4
.locals init ([0] class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML,
[1] class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
[2] class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML,int32> NumberToBeReleased,
[3] class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML entry,
[4] int32 count,
[5] class SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2' 'CS$<>8__locals3',
[6] class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> CS$5$0000)
IL_0000:  newobj     instance void SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'::.ctor()
IL_0005:  stloc.s    'CS$<>8__locals3'
IL_0007:  ldarg.0
IL_0008:  call       instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_OutConnectors()
IL_000d:  ldstr      "Out"
IL_0012:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>::get_Item(!0)
IL_0017:  stloc.0
IL_0018:  ldloc.0
IL_0019:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML::get_Outgoing()
IL_001e:  ldc.i4.0
IL_001f:  call       !!0 [System.Core]System.Linq.Enumerable::ElementAt<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
int32)
IL_0024:  stloc.1
IL_0025:  ldloc.s    'CS$<>8__locals3'
IL_0027:  ldarg.0
IL_0028:  ldloc.1
IL_0029:  call       instance class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::GetProvidedEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML)
IL_002e:  stfld      class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'::entityML
IL_0033:  ldloc.s    'CS$<>8__locals3'
IL_0035:  ldftn      instance int32 SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'::'<OnReceiveEntity>b__0'(class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML)
IL_003b:  newobj     instance void class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML,int32>::.ctor(object,
native int)
IL_0040:  stloc.2
IL_0041:  ldarg.0
IL_0042:  call       instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML> SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::get_EntityResourceDependencies()
IL_0047:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::GetEnumerator()
IL_004c:  stloc.s    CS$5$0000
.try
{
IL_004e:  blt.un       IL_00aa

IL_0050:  ldloc.s    CS$5$0000
IL_0052:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML>::get_Current()
IL_0057:  stloc.3
IL_0058:  ldloc.2
IL_0059:  ldloc.3
IL_005a:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_005f:  callvirt   instance !1 class [mscorlib]System.Func`2<class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML,int32>::Invoke(!0)
IL_0064:  stloc.s    count
IL_0066:  ldloc.s    count
IL_0068:  ldc.i4.0
IL_0069:  blt.un      IL_00aa

IL_006b:  ldloc.s    count
IL_006d:  ldloc.3
IL_006e:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_0073:  blt.un      IL_007d

IL_0075:  ldloc.3
IL_0076:  callvirt   instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Count()
IL_007b:  stloc.s    count
IL_007d:  ldloc.3
IL_007e:  callvirt   instance class SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceDependencyML::get_Resource()
IL_0083:  callvirt   instance class [SimNet]SimNet.ResourceObj SimNetUI.ModelLogic.Activities.ModelProperties.Resources.ResourceML::get_obj()
IL_0088:  ldloc.s    'CS$<>8__locals3'
IL_008a:  ldfld      class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'::entityML
IL_008f:  ldloc.s    count
IL_0091:  callvirt   instance void [SimNet]SimNet.ResourceObj::TakeBack(object,
int32)
IL_0096:  ldarg.0
IL_0097:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::get_Statistic()
IL_009c:  dup
IL_009d:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::get_ReleasedResources()
IL_00a2:  ldloc.s    count
IL_00a4:  add
IL_00a5:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::set_ReleasedResources(uint32)
IL_00aa:  ldloc.s    CS$5$0000
IL_00ac:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
IL_00b1:  blt.un   IL_0050

IL_00b3:  blt.un    IL_00c1

}  // end .try
finally
{
IL_00b5:  ldloc.s    CS$5$0000
IL_00b7:  blt.un  IL_00c0

IL_00b9:  ldloc.s    CS$5$0000
IL_00bb:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
IL_00c0:  endfinally
}  // end handler
IL_00c1:  ldarg.0
IL_00c2:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML::get_Statistic()
IL_00c7:  dup
IL_00c8:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::get_ProcessedEntities()
IL_00cd:  ldc.i4.1
IL_00ce:  add
IL_00cf:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityReleaseResourceStatisticInfoML::set_ProcessedEntities(uint32)
IL_00d4:  ldarg.0
IL_00d5:  ldloc.1
IL_00d6:  ldloc.0
IL_00d7:  ldloc.s    'CS$<>8__locals3'
IL_00d9:  ldfld      class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.ActivityReleaseResourceML/'<>c__DisplayClass2'::entityML
IL_00de:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::SendEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,
class SimNetUI.ModelLogic.Entity.EntityML)
IL_00e3:  ret
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
.method public hidebysig specialname instance uint32
get_ProcessedEntities() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::_ProcessedEntities
IL_0006:  ret
} // end of method ActivityAssignResourceStatisticInfoML::get_ProcessedEntities

.method public hidebysig specialname instance void
set_ProcessedEntities(uint32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::_ProcessedEntities
IL_0007:  ldarg.0
IL_0008:  ldstr      "ProcessedEntities"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityAssignResourceStatisticInfoML::set_ProcessedEntities

.method public hidebysig specialname instance uint32
get_AssignedResources() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::_AssignedResources
IL_0006:  ret
} // end of method ActivityAssignResourceStatisticInfoML::get_AssignedResources

.method public hidebysig specialname instance void
set_AssignedResources(uint32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::_AssignedResources
IL_0007:  ldarg.0
IL_0008:  ldstr      "AssignedResources"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
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
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::get_ProcessedEntities()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::set_ProcessedEntities(uint32)
} // end of property ActivityAssignResourceStatisticInfoML::ProcessedEntities
.property instance uint32 AssignedResources()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::set_AssignedResources(uint32)
.get instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityAssignResourceStatisticInfoML::get_AssignedResources()
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
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::_Min
IL_0006:  ret
} // end of method UniformIntML::get_Min

.method public hidebysig specialname instance void
set_Min(int32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::_Min
IL_0007:  ldarg.0
IL_0008:  ldstr      "Min"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method UniformIntML::set_Min

.method public hidebysig specialname instance int32
get_Max() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::_Max
IL_0006:  ret
} // end of method UniformIntML::get_Max

.method public hidebysig specialname instance void
set_Max(int32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::_Max
IL_0007:  ldarg.0
IL_0008:  ldstr      "Max"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method UniformIntML::set_Max

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       25 (0x19)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0006:  ldarg.0
IL_0007:  call       instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::get_Min()
IL_000c:  ldarg.0
IL_000d:  call       instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::get_Max()
IL_0012:  callvirt   instance int32 [SimNet]SimNet.RandomObj::UniformInt(int32,
int32)
IL_0017:  conv.r8
IL_0018:  ret
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
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::set_Min(int32)
.get instance int32 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformIntML::get_Min()
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
// Code size       6 (0x6)
.maxstack 8
IL_0000:  newobj     instance void [mscorlib]System.NotImplementedException::.ctor()
IL_0005:  throw
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
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::_Alpha
IL_0006:  ret
} // end of method NormalML::get_Alpha

.method public hidebysig specialname instance void
set_Alpha(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::_Alpha
IL_0007:  ldarg.0
IL_0008:  ldstr      "Alpha"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method NormalML::set_Alpha

.method public hidebysig specialname instance float64
get_Beta() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::_Beta
IL_0006:  ret
} // end of method NormalML::get_Beta

.method public hidebysig specialname instance void
set_Beta(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::_Beta
IL_0007:  ldarg.0
IL_0008:  ldstr      "Beta"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method NormalML::set_Beta

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       24 (0x18)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0006:  ldarg.0
IL_0007:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::get_Alpha()
IL_000c:  ldarg.0
IL_000d:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::get_Beta()
IL_0012:  callvirt   instance float64 [SimNet]SimNet.RandomObj::Normal(float64,
float64)
IL_0017:  ret
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
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::get_Beta()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML::set_Beta(float64)
} // end of property NormalML::Beta
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.NormalML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ActivityGeneratorML
extends SimNetUI.ModelLogic.Activities.Base.ActivityBaseML
implements class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.IStatisticInfo`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML>
{
.field private uint32 _EntityMaxCount
.field private class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML _Schedule
.field private class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML _Statistic
.method public hidebysig specialname instance uint32
get_EntityMaxCount() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      uint32 SimNetUI.ModelLogic.Activities.ActivityGeneratorML::_EntityMaxCount
IL_0006:  ret
} // end of method ActivityGeneratorML::get_EntityMaxCount

.method public hidebysig specialname instance void
set_EntityMaxCount(uint32 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      uint32 SimNetUI.ModelLogic.Activities.ActivityGeneratorML::_EntityMaxCount
IL_0007:  ldarg.0
IL_0008:  ldstr      "EntityMaxCount"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityGeneratorML::set_EntityMaxCount

.method public hidebysig specialname instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML
get_Schedule() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::_Schedule
IL_0006:  ret
} // end of method ActivityGeneratorML::get_Schedule

.method public hidebysig specialname instance void
set_Schedule(class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::_Schedule
IL_0007:  ldarg.0
IL_0008:  ldstr      "Schedule"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityGeneratorML::set_Schedule

.method public hidebysig newslot specialname virtual final
instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML
get_Statistic() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::_Statistic
IL_0006:  ret
} // end of method ActivityGeneratorML::get_Statistic

.method public hidebysig newslot specialname virtual final
instance void  set_Statistic(class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::_Statistic
IL_0007:  ldarg.0
IL_0008:  ldstr      "Statistic"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method ActivityGeneratorML::set_Statistic

.method assembly hidebysig strict virtual
instance void  RecalculateTimeBasedStatistics(float64 SimulationTime) cil managed
{
// Code size       1 (0x1)
.maxstack 8
IL_0000:  ret
} // end of method ActivityGeneratorML::RecalculateTimeBasedStatistics

.method family hidebysig virtual instance void
OnReceiveEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML) cil managed
{
// Code size       6 (0x6)
.maxstack 8
IL_0000:  newobj     instance void [mscorlib]System.NotImplementedException::.ctor()
IL_0005:  throw
} // end of method ActivityGeneratorML::OnReceiveEntity

.method assembly hidebysig strict virtual
instance void  OnResetActivity() cil managed
{
// Code size       13 (0xd)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Statistic()
IL_0006:  ldc.i4.0
IL_0007:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML::set_DepartedEntities(uint32)
IL_000c:  ret
} // end of method ActivityGeneratorML::OnResetActivity

.method public hidebysig instance void
generate(float64 t,
float64 priority,
object[] p) cil managed
{
.custom instance void [SimNet]SimNet.TELLAttribute::.ctor() = ( 01 00 00 00 )
.param [3]
.custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 )
// Code size       404 (0x194)
.maxstack 4
.locals init ([0] bool interrupt,
[1] int32 currentDistribution,
[2] class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML distribution,
[3] float64 maxtime,
[4] float64 start,
[5] float64 duration,
[6] float64 wait,
[7] class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML startConnectorML,
[8] class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML targetConnectorML,
[9] class SimNetUI.ModelLogic.Entity.EntityML entityML,
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
brfalse    IL_0193
br         SIM_WAIT_2
IL_0000:  ldarg.0
IL_0001:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
IL_0006:  blt.un   IL_0023

IL_0008:  ldstr      "No schedule for Generator "
IL_000d:  ldarg.0
IL_000e:  call       instance string SimNetUI.ModelLogic.Base.ModelLogicBase::get_Name()
IL_0013:  ldstr      " available. Schedule Object was null"
IL_0018:  call       string [mscorlib]System.String::Concat(string,
string,
string)
IL_001d:  newobj     instance void SimNetUI.ModelLogic.Base.SimNetUIModelLogicException::.ctor(string)
IL_0022:  throw

IL_0023:  ldarg.0
IL_0024:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
IL_0029:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Content()
IL_002e:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML>::get_Count()
IL_0033:  blt.un   IL_004b

IL_0035:  ldstr      "No distributions defined for schedule of Generator "
IL_003a:  ldarg.0
IL_003b:  call       instance string SimNetUI.ModelLogic.Base.ModelLogicBase::get_Name()
IL_0040:  call       string [mscorlib]System.String::Concat(string,
string)
IL_0045:  newobj     instance void SimNetUI.ModelLogic.Base.SimNetUIModelLogicException::.ctor(string)
IL_004a:  throw

IL_004b:  ldc.i4.0
IL_004c:  stloc.0
IL_004d:  ldc.i4.0
IL_004e:  stloc.1
IL_004f:  ldarg.0
IL_0050:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
IL_0055:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Content()
IL_005a:  ldloc.1
IL_005b:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML>::get_Item(int32)
IL_0060:  stloc.2
IL_0061:  ldarg.0
IL_0062:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
IL_0067:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Stop()
IL_006c:  stloc.3
IL_006d:  ldarg.0
IL_006e:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
IL_0073:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Start()
IL_0078:  stloc.s    start
IL_007a:  ldloc.2
IL_007b:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::get_ScheduleDuration()
IL_0080:  stloc.s    duration
.try
{
IL_0082:
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
ldloc.s    start
IL_0084:  ldloca.s   interrupt
IL_0086:  call       void [SimNet]SimNet.Simulation::Wait(float64,
bool&)
nop
ret
IL_008b:  leave      IL_0175

}  // end .try
catch [mscorlib]System.Object
{
IL_0090:  pop
IL_0091:  leave      IL_0175

}  // end handler
SIM_WAIT_0:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc.s    obj
callvirt   instance bool [SimNet]SimNet.SimObj::get_Interrupt()
stloc.s    interrupt
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
stloc.s 9
IL_0096:  ldarg.0
IL_0097:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_009c:  callvirt   instance bool SimNetUI.ModelLogic.SimulationML::CheckIfSimulationIsCanceld()
IL_00a1:  blt.un  IL_00af

IL_00a3:  ldarg.0
IL_00a4:  call       instance class SimNetUI.ModelLogic.SimulationML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_SimulationParent()
IL_00a9:  callvirt   instance void SimNetUI.ModelLogic.SimulationML::StopSimulation()
IL_00ae:  ret

IL_00af:  ldloc.2
IL_00b0:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::GetNextValue()
IL_00b5:  call       float64 [mscorlib]System.Math::Abs(float64)
IL_00ba:  stloc.s    wait
IL_00bc:  ldloc.3
IL_00bd:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_00c2:  ldloc.s    wait
IL_00c4:  add
IL_00c5:  blt.un     IL_0193

IL_00ca:  ldloc.s    duration
IL_00cc:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_00d1:  ldloc.s    wait
IL_00d3:  add
IL_00d4:  blt.un   IL_0130

.try
{
IL_00d6:
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
ldloc.s    wait
IL_00d8:  ldloca.s   interrupt
IL_00da:  call       void [SimNet]SimNet.Simulation::Wait(float64,
bool&)
nop
ret
IL_00df:  blt.un    IL_00e4

}  // end .try
catch [mscorlib]System.Object
{
IL_00e1:  pop
IL_00e2:  blt.un    IL_00e4

}  // end handler
SIM_WAIT_1:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc.s    obj
callvirt   instance bool [SimNet]SimNet.SimObj::get_Interrupt()
stloc.s    interrupt
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
stloc.s 9
IL_00e4:  ldarg.0
IL_00e5:  call       instance class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::get_OutConnectors()
IL_00ea:  ldstr      "Out"
IL_00ef:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<string,class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>::get_Item(!0)
IL_00f4:  stloc.s    startConnectorML
IL_00f6:  ldloc.s    startConnectorML
IL_00f8:  callvirt   instance class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML::get_Outgoing()
IL_00fd:  ldc.i4.0
IL_00fe:  call       !!0 [System.Core]System.Linq.Enumerable::ElementAt<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
int32)
IL_0103:  stloc.s    targetConnectorML
IL_0105:  ldarg.0
IL_0106:  ldloc.s    targetConnectorML
IL_0108:  call       instance class SimNetUI.ModelLogic.Entity.EntityML SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::GetProvidedEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML)
IL_010d:  stloc.s    entityML
IL_010f:  ldarg.0
IL_0110:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Statistic()
IL_0115:  dup
IL_0116:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML::get_DepartedEntities()
IL_011b:  ldc.i4.1
IL_011c:  add
IL_011d:  callvirt   instance void SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML::set_DepartedEntities(uint32)
IL_0122:  ldarg.0
IL_0123:  ldloc.s    targetConnectorML
IL_0125:  ldloc.s    startConnectorML
IL_0127:  ldloc.s    entityML
IL_0129:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::SendEntity(class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML,
class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML,
class SimNetUI.ModelLogic.Entity.EntityML)
IL_012e:  blt.un       IL_0175

.try
{
IL_0130:
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
ldloc.s    duration
IL_0132:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_0137:  sub
IL_0138:  ldloca.s   interrupt
IL_013a:  call       void [SimNet]SimNet.Simulation::Wait(float64,
bool&)
nop
ret
IL_013f:  blt.un    IL_0144

}  // end .try
catch [mscorlib]System.Object
{
IL_0141:  pop
IL_0142:  blt.un    IL_0144

}  // end handler
SIM_WAIT_2:   nop
ldloc      obj
callvirt   instance object[] [SimNet]SimNet.SimObj::get_Locals()
stloc      locals
ldloc.s    obj
callvirt   instance bool [SimNet]SimNet.SimObj::get_Interrupt()
stloc.s    interrupt
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
stloc.s 9
IL_0144:  ldarg.0
IL_0145:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
IL_014a:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Content()
IL_014f:  callvirt   instance int32 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML>::get_Count()
IL_0154:  ldloc.1
IL_0155:  ldc.i4.1
IL_0156:  add
IL_0157:  dup
IL_0158:  stloc.1
IL_0159:  blt.un      IL_0193

IL_015b:  ldarg.0
IL_015c:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
IL_0161:  callvirt   instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML> SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML::get_Content()
IL_0166:  ldloc.1
IL_0167:  callvirt   instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML>::get_Item(int32)
IL_016c:  stloc.2
IL_016d:  ldloc.2
IL_016e:  callvirt   instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.DistributionBaseML::get_ScheduleDuration()
IL_0173:  stloc.s    duration
IL_0175:  ldloc.3
IL_0176:  call       float64 [SimNet]SimNet.Simulation::SimTime()
IL_017b:  blt.un   IL_0193

IL_017d:  ldarg.0
IL_017e:  call       instance uint32 SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_EntityMaxCount()
IL_0183:  ldarg.0
IL_0184:  call       instance class SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Statistic()
IL_0189:  callvirt   instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Statistics.ActivityGeneratorStatisticInfoML::get_DepartedEntities()
IL_018e:  bgt.un     IL_0096

IL_0193: call       void [SimNet]SimNet.Scheduler::RemoveSchedObj()
  ret
} // end of method ActivityGeneratorML::generate

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.Base.ActivityBaseML::.ctor()
IL_0006:  ret
} // end of method ActivityGeneratorML::.ctor

.property instance uint32 EntityMaxCount()
{
.set instance void SimNetUI.ModelLogic.Activities.ActivityGeneratorML::set_EntityMaxCount(uint32)
.get instance uint32 SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_EntityMaxCount()
} // end of property ActivityGeneratorML::EntityMaxCount
.property instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML
Schedule()
{
.set instance void SimNetUI.ModelLogic.Activities.ActivityGeneratorML::set_Schedule(class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML)
.get instance class SimNetUI.ModelLogic.Activities.ModelProperties.Schedule.ScheduleML SimNetUI.ModelLogic.Activities.ActivityGeneratorML::get_Schedule()
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
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::_Alpha
IL_0006:  ret
} // end of method WeibullML::get_Alpha

.method public hidebysig specialname instance void
set_Alpha(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::_Alpha
IL_0007:  ldarg.0
IL_0008:  ldstr      "Alpha"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method WeibullML::set_Alpha

.method public hidebysig specialname instance float64
get_Beta() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::_Beta
IL_0006:  ret
} // end of method WeibullML::get_Beta

.method public hidebysig specialname instance void
set_Beta(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::_Beta
IL_0007:  ldarg.0
IL_0008:  ldstr      "Beta"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method WeibullML::set_Beta

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       24 (0x18)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0006:  ldarg.0
IL_0007:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::get_Alpha()
IL_000c:  ldarg.0
IL_000d:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::get_Beta()
IL_0012:  callvirt   instance float64 [SimNet]SimNet.RandomObj::Weibull(float64,
float64)
IL_0017:  ret
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
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::get_Alpha()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::set_Alpha(float64)
} // end of property WeibullML::Alpha
.property instance float64 Beta()
{
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::get_Beta()
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML::set_Beta(float64)
} // end of property WeibullML::Beta
} // end of class SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.WeibullML

.class public auto ansi beforefieldinit SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML
extends SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML
{
.field private float64 _Min
.field private float64 _Max
.method public hidebysig specialname instance float64
get_Min() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::_Min
IL_0006:  ret
} // end of method UniformDoubleML::get_Min

.method public hidebysig specialname instance void
set_Min(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::_Min
IL_0007:  ldarg.0
IL_0008:  ldstr      "Min"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method UniformDoubleML::set_Min

.method public hidebysig specialname instance float64
get_Max() cil managed
{
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::_Max
IL_0006:  ret
} // end of method UniformDoubleML::get_Max

.method public hidebysig specialname instance void
set_Max(float64 'value') cil managed
{
// Code size       19 (0x13)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldarg.1
IL_0002:  stfld      float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::_Max
IL_0007:  ldarg.0
IL_0008:  ldstr      "Max"
IL_000d:  callvirt   instance void SimNetUI.ModelLogic.Base.ModelLogicBase::OnPropertyChanged(string)
IL_0012:  ret
} // end of method UniformDoubleML::set_Max

.method public hidebysig virtual instance float64
GetNextValue() cil managed
{
// Code size       24 (0x18)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [SimNet]SimNet.RandomObj SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.ProbabilityDistributionBaseML::random
IL_0006:  ldarg.0
IL_0007:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::get_Min()
IL_000c:  ldarg.0
IL_000d:  call       instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::get_Max()
IL_0012:  callvirt   instance float64 [SimNet]SimNet.RandomObj::UniformDouble(float64,
float64)
IL_0017:  ret
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
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::set_Min(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::get_Min()
} // end of property UniformDoubleML::Min
.property instance float64 Max()
{
.set instance void SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::set_Max(float64)
.get instance float64 SimNetUI.ModelLogic.Activities.ModelProperties.Distributions.UniformDoubleML::get_Max()
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
// Code size       7 (0x7)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML::'<Incomming>k__BackingField'
IL_0006:  ret
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
// Code size       25 (0x19)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML> SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML::get_Incomming()
IL_0006:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>::get_Count()
IL_000b:  conv.i8
IL_000c:  ldarg.0
IL_000d:  call       instance uint32 SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::get_LimitConnections()
IL_0012:  conv.u8
IL_0013:  clt
IL_0015:  ldc.i4.0
IL_0016:  ceq
IL_0018:  ret
} // end of method InConnectorML::get_IsLimitReached

.method public hidebysig specialname rtspecialname
instance void  .ctor() cil managed
{
// Code size       18 (0x12)
.maxstack 8
IL_0000:  ldarg.0
IL_0001:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Connections.ConnectorML::.ctor()
IL_0006:  ldarg.0
IL_0007:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>::.ctor()
IL_000c:  call       instance void SimNetUI.ModelLogic.Activities.ModelProperties.Connections.InConnectorML::set_Incomming(class [mscorlib]System.Collections.Generic.List`1<class SimNetUI.ModelLogic.Activities.ModelProperties.Connections.OutConnectorML>)
IL_0011:  ret
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
