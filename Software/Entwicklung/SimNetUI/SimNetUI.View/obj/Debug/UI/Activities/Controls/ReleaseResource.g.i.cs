﻿#pragma checksum "..\..\..\..\..\UI\Activities\Controls\ReleaseResource.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "B878D4D9976DD9AC916788B922E0B70C"
//------------------------------------------------------------------------------
// <auto-generated>
//     Dieser Code wurde von einem Tool generiert.
//     Laufzeitversion:4.0.30319.235
//
//     Änderungen an dieser Datei können falsches Verhalten verursachen und gehen verloren, wenn
//     der Code erneut generiert wird.
// </auto-generated>
//------------------------------------------------------------------------------

using SimNetUI.View.UI.Activities.Base;
using SimNetUI.View.UI.Activities.ControlParts.Connection;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace SimNetUI.View.UI.Activities.Controls {
    
    
    /// <summary>
    /// ReleaseResource
    /// </summary>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
    public partial class ReleaseResource : SimNetUI.View.UI.Activities.Base.ActivityBase, System.Windows.Markup.IComponentConnector {
        
        
        #line 41 "..\..\..\..\..\UI\Activities\Controls\ReleaseResource.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal SimNetUI.View.UI.Activities.ControlParts.Connection.InConnector In;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\..\..\..\UI\Activities\Controls\ReleaseResource.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal SimNetUI.View.UI.Activities.ControlParts.Connection.OutConnector Out;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/SimNetUI.View;component/ui/activities/controls/releaseresource.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\..\UI\Activities\Controls\ReleaseResource.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal System.Delegate _CreateDelegate(System.Type delegateType, string handler) {
            return System.Delegate.CreateDelegate(delegateType, this, handler);
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.In = ((SimNetUI.View.UI.Activities.ControlParts.Connection.InConnector)(target));
            return;
            case 2:
            this.Out = ((SimNetUI.View.UI.Activities.ControlParts.Connection.OutConnector)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

