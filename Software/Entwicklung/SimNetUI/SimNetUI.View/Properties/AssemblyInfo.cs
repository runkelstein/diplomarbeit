using System.Reflection;
using System.Resources;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Markup;

// Allgemeine Informationen über eine Assembly werden über die folgenden 
// Attribute gesteuert. Ändern Sie diese Attributwerte, um die Informationen zu ändern,
// die mit einer Assembly verknüpft sind.

[assembly: AssemblyTitle("SimNetUI")]
[assembly: AssemblyDescription("")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany("HTW-Dresden")]
[assembly: AssemblyProduct("SimNetUI")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]

// Durch Festlegen von ComVisible auf "false" werden die Typen in dieser Assembly unsichtbar 
// für COM-Komponenten. Wenn Sie auf einen Typ in dieser Assembly von 
// COM zugreifen müssen, legen Sie das ComVisible-Attribut für diesen Typ auf "true" fest.

[assembly: ComVisible(false)]

//Um mit dem Erstellen lokalisierbarer Anwendungen zu beginnen, legen Sie 
//<UICulture>ImCodeVerwendeteKultur</UICulture> in der .csproj-Datei
//in einer <PropertyGroup> fest. Wenn Sie in den Quelldateien beispielsweise Deutsch
//(Deutschland) verwenden, legen Sie <UICulture> auf \"de-DE\" fest. Heben Sie dann die Auskommentierung
//des nachstehenden NeutralResourceLanguage-Attributs auf. Aktualisieren Sie "en-US" in der nachstehenden Zeile,
//sodass es mit der UICulture-Einstellung in der Projektdatei übereinstimmt.

//[assembly: NeutralResourcesLanguage("en-US", UltimateResourceFallbackLocation.Satellite)]


[assembly: ThemeInfo(
    ResourceDictionaryLocation.None, //Speicherort der designspezifischen Ressourcenwörterbücher
    //(wird verwendet, wenn eine Ressource auf der Seite 
    // oder in den Anwendungsressourcen-Wörterbüchern nicht gefunden werden kann.)
    ResourceDictionaryLocation.SourceAssembly //Speicherort des generischen Ressourcenwörterbuchs
    //(wird verwendet, wenn eine Ressource auf der Seite, in der Anwendung oder einem 
    // designspezifischen Ressourcenwörterbuch nicht gefunden werden kann.)
    )]


// Versionsinformationen für eine Assembly bestehen aus den folgenden vier Werten:
//
//      Hauptversion
//      Nebenversion 
//      Buildnummer
//      Revision
//
// Sie können alle Werte angeben oder die standardmäßigen Build- und Revisionsnummern 
// übernehmen, indem Sie "*" eingeben:
// [assembly: AssemblyVersion("1.0.*")]

[assembly: AssemblyVersion("1.0.0.0")]
[assembly: AssemblyFileVersion("1.0.0.0")]

// Xaml Namespace mapping:

[assembly: XmlnsDefinition("SimNetUI", "SimNetUI.Controls")]
[assembly: XmlnsDefinition("SimNetUI", "SimNetUI.Activities.Controls")]
[assembly: XmlnsDefinition("SimNetUI", "SimNetUI.Activities.PropertyObjects.Connections")]
[assembly: XmlnsDefinition("SimNetUI", "SimNetUI.Activities.PropertyObjects.Distributions")]
[assembly: XmlnsDefinition("SimNetUI", "SimNetUI.Activities.PropertyObjects.Schedule")]
[assembly: XmlnsDefinition("SimNetUI", "SimNetUI.Activities.PropertyObjects.Resources")]
[assembly: XmlnsDefinition("SimNetUI", "SimNetUI.Companions.Controls")]
[assembly: XmlnsDefinition("SimNetUI", "SimNetUI.Entity")]
[assembly: XmlnsDefinition("SimNetUI", "SimNetUI.Resources")]

// assembly friends
// let the "Desing"-project access internal members located in this project

[assembly: InternalsVisibleTo("SimNetUI.VisualStudio.Design")]
//[assembly: InternalsVisibleTo("SimNetUI.VisualStudio.Design, PublicKey=002400000480000094000000060200000024000052534131000400000100010025BE2F7800E031460A3B3AD14E0D36B9A46C9859FDCAED4754DF5A2F409C72C31E1E9DA57AD90CD526B12D9AD3D2FCFF1017B0A0B53D36BC2B2662FF6DF809B6A709188020C147E2769326C778C6723F77A4307429A48BF471A2226FD19D03B9C190280A815DF7243BE2FD41DF147CA9960DF8DAFCF7D07E2E9E2C3007D16AC1")]