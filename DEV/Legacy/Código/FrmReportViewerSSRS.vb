Imports Microsoft.Reporting.WinForms
Imports System.Collections.Generic
Imports EnlacesSoccer

Public Class FrmReportViewerSSRS


    Private vTipoReporte As ClsEnumerados.ETipoReporte
    Public Property pTipoReporte() As ClsEnumerados.ETipoReporte
        Get
            Return vTipoReporte
        End Get
        Set(ByVal value As ClsEnumerados.ETipoReporte)
            vTipoReporte = value
        End Set
    End Property

    Private vNombreTorneo As String
    Public Property pNombreTorneo() As String
        Get
            Return vNombreTorneo
        End Get
        Set(ByVal value As String)
            vNombreTorneo = value
        End Set
    End Property


    Private vIdTorneo As Integer
    Public Property pIdTorneo() As Integer
        Get
            Return vIdTorneo
        End Get
        Set(ByVal value As Integer)
            vIdTorneo = value
        End Set
    End Property

    Private vIdJornada As Integer
    Public Property pIdJornada() As Integer
        Get
            Return vIdJornada
        End Get
        Set(ByVal value As Integer)
            vIdJornada = value
        End Set
    End Property

    Private vIdEquipo As Integer
    Public Property pIdEquipo() As Integer
        Get
            Return vIdEquipo
        End Get
        Set(ByVal value As Integer)
            vIdEquipo = value
        End Set
    End Property

    Private vIdEquipo1 As Integer
    Public Property pIdEquipo1() As Integer
        Get
            Return vIdEquipo1
        End Get
        Set(ByVal value As Integer)
            vIdEquipo1 = value
        End Set
    End Property

    Private vIdEquipo2 As Integer
    Public Property pIdEquipo2() As Integer
        Get
            Return vIdEquipo2
        End Get
        Set(ByVal value As Integer)
            vIdEquipo2 = value
        End Set
    End Property

    Private vParaJunta As Boolean
    Public Property pParaJunta() As Boolean
        Get
            Return vParaJunta
        End Get
        Set(ByVal value As Boolean)
            vParaJunta = value
        End Set
    End Property

    Private vVerPendientes As Boolean
    Public Property pVerPendientes() As Boolean
        Get
            Return vVerPendientes
        End Get
        Set(ByVal value As Boolean)
            vVerPendientes = value
        End Set
    End Property

    Public Sub New(ByRef nombrePantalla As String)
        Me.InitializeComponent()
        Me.Text = nombrePantalla
    End Sub

    Private Sub FrmReportViewerSSRS_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.llenarReporte()

    End Sub



    Private Sub llenarReporte()
        Select Case Me.pTipoReporte
            Case ClsEnumerados.ETipoReporte.Reporte_Sanciones
                Try
                    Me.ReportViewer1.ServerReport.ReportServerUrl = New System.Uri("http://302arodriguez2/reportserver")
                    Me.ReportViewer1.ServerReport.ReportPath = "/ENLACESSOCCER/Reports/04 Estadistica de Sanciones" 'Expandido"
                    Dim parametros As New List(Of ReportParameter)
                    'parametros.Add(New ReportParameter("Torneo", pNombreTorneo))
                    parametros.Add(New ReportParameter("IdTorneo", Convert.ToString(pIdTorneo)))
                    ReportViewer1.ServerReport.SetParameters(parametros)
                    Me.ReportViewer1.RefreshReport()
                    'Me.ReportViewer1.SetDisplayMode(DisplayMode.PrintLayout)
                    'Me.ReportViewer1.ZoomMode = ZoomMode.Percent
                    'Me.ReportViewer1.ZoomPercent = 100
                    'Me.ReportViewer1.ShowParameterPrompts = False
                Catch ex As Exception
                    MsgBox("Error al cargar el reporte")
                End Try
            Case ClsEnumerados.ETipoReporte.Reporte_Calendario
                Try
                    Me.ReportViewer1.ServerReport.ReportServerUrl = New System.Uri("http://302arodriguez2/reportserver")
                    Me.ReportViewer1.ServerReport.ReportPath = "/ENLACESSOCCER/Reports/03 Calendario de partidos por jornada"
                    Dim parametros As New List(Of ReportParameter)
                    'parametros.Add(New ReportParameter("Torneo", pNombreTorneo))
                    parametros.Add(New ReportParameter("IdTorneo", Convert.ToString(pIdTorneo)))
                    parametros.Add(New ReportParameter("IdJornada", Convert.ToString(pIdJornada)))
                    parametros.Add(New ReportParameter("nIdEquipo", Convert.ToString(0)))
                    'parametros.Add(New ReportParameter("ParaJunta", pParaJunta))
                    'parametros.Add(New ReportParameter("VerPendientes", pVerPendientes))
                    ReportViewer1.ServerReport.SetParameters(parametros)
                    Me.ReportViewer1.RefreshReport()
                    'Me.ReportViewer1.SetDisplayMode(DisplayMode.PrintLayout)
                    'Me.ReportViewer1.ZoomMode = ZoomMode.Percent
                    'Me.ReportViewer1.ZoomPercent = 100
                    'Me.ReportViewer1.ShowParameterPrompts = False
                Catch ex As Exception
                    MsgBox("Error al cargar el reporte")
                End Try
            Case ClsEnumerados.ETipoReporte.Reporte_Resultado
                Try
                    Me.ReportViewer1.ServerReport.ReportServerUrl = New System.Uri("http://302arodriguez2/reportserver")
                    Me.ReportViewer1.ServerReport.ReportPath = "/ENLACESSOCCER/Reports/03 Calendario de partidos por jornada"
                    Dim parametros As New List(Of ReportParameter)
                    'parametros.Add(New ReportParameter("Torneo", pNombreTorneo))
                    parametros.Add(New ReportParameter("IdTorneo", Convert.ToString(pIdTorneo)))
                    parametros.Add(New ReportParameter("IdJornada", Convert.ToString(pIdJornada)))
                    parametros.Add(New ReportParameter("nIdEquipo", Convert.ToString(0)))
                    ReportViewer1.ServerReport.SetParameters(parametros)
                    Me.ReportViewer1.RefreshReport()
                    'Me.ReportViewer1.SetDisplayMode(DisplayMode.PrintLayout)
                    'Me.ReportViewer1.ZoomMode = ZoomMode.Percent
                    'Me.ReportViewer1.ZoomPercent = 100
                    'Me.ReportViewer1.ShowParameterPrompts = False
                    'Catch ex As Exception
                    '    MsgBox("Error al cargar el reporte")
                    'End Try
                Catch ex As Exception
                    MsgBox(ex.Message, MsgBoxStyle.Exclamation, Mensaje)
                End Try
            Case ClsEnumerados.ETipoReporte.Reporte_Cedula
                Try
                    Me.ReportViewer1.ServerReport.ReportServerUrl = New System.Uri("http://302arodriguez2/reportserver")
                    Me.ReportViewer1.ServerReport.ReportPath = "/ENLACESSOCCER/Reports/06 CedulaArbitral"
                    
                    Dim parametros As New List(Of ReportParameter)
                    parametros.Add(New ReportParameter("IdTorneo", Convert.ToString(pIdTorneo)))
                    parametros.Add(New ReportParameter("IdJornada", Convert.ToString(pIdJornada)))
                    parametros.Add(New ReportParameter("IdEquipo1", Convert.ToString(pIdEquipo1)))
                    parametros.Add(New ReportParameter("IdEquipo2", Convert.ToString(pIdEquipo2)))
                    ReportViewer1.ServerReport.SetParameters(parametros)
                    Me.ReportViewer1.RefreshReport()
                    'Me.ReportViewer1.SetDisplayMode(DisplayMode.PrintLayout)
                    'Me.ReportViewer1.ZoomMode = ZoomMode.Percent
                    'Me.ReportViewer1.ZoomPercent = 100
                    'Me.ReportViewer1.ShowParameterPrompts = False
                    'Catch ex As Exception
                    '    MsgBox("Error al cargar el reporte")
                    'End Try
                Catch ex As Exception
                    MsgBox(ex.Message, MsgBoxStyle.Exclamation, Mensaje)
                End Try
            Case ClsEnumerados.ETipoReporte.Reporte_EstadisticasJornada
                Try                    
                    Me.ReportViewer1.ServerReport.ReportServerUrl = New System.Uri("http://302arodriguez2/reportserver")
                    Me.ReportViewer1.ServerReport.ReportPath = "/ENLACESSOCCER/Reports/01 Tabla general"
                    Dim parametros As New List(Of ReportParameter)
                    parametros.Add(New ReportParameter("pnIdTorneo", Convert.ToInt32(pIdTorneo)))
                    parametros.Add(New ReportParameter("pnidJornada", Convert.ToInt32(pIdJornada)))
                    ReportViewer1.ServerReport.SetParameters(parametros)
                    Me.ReportViewer1.RefreshReport()
                Catch ex As Exception
                    MsgBox("Error al cargar el reporte")
                End Try
            Case ClsEnumerados.ETipoReporte.Reporte_Reglamento
                Try
                    Me.ReportViewer1.ServerReport.ReportServerUrl = New System.Uri("http://302arodriguez2/reportserver")
                    Me.ReportViewer1.ServerReport.ReportPath = "/ENLACESSOCCER/Reports/08 Reglamento"
                    Dim parametros As New List(Of ReportParameter)
                    Me.ReportViewer1.RefreshReport()
                Catch ex As Exception
                    MsgBox("Error al cargar el reporte")
                End Try
            Case ClsEnumerados.ETipoReporte.Reporte_Credenciales
                Try
                    Me.ReportViewer1.ServerReport.ReportServerUrl = New System.Uri("http://302arodriguez2/reportserver")
                    Me.ReportViewer1.ServerReport.ReportPath = "/ENLACESSOCCER/Reports/05 Credenciales"

                    Dim parametros As New List(Of ReportParameter)
                    parametros.Add(New ReportParameter("IdTorneo", Convert.ToString(pIdTorneo)))                    
                    parametros.Add(New ReportParameter("IdEquipo", Convert.ToString(pIdEquipo)))
                    ReportViewer1.ServerReport.SetParameters(parametros)
                    Me.ReportViewer1.RefreshReport()
                Catch ex As Exception
                    MsgBox("Error al cargar el reporte")
                End Try
            Case Else
                MsgBox("No existe el reporte")
        End Select
    End Sub

End Class