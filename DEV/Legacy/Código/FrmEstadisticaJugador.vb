Public Class FrmEstadisticaJugador

    ''' <summary>
    ''' Lista en la uqe tendre los jugadores disponibles para el torneo.
    ''' </summary>
    ''' <remarks></remarks>
    Public dtJugadores As DataTable

    ''' <summary>
    ''' variable que uso para saber si la pantalla esta en proceso de cargado o no.
    ''' </summary>
    ''' <remarks></remarks>
    Public IsCargando As Boolean

    Dim IconAma As Image = Image.FromFile(Ruta.RUTA_ARCHIVOS_CONFIGURACION + "\soccer-card-yellow.ico")
    Dim IconRoj As Image = Image.FromFile(Ruta.RUTA_ARCHIVOS_CONFIGURACION + "\soccer-card-red.ico")
    Dim IconGol As Image = Image.FromFile(Ruta.RUTA_ARCHIVOS_CONFIGURACION + "\soccer-ball.ico")
    Dim IconSil As Image = Image.FromFile(Ruta.RUTA_ARCHIVOS_CONFIGURACION + "\jugador.ico")

    Private Sub FrmEstadisticaJugador_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        HabilitaMenu(Me.ParentForm.Menu, "Estadisticas de los jugadores")
    End Sub

    Private Sub FrmEstadisticaJugador_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.IsCargando = True
        llenarTorneos()
        Me.IsCargando = False
        llenarEstadistica()
    End Sub
    Private Sub llenarTorneos()
        Dim cTorneo As New ClsTorneo
        Dim tablaTorneos As DataTable
        cTorneo.activo = 0
        tablaTorneos = cTorneo.cargarTorneosActivos()
        Me.cmbTorneo.DataSource = tablaTorneos
        Me.cmbTorneo.DisplayMember = "Nombre"
        Me.cmbTorneo.ValueMember = "IdTorneo"
    End Sub

    Private Sub llenarEstadistica()
        If Not IsCargando Then
            If Me.cmbTorneo.SelectedIndex > -1 Then
                Dim cJugador As New ClsJugador
                dtJugadores = Nothing
                dtJugadores = cJugador.DameEstadisticaJugador(Me.cmbTorneo.SelectedValue)
                Me.dgEquipoJugadores.DataSource = dtJugadores
                Me.dgEquipoJugadores.Columns("IdJugador").Visible = False

                Me.dgEquipoJugadores.Columns("Equipo").Width = 410
                Me.dgEquipoJugadores.Columns("Nombre").Width = 420
                Me.dgEquipoJugadores.Columns("Goles").Width = 30
                Me.dgEquipoJugadores.Columns("Expulsiones").Width = 30
                Me.dgEquipoJugadores.Columns("Amonestaciones").Width = 30
                Me.dgEquipoJugadores.Columns("PartidosJugados").Width = 30

                Me.dgEquipoJugadores.Columns("Equipo").DefaultCellStyle.Alignment = DataGridViewContentAlignment.BottomLeft
                Me.dgEquipoJugadores.Columns("Nombre").DefaultCellStyle.Alignment = DataGridViewContentAlignment.BottomLeft
                Me.dgEquipoJugadores.Columns("Goles").DefaultCellStyle.Alignment = DataGridViewContentAlignment.BottomCenter
                Me.dgEquipoJugadores.Columns("Expulsiones").DefaultCellStyle.Alignment = DataGridViewContentAlignment.BottomCenter
                Me.dgEquipoJugadores.Columns("Amonestaciones").DefaultCellStyle.Alignment = DataGridViewContentAlignment.BottomCenter
                Me.dgEquipoJugadores.Columns("PartidosJugados").DefaultCellStyle.Alignment = DataGridViewContentAlignment.BottomCenter
            End If
        End If
    End Sub

    Private Sub cmbTorneo_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbTorneo.SelectedIndexChanged
        Me.llenarEstadistica()
    End Sub

    Private Sub dgEquipoJugadores_CellPainting(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellPaintingEventArgs) Handles dgEquipoJugadores.CellPainting
        If e.RowIndex = -1 AndAlso e.ColumnIndex = 5 Then
            e.Paint(e.CellBounds, DataGridViewPaintParts.All And Not DataGridViewPaintParts.ContentForeground)
            e.Graphics.DrawImage(IconAma, e.CellBounds)
            e.Handled = True
        End If
        If e.RowIndex = -1 AndAlso e.ColumnIndex = 6 Then
            e.Paint(e.CellBounds, DataGridViewPaintParts.All And Not DataGridViewPaintParts.ContentForeground)
            e.Graphics.DrawImage(IconRoj, e.CellBounds)
            e.Handled = True
        End If
        If e.RowIndex = -1 AndAlso e.ColumnIndex = 4 Then
            e.Paint(e.CellBounds, DataGridViewPaintParts.All And Not DataGridViewPaintParts.ContentForeground)
            e.Graphics.DrawImage(IconGol, e.CellBounds)
            e.Handled = True
        End If
        If e.RowIndex = -1 AndAlso e.ColumnIndex = 3 Then
            e.Paint(e.CellBounds, DataGridViewPaintParts.All And Not DataGridViewPaintParts.ContentForeground)
            e.Graphics.DrawImage(IconSil, e.CellBounds)
            e.Handled = True
        End If
    End Sub
End Class