Public Class FrmEstadisticaSanciones


    ''' <summary>
    ''' variable que uso para saber si la pantalla esta en proceso de cargado o no.
    ''' </summary>
    ''' <remarks></remarks>
    Public IsCargando As Boolean


    Private Sub FrmEstadisticaSanciones_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.IsCargando = True
        Me.llenarCombos()
        Me.llenarGrids()
        Me.llenarDetalle()
        Me.IsCargando = False
    End Sub


    Private Sub llenarCombos()
        Me.llenarTorneosActivos()
    End Sub

    ''' <summary>
    ''' Metodo que uso para llenar los torneos activos.
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub llenarTorneosActivos()
        Dim cTorneo As New ClsTorneo
        Dim tablaTorneos As DataTable
        cTorneo.activo = 0
        tablaTorneos = cTorneo.cargarTorneosActivos()
        Me.cmbTorneo.DataSource = tablaTorneos
        Me.cmbTorneo.DisplayMember = "Nombre"
        Me.cmbTorneo.ValueMember = "IdTorneo"
    End Sub


    Private Sub llenarGrids()
        Dim cEstadistica As New ClsEstadisticaSanciones

        Me.dgSancionesEncabezado.DataSource = cEstadistica.consultarEncabezado(Me.cmbTorneo.SelectedValue) ', Me.cmbJornadas.SelectedValue)
        Me.dgSancionesEncabezado.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        Me.dgSancionesEncabezado.Columns("IdTorneo").Visible = False
        Me.dgSancionesEncabezado.Columns("IdEquipo").Visible = False
        Me.dgSancionesEncabezado.Columns("IdJugador").Visible = False
        Me.dgSancionesEncabezado.Columns("IdJornada").Visible = False

        Me.dgSancionesEncabezado.Columns("Jornada").Width = 150
        Me.dgSancionesEncabezado.Columns("Equipo").Width = 200
        Me.dgSancionesEncabezado.Columns("Jugador").Width = 200
        Me.dgSancionesEncabezado.Columns(7).Width = 130
        Me.dgSancionesEncabezado.Columns(8).Width = 129

        Me.dgSancionesEncabezado.Columns(7).DefaultCellStyle.Alignment = DataGridViewContentAlignment.BottomCenter
        Me.dgSancionesEncabezado.Columns(8).DefaultCellStyle.Alignment = DataGridViewContentAlignment.BottomCenter

    End Sub


    Private Sub cmbTorneo_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbTorneo.SelectedIndexChanged
        If Me.IsCargando = False Then
            'llena el combo de jornadas
            Me.llenarGrids()
            Me.llenarDetalle()
        End If
    End Sub

    Private Sub FrmConsultaResultado_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        HabilitaMenu(Me.ParentForm.Menu, Me.Text)
    End Sub


    Private Sub dgSancionesEncabezado_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dgSancionesEncabezado.SelectionChanged
        If Me.IsCargando = False Then
            Me.llenarDetalle()
        End If
    End Sub

    Private Sub llenarDetalle()

        If Me.IsCargando = False Then
            If (Me.dgSancionesEncabezado.Rows.Count > 0) Then
                Dim cEstadistica As New ClsEstadisticaSanciones
                Dim equipo As Integer = Me.dgSancionesEncabezado.CurrentRow.Cells("IdEquipo").Value
                Dim jugador As Integer = Me.dgSancionesEncabezado.CurrentRow.Cells("IdJugador").Value
                Dim jornada As Integer = Me.dgSancionesEncabezado.CurrentRow.Cells("IdJornada").Value
                Me.DgSancionesDetalle.DataSource = cEstadistica.consultarDetalle(Me.cmbTorneo.SelectedValue, jornada, equipo, jugador)
                Me.DgSancionesDetalle.Columns(2).Visible = False

                Me.DgSancionesDetalle.Columns(0).Width = 109
                Me.DgSancionesDetalle.Columns(1).Width = 700
                Me.DgSancionesDetalle.Columns(2).Width = 600

                Me.DgSancionesDetalle.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter


                Me.DgSancionesDetalle.Columns(0).DefaultCellStyle.Alignment = DataGridViewContentAlignment.BottomCenter
                Me.DgSancionesDetalle.Columns(2).DefaultCellStyle.Alignment = DataGridViewContentAlignment.BottomCenter

            Else
                Me.DgSancionesDetalle.DataSource = Nothing
            End If
        End If
    End Sub

    Private Sub BtnImprimir_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnImprimir.Click
        Dim frmreport As New FrmReportViewerSSRS(My.Resources.PantallaReporteSanciones)
        frmreport.pTipoReporte = ClsEnumerados.ETipoReporte.Reporte_Sanciones
        frmreport.pIdTorneo = Me.cmbTorneo.SelectedValue
        frmreport.pNombreTorneo = Me.cmbTorneo.Text
        frmreport.ShowDialog()
        frmreport.Dispose()
    End Sub
End Class