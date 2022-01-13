Public Class FrmConsultaResultado

    Public IsCargando As Boolean



    Private Sub FrmConsultaResultado_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.ToolTip1.SetToolTip(Me.BtnImprimir, "Imprimir")
        Me.llenarTorneosActivos()
        If Me.cmbTorneo.SelectedIndex > -1 Then
            'llena el combo de jornadas
            Me.llenarJornadasTorneo()
        End If
        If Me.IsCargando = False Then
            Me.cargarDatos()
        End If
    End Sub

    ''' <summary>
    ''' Metodo que uso para llenar los torneos activos.
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub llenarTorneosActivos()
        Me.IsCargando = True
        Dim cTorneo As New ClsTorneo
        Dim tablaTorneos As DataTable
        cTorneo.activo = 0
        tablaTorneos = cTorneo.cargarTorneosActivos()
        Me.cmbTorneo.DataSource = tablaTorneos
        Me.cmbTorneo.DisplayMember = "Nombre"
        Me.cmbTorneo.ValueMember = "IdTorneo"
        Me.IsCargando = False
    End Sub


    ''' <summary>
    ''' Metodo que uso para llenar las jornadas del torneo seleccionado.
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub llenarJornadasTorneo()
        Me.IsCargando = True
        Dim cJornada As New Jornada
        cJornada.idTorneo = Me.cmbTorneo.SelectedValue
        Dim tablaJornadas As DataTable
        tablaJornadas = cJornada.consultarJornadasJugadas()
        Me.cmbJornadas.DataSource = tablaJornadas
        Me.cmbJornadas.DisplayMember = "Nombre"
        Me.cmbJornadas.ValueMember = "IdJornada"
        Me.IsCargando = False
    End Sub


    Private Sub cmbJornadas_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbJornadas.SelectedIndexChanged
        If Me.IsCargando = False Then
            Me.cargarDatos()
        End If
    End Sub

    Private Sub cargarDatos()
        Me.IsCargando = True
        Dim dsEquipos As DataSet
        Dim tablaDatos As DataTable
        Dim cJornadaPartido As New JornadaPartido
        cJornadaPartido.idTorneo = cmbTorneo.SelectedValue
        cJornadaPartido.idJornada = cmbJornadas.SelectedValue
        dsEquipos = cJornadaPartido.consultarEstadisticaPorJornada()
        If (dsEquipos.Tables.Count > 0) Then
            tablaDatos = dsEquipos.Tables(0)
            dgResultados.DataSource = tablaDatos
            formateargrid()

        Else
            'MessageBox.Show("La Jornada: " + cmbJornadas.SelectedValue.ToString() + " del torneo: " + cmbTorneo.Text.ToString() + " aun no se ha jugado, por favor seleccione otra jornada.", "Alerta")
            dgResultados.DataSource = New DataTable
        End If
        Me.IsCargando = False
    End Sub

    Private Sub formateargrid()

        'Asigno las columnas invisibles
        dgResultados.Columns("IdEquipo").Visible = False
        dgResultados.Columns("idTorneo").Visible = False
        dgResultados.Columns("IdJornada").Visible = False
        dgResultados.Columns("Id").Visible = False
        dgResultados.Columns("NombreTorneo").Visible = False

        'Asigno los nombres a las columnas
        dgResultados.Columns("PartidosJugados").HeaderText = "PJ"
        dgResultados.Columns("PartidosGanados").HeaderText = "PG"
        dgResultados.Columns("PartidosEmpatados").HeaderText = "PE"
        dgResultados.Columns("PartidosPerdidos").HeaderText = "PP"
        dgResultados.Columns("GolesFavor").HeaderText = "GF"
        dgResultados.Columns("GolesContra").HeaderText = "GC"
        dgResultados.Columns("DiferenciaGoles").HeaderText = "DG"
        dgResultados.Columns("Puntos").HeaderText = "P"
        dgResultados.Columns("PuntosFairPlay").HeaderText = "PFP"
        dgResultados.Columns("PuntosDescontadosFairPlay").HeaderText = "PDFP"
        dgResultados.Columns("PuntosDescontadosJunta").HeaderText = "PDJ"
        dgResultados.Columns("PuntosTotales").HeaderText = "PT"


        'Asigno los nombres a las columnas
        dgResultados.Columns("Nombre").Width = 435
        dgResultados.Columns("PartidosJugados").Width = 50
        dgResultados.Columns("PartidosGanados").Width = 50
        dgResultados.Columns("PartidosEmpatados").Width = 50
        dgResultados.Columns("PartidosPerdidos").Width = 50
        dgResultados.Columns("GolesFavor").Width = 50
        dgResultados.Columns("GolesContra").Width = 50
        dgResultados.Columns("DiferenciaGoles").Width = 50
        dgResultados.Columns("Puntos").Width = 50
        dgResultados.Columns("PuntosFairPlay").Width = 50
        dgResultados.Columns("PuntosDescontadosFairPlay").Width = 50
        dgResultados.Columns("PuntosDescontadosJunta").Width = 50
        dgResultados.Columns("PuntosTotales").Width = 50


        'Asigno el tooltip
        dgResultados.Columns("Nombre").ToolTipText = "Nombre"
        dgResultados.Columns("PartidosJugados").ToolTipText = "Partidos jugados"
        dgResultados.Columns("PartidosGanados").ToolTipText = "Partidos ganados"
        dgResultados.Columns("PartidosEmpatados").ToolTipText = "Partidos empatados"
        dgResultados.Columns("PartidosPerdidos").ToolTipText = "Partidos perdidos"
        dgResultados.Columns("GolesFavor").ToolTipText = "Goles a favor"
        dgResultados.Columns("GolesContra").ToolTipText = "Goles en contra"
        dgResultados.Columns("DiferenciaGoles").ToolTipText = "Diferencia de goles"
        dgResultados.Columns("Puntos").ToolTipText = "Puntos"
        dgResultados.Columns("PuntosFairPlay").ToolTipText = "Putos fairplay"
        dgResultados.Columns("PuntosDescontadosFairPlay").ToolTipText = "Puntos descontados fairplay"
        dgResultados.Columns("PuntosDescontadosJunta").ToolTipText = "Puntos descontados junta"
        dgResultados.Columns("PuntosTotales").ToolTipText = "Puntos Totales"

        'Alineo al centro
        dgResultados.Columns("PartidosJugados").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        dgResultados.Columns("PartidosGanados").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        dgResultados.Columns("PartidosEmpatados").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        dgResultados.Columns("PartidosPerdidos").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        dgResultados.Columns("GolesFavor").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        dgResultados.Columns("GolesContra").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        dgResultados.Columns("DiferenciaGoles").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        dgResultados.Columns("Puntos").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        dgResultados.Columns("PuntosFairPlay").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        dgResultados.Columns("PuntosDescontadosFairPlay").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        dgResultados.Columns("PuntosDescontadosJunta").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        dgResultados.Columns("PuntosTotales").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter

    End Sub


    Private Sub cmbTorneo_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbTorneo.SelectedIndexChanged
        If Me.IsCargando = False Then
            'llena el combo de jornadas
            Me.llenarJornadasTorneo()
            Me.cargarDatos()
        End If
    End Sub

    Private Sub FrmConsultaResultado_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        HabilitaMenu(Me.ParentForm.Menu, Me.Text)
    End Sub

    Private Sub dgResultados_CellContentClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgResultados.CellContentClick

    End Sub

    Private Sub BtnImprimir_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnImprimir.Click
        Dim frmRptEstadisticaJornadas As New FrmReportViewerSSRS("Estadisticas Generales del Torneo")
        frmRptEstadisticaJornadas.pTipoReporte = ClsEnumerados.ETipoReporte.Reporte_EstadisticasJornada
        frmRptEstadisticaJornadas.pIdTorneo = cmbTorneo.SelectedValue
        frmRptEstadisticaJornadas.pIdJornada = cmbJornadas.SelectedValue        
        frmRptEstadisticaJornadas.ShowDialog()
        frmRptEstadisticaJornadas.Size = MaximumSize
        frmRptEstadisticaJornadas.Dispose()
       
    End Sub
End Class
