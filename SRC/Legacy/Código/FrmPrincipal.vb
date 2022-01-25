Imports System.Drawing.Drawing2D
Imports System.Drawing.Text
Public Class FrmPrincipal
    Inherits System.Windows.Forms.Form

#Region " Código generado por el Diseñador de Windows Forms "

    Public Sub New()
        MyBase.New()

        'El Diseñador de Windows Forms requiere esta llamada.
        InitializeComponent()

        'Agregar cualquier inicialización después de la llamada a InitializeComponent()

    End Sub

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms requiere el siguiente procedimiento
    'Puede modificarse utilizando el Diseñador de Windows Forms. 
    'No lo modifique con el editor de código.
    Friend WithEvents MnuPrincipal As System.Windows.Forms.MainMenu
    Friend WithEvents MnuUsuarios As System.Windows.Forms.MenuItem
    Friend WithEvents MnuAcceso As System.Windows.Forms.MenuItem
    Friend WithEvents StbPrincipal As System.Windows.Forms.StatusBar
    Friend WithEvents TbPrincipal As System.Windows.Forms.ToolBar
    Friend WithEvents ImlImagenes As System.Windows.Forms.ImageList
    Friend WithEvents BtnSalir As System.Windows.Forms.ToolBarButton
    Friend WithEvents mnuJugadores As System.Windows.Forms.MenuItem
    Friend WithEvents mnuCatalogos As System.Windows.Forms.MenuItem

    Friend WithEvents MnuSalir As System.Windows.Forms.MenuItem
    Friend WithEvents mnuArbitros As System.Windows.Forms.MenuItem
    Friend WithEvents miCatalogoEquipos As System.Windows.Forms.MenuItem
    Friend WithEvents mnuGenerarTorneo As System.Windows.Forms.MenuItem
    Friend WithEvents miRelEquipoJugador As System.Windows.Forms.MenuItem
    Friend WithEvents mnuVerPartidosTorneo As System.Windows.Forms.MenuItem
    Friend WithEvents mnuCapturarResPartido As System.Windows.Forms.MenuItem
    Friend WithEvents MnuEstadisticas As System.Windows.Forms.MenuItem
    Friend WithEvents miEstadisticasJugadores As System.Windows.Forms.MenuItem
    Friend WithEvents mnuTipoSancion As System.Windows.Forms.MenuItem
    Friend WithEvents MnuConsultas As System.Windows.Forms.MenuItem
    Friend WithEvents MnuConfiguracion As System.Windows.Forms.MenuItem
    Friend WithEvents MnuCaptura As System.Windows.Forms.MenuItem
    Friend WithEvents MnuConfigSistema As System.Windows.Forms.MenuItem
    Friend WithEvents MiEstadisticaSanciones As System.Windows.Forms.MenuItem
    Friend WithEvents MenuItem1 As System.Windows.Forms.MenuItem
    Friend WithEvents MnuConfiguracionTorneo As System.Windows.Forms.MenuItem
    Friend WithEvents MnuJuntas As System.Windows.Forms.MenuItem
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmPrincipal))
        Me.MnuPrincipal = New System.Windows.Forms.MainMenu(Me.components)
        Me.MnuConfiguracion = New System.Windows.Forms.MenuItem
        Me.MnuConfiguracionTorneo = New System.Windows.Forms.MenuItem
        Me.mnuGenerarTorneo = New System.Windows.Forms.MenuItem
        Me.miRelEquipoJugador = New System.Windows.Forms.MenuItem
        Me.MnuAcceso = New System.Windows.Forms.MenuItem
        Me.MnuConfigSistema = New System.Windows.Forms.MenuItem
        Me.mnuCatalogos = New System.Windows.Forms.MenuItem
        Me.mnuJugadores = New System.Windows.Forms.MenuItem
        Me.mnuArbitros = New System.Windows.Forms.MenuItem
        Me.miCatalogoEquipos = New System.Windows.Forms.MenuItem
        Me.mnuTipoSancion = New System.Windows.Forms.MenuItem
        Me.MnuUsuarios = New System.Windows.Forms.MenuItem
        Me.MnuCaptura = New System.Windows.Forms.MenuItem
        Me.mnuCapturarResPartido = New System.Windows.Forms.MenuItem
        Me.MnuJuntas = New System.Windows.Forms.MenuItem
        Me.MnuConsultas = New System.Windows.Forms.MenuItem
        Me.miEstadisticasJugadores = New System.Windows.Forms.MenuItem
        Me.MnuEstadisticas = New System.Windows.Forms.MenuItem
        Me.mnuVerPartidosTorneo = New System.Windows.Forms.MenuItem
        Me.MiEstadisticaSanciones = New System.Windows.Forms.MenuItem
        Me.MenuItem1 = New System.Windows.Forms.MenuItem
        Me.MnuSalir = New System.Windows.Forms.MenuItem
        Me.StbPrincipal = New System.Windows.Forms.StatusBar
        Me.TbPrincipal = New System.Windows.Forms.ToolBar
        Me.BtnSalir = New System.Windows.Forms.ToolBarButton
        Me.ImlImagenes = New System.Windows.Forms.ImageList(Me.components)
        Me.SuspendLayout()
        '
        'MnuPrincipal
        '
        Me.MnuPrincipal.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.MnuConfiguracion, Me.mnuCatalogos, Me.MnuCaptura, Me.MnuConsultas, Me.MnuSalir})
        '
        'MnuConfiguracion
        '
        Me.MnuConfiguracion.Index = 0
        Me.MnuConfiguracion.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.MnuConfiguracionTorneo, Me.mnuGenerarTorneo, Me.miRelEquipoJugador, Me.MnuAcceso, Me.MnuConfigSistema})
        Me.MnuConfiguracion.Text = "Configuración"
        '
        'MnuConfiguracionTorneo
        '
        Me.MnuConfiguracionTorneo.Index = 0
        Me.MnuConfiguracionTorneo.Text = "Configuración de Torneos"
        '
        'mnuGenerarTorneo
        '
        Me.mnuGenerarTorneo.Index = 1
        Me.mnuGenerarTorneo.Text = "Generar Torneo"
        Me.mnuGenerarTorneo.Visible = False
        '
        'miRelEquipoJugador
        '
        Me.miRelEquipoJugador.Index = 2
        Me.miRelEquipoJugador.Text = "Configurar plantilla de equipos"
        '
        'MnuAcceso
        '
        Me.MnuAcceso.Enabled = False
        Me.MnuAcceso.Index = 3
        Me.MnuAcceso.Text = "Configuración de Acceso"
        Me.MnuAcceso.Visible = False
        '
        'MnuConfigSistema
        '
        Me.MnuConfigSistema.Index = 4
        Me.MnuConfigSistema.Text = "Configuraciones de Sistema"
        '
        'mnuCatalogos
        '
        Me.mnuCatalogos.Index = 1
        Me.mnuCatalogos.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.mnuJugadores, Me.mnuArbitros, Me.miCatalogoEquipos, Me.mnuTipoSancion, Me.MnuUsuarios})
        Me.mnuCatalogos.Text = "Catálogos"
        Me.mnuCatalogos.Visible = False
        '
        'mnuJugadores
        '
        Me.mnuJugadores.Index = 0
        Me.mnuJugadores.Text = "Catálogo de Jugadores"
        Me.mnuJugadores.Visible = False
        '
        'mnuArbitros
        '
        Me.mnuArbitros.Index = 1
        Me.mnuArbitros.Text = "Catálogo de Arbitros"
        '
        'miCatalogoEquipos
        '
        Me.miCatalogoEquipos.Index = 2
        Me.miCatalogoEquipos.Text = "Catálogo de Equipos"
        '
        'mnuTipoSancion
        '
        Me.mnuTipoSancion.Index = 3
        Me.mnuTipoSancion.Text = "Catálogo de Tipos de Sanción"
        '
        'MnuUsuarios
        '
        Me.MnuUsuarios.Enabled = False
        Me.MnuUsuarios.Index = 4
        Me.MnuUsuarios.Text = "Catálogo de Usuarios"
        Me.MnuUsuarios.Visible = False
        '
        'MnuCaptura
        '
        Me.MnuCaptura.Index = 2
        Me.MnuCaptura.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.mnuCapturarResPartido, Me.MnuJuntas})
        Me.MnuCaptura.Text = "Captura"
        '
        'mnuCapturarResPartido
        '
        Me.mnuCapturarResPartido.Index = 0
        Me.mnuCapturarResPartido.Text = "Capturar Resultado Partido"
        '
        'MnuJuntas
        '
        Me.MnuJuntas.Index = 1
        Me.MnuJuntas.Text = "Capturar Bitacora de Juntas"
        '
        'MnuConsultas
        '
        Me.MnuConsultas.Index = 3
        Me.MnuConsultas.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.miEstadisticasJugadores, Me.MnuEstadisticas, Me.mnuVerPartidosTorneo, Me.MiEstadisticaSanciones, Me.MenuItem1})
        Me.MnuConsultas.Text = "Consultas"
        '
        'miEstadisticasJugadores
        '
        Me.miEstadisticasJugadores.Index = 0
        Me.miEstadisticasJugadores.Text = "Estadisticas de los jugadores"
        '
        'MnuEstadisticas
        '
        Me.MnuEstadisticas.Index = 1
        Me.MnuEstadisticas.Text = "Estadisticas por Jornada"
        '
        'mnuVerPartidosTorneo
        '
        Me.mnuVerPartidosTorneo.Index = 2
        Me.mnuVerPartidosTorneo.Text = "Programar Horarios de Partidos"
        '
        'MiEstadisticaSanciones
        '
        Me.MiEstadisticaSanciones.Index = 3
        Me.MiEstadisticaSanciones.Text = "Estadistica de sanciones"
        '
        'MenuItem1
        '
        Me.MenuItem1.Index = 4
        Me.MenuItem1.Text = "Reglamento"
        '
        'MnuSalir
        '
        Me.MnuSalir.Index = 4
        Me.MnuSalir.Text = "Salir"
        '
        'StbPrincipal
        '
        Me.StbPrincipal.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.StbPrincipal.Location = New System.Drawing.Point(0, 399)
        Me.StbPrincipal.Name = "StbPrincipal"
        Me.StbPrincipal.Size = New System.Drawing.Size(839, 22)
        Me.StbPrincipal.TabIndex = 1
        '
        'TbPrincipal
        '
        Me.TbPrincipal.Buttons.AddRange(New System.Windows.Forms.ToolBarButton() {Me.BtnSalir})
        Me.TbPrincipal.ButtonSize = New System.Drawing.Size(24, 24)
        Me.TbPrincipal.DropDownArrows = True
        Me.TbPrincipal.ImageList = Me.ImlImagenes
        Me.TbPrincipal.Location = New System.Drawing.Point(0, 0)
        Me.TbPrincipal.Name = "TbPrincipal"
        Me.TbPrincipal.ShowToolTips = True
        Me.TbPrincipal.Size = New System.Drawing.Size(839, 28)
        Me.TbPrincipal.TabIndex = 3
        '
        'BtnSalir
        '
        Me.BtnSalir.ImageIndex = 5
        Me.BtnSalir.Name = "BtnSalir"
        Me.BtnSalir.Tag = "Salir"
        Me.BtnSalir.ToolTipText = "Salir del Sistema"
        '
        'ImlImagenes
        '
        Me.ImlImagenes.ImageStream = CType(resources.GetObject("ImlImagenes.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImlImagenes.TransparentColor = System.Drawing.Color.Transparent
        Me.ImlImagenes.Images.SetKeyName(0, "")
        Me.ImlImagenes.Images.SetKeyName(1, "")
        Me.ImlImagenes.Images.SetKeyName(2, "")
        Me.ImlImagenes.Images.SetKeyName(3, "")
        Me.ImlImagenes.Images.SetKeyName(4, "")
        Me.ImlImagenes.Images.SetKeyName(5, "")
        '
        'FrmPrincipal
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(6, 18)
        Me.BackColor = System.Drawing.Color.Black
        Me.BackgroundImage = Global.EnlacesSoccer.My.Resources.Resources.fifa_ball
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(839, 421)
        Me.Controls.Add(Me.TbPrincipal)
        Me.Controls.Add(Me.StbPrincipal)
        Me.DoubleBuffered = True
        Me.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.IsMdiContainer = True
        Me.Menu = Me.MnuPrincipal
        Me.Name = "FrmPrincipal"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "EnlacesSoccer APP"
        Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

#End Region

    Private bitmap As Bitmap
    Protected intCurrentGradientShift As Integer = 10
    Protected intGradiantStep As Integer = 5





    Private Sub FrmPrincipal_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Acceso.VerificaAcceso(MnuPrincipal)
        ActivaMenu()
        Me.StbPrincipal.Text = "FECHA: " & Today.ToLongDateString
        Fondo()
    End Sub

    Sub Fondo()
        Dim ctl As Control
        Dim ctlMDI As MdiClient
        For Each ctl In Me.Controls
            Try
                If String.IsNullOrEmpty(ctl.Name) Then
                    ctlMDI = CType(ctl, MdiClient)
                    ctlMDI.BackColor = Me.BackColor
                End If
            Catch exc As InvalidCastException
            End Try
        Next
    End Sub


    Private Sub ActivaMenu()
        For Contador As Byte = 0 To Acceso.VectorAcceso.Count - 1
            Select Case CType(Acceso.VectorAcceso(Contador), ControlAcceso).IdOpcion
                Case 1    'Configuración
                    Me.MnuPrincipal.MenuItems(0).Visible = True
                Case 2    'Generar Torneo
                    Me.MnuPrincipal.MenuItems(0).MenuItems(0).Visible = True
                Case 3    'Configurar plantilla de equipos
                    Me.MnuPrincipal.MenuItems(0).MenuItems(1).Visible = True
                Case 4    'Catálogos
                    Me.MnuPrincipal.MenuItems(1).Visible = True
                Case 5    'Catálogo de Jugadores
                    Me.MnuPrincipal.MenuItems(1).MenuItems(0).Visible = True
                Case 6    'Catálogo de Arbitros
                    Me.MnuPrincipal.MenuItems(1).MenuItems(1).Visible = True
                Case 7    'Catálogo de Equipos
                    Me.MnuPrincipal.MenuItems(1).MenuItems(2).Visible = True
                Case 8    'Catálogo de Tipos de Sanción
                    Me.MnuPrincipal.MenuItems(1).MenuItems(3).Visible = True
                Case 9    'Catálogo de Usuarios
                    Me.MnuPrincipal.MenuItems(1).MenuItems(4).Visible = False
                Case 10    'Captura
                    Me.MnuPrincipal.MenuItems(2).Visible = True
                Case 11    'Capturar Resultado Partido
                    Me.MnuPrincipal.MenuItems(2).MenuItems(0).Visible = True
                Case 12    'Capturar Bitacora de Juntas
                    Me.MnuPrincipal.MenuItems(2).MenuItems(1).Visible = True
                Case 13    'Consultas
                    Me.MnuPrincipal.MenuItems(3).Visible = True
                Case 14    'Estadisticas de los jugadores
                    Me.MnuPrincipal.MenuItems(3).MenuItems(0).Visible = True
                Case 15    'Estadisticas por Jornada
                    Me.MnuPrincipal.MenuItems(3).MenuItems(1).Visible = True
                Case 16    'Calendario del Torneo
                    Me.MnuPrincipal.MenuItems(3).MenuItems(2).Visible = True


            End Select
        Next
    End Sub


    Private Sub MnuAcceso_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MnuAcceso.Click
        If sender.checked = False Then
            sender.checked = True
            Dim Acceso As New FrmAcceso
            Acceso.MdiParent = Me
            Acceso.Show()
        End If
    End Sub


    Private Sub TbPrincipal_ButtonClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.ToolBarButtonClickEventArgs) Handles TbPrincipal.ButtonClick
        Select Case e.Button.Tag

            Case "Salir"
                If MsgBox("Desea salir del Sistema", MsgBoxStyle.Question + MsgBoxStyle.YesNo, Mensaje) = MsgBoxResult.Yes Then
                    End
                End If
        End Select
    End Sub


    Private Sub mnuJugadores_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuJugadores.Click
        If sender.checked = False Then
            sender.checked = True
            Dim FJugadores As New FrmJugadores
            FJugadores.MdiParent = Me
            FJugadores.Show()
        End If
    End Sub

    Private Sub MnuSalir_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MnuSalir.Click
        If MsgBox("Desea salir del Sistema", MsgBoxStyle.Question + MsgBoxStyle.YesNo, Mensaje) = MsgBoxResult.Yes Then
            End
        End If
    End Sub

    Private Sub mnuArbitros_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuArbitros.Click
        If sender.checked = False Then
            sender.checked = True
            Dim FArbitros As New FrmArbitros
            FArbitros.MdiParent = Me
            FArbitros.Show()
        End If
    End Sub

    Private Sub miCatalogoEquipos_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles miCatalogoEquipos.Click
        If sender.checked = False Then
            sender.checked = True
            Dim frmEquipos As New frmConsultarEquipo
            frmEquipos.MdiParent = Me
            frmEquipos.Show()
        End If
    End Sub

    Private Sub mnuGenerarTorneo_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuGenerarTorneo.Click
        If sender.checked = False Then
            sender.checked = True
            Dim frmGeneraTorneo As New FrmGeneraTorneo
            frmGeneraTorneo.MdiParent = Me
            frmGeneraTorneo.Show()
        End If
    End Sub

    Private Sub miRelEquipoJugador_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles miRelEquipoJugador.Click
        If sender.checked = False Then
            sender.checked = True
            Dim frmRelEquipoJugador As New FrmRelEquipoJugador
            frmRelEquipoJugador.MdiParent = Me
            frmRelEquipoJugador.Show()
        End If
    End Sub

    Private Sub MenuItem4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MnuJuntas.Click
        If sender.checked = False Then
            sender.checked = True
            Dim frmJuntas As New FrmJuntas
            frmJuntas.MdiParent = Me
            frmJuntas.BringToFront()
            frmJuntas.Show()
        End If
    End Sub

    Private Sub mnuVerPartidosTorneo_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuVerPartidosTorneo.Click
        If sender.checked = False Then
            sender.checked = True
            Dim frmVerTorneo As New FrmVerTorneo
            frmVerTorneo.MdiParent = Me
            frmVerTorneo.Show()
        End If
    End Sub

    Private Sub mnuCapturarResPartido_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuCapturarResPartido.Click
        If sender.checked = False Then
            sender.checked = True
            Dim frmCapturaResultado As New FrmCapturaResultado
            frmCapturaResultado.MdiParent = Me
            frmCapturaResultado.Show()
        End If
    End Sub

    Private Sub MenuItem1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MnuEstadisticas.Click
        If sender.checked = False Then
            sender.checked = True
            Dim frmConsultaResultado As New FrmConsultaResultado
            frmConsultaResultado.MdiParent = Me
            frmConsultaResultado.Show()
        End If
    End Sub

    Private Sub miEstadisticasJugadores_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles miEstadisticasJugadores.Click
        If sender.checked = False Then
            Try
                sender.checked = True
                Dim frmConsultaResultado As New FrmEstadisticaJugador
                frmConsultaResultado.MdiParent = Me
                frmConsultaResultado.Show()
            Catch ex As Exception
                MsgBox(ex.Message, MsgBoxStyle.Exclamation, Mensaje)
            End Try
        End If
    End Sub

    Private Sub mnuTipoSancion_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuTipoSancion.Click
        If sender.checked = False Then
            sender.checked = True
            Dim FTiposSancion As New FrmTiposSancion
            FTiposSancion.MdiParent = Me
            FTiposSancion.Show()
        End If
    End Sub

    Private Sub MnuConfigSistema_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MnuConfigSistema.Click
        If sender.checked = False Then
            sender.checked = True
            Dim FConfiguraciones As New FrmConfiguraciones
            FConfiguraciones.MdiParent = Me
            FConfiguraciones.Show()
        End If
    End Sub


    Private Sub MiEstadisticaSanciones_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MiEstadisticaSanciones.Click
        If sender.checked = False Then
            sender.checked = True
            Dim FEstadistica As New FrmEstadisticaSanciones
            FEstadistica.MdiParent = Me
            FEstadistica.Show()
        End If
    End Sub

    Private Sub MenuItem1_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MenuItem1.Click
        Dim FrmReglamento As New FrmReportViewerSSRS(My.Resources.PantallaReporteReglamento)
        FrmReglamento.pTipoReporte = ClsEnumerados.ETipoReporte.Reporte_Reglamento
        FrmReglamento.MdiParent = Me
        FrmReglamento.Show()

    End Sub

   
    Private Sub MnuConfiguracionTorneo_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MnuConfiguracionTorneo.Click
        If sender.checked = False Then
            sender.checked = True
            Dim frmConfiguraTorneo As New FrmConfiguraTorneo
            frmConfiguraTorneo.MdiParent = Me
            frmConfiguraTorneo.Show()
        End If
    End Sub
End Class
