﻿'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated by a tool.
'     Runtime Version:2.0.50727.5444
'
'     Changes to this file may cause incorrect behavior and will be lost if
'     the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict On
Option Explicit On



<Global.System.Runtime.CompilerServices.CompilerGeneratedAttribute(),  _
 Global.System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "9.0.0.0")>  _
Partial Friend NotInheritable Class RutaArchivos
    Inherits Global.System.Configuration.ApplicationSettingsBase
    
    Private Shared defaultInstance As RutaArchivos = CType(Global.System.Configuration.ApplicationSettingsBase.Synchronized(New RutaArchivos),RutaArchivos)
    
    Public Shared ReadOnly Property [Default]() As RutaArchivos
        Get
            Return defaultInstance
        End Get
    End Property
    
    <Global.System.Configuration.ApplicationScopedSettingAttribute(),  _
     Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.Configuration.DefaultSettingValueAttribute("C:\TorneoDeacero\Bin")>  _
    Public ReadOnly Property RUTA_ARCHIVOS_CONFIGURACION() As String
        Get
            Return CType(Me("RUTA_ARCHIVOS_CONFIGURACION"),String)
        End Get
    End Property
End Class
