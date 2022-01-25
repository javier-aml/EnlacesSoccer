Public Class FrmAsignarSancion

    Friend idTorneo As Int16
    Friend idEquipo As Int16
    Friend idJornada As Int16
    Friend idJugador As Int16
    Friend idTipoSancion As Int16
    Friend partidosSancionados As Int16
    Friend partidosPendientes As Int16
    Friend hacerCambios As Boolean = False
    Friend sancion As ClsSancion
    Friend listaSancionados As ArrayList

    Private Sub FrmAsignarSancion_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim tipoSancion As New ClsTipoSancion
        Dim sanciones As DataTable
        sanciones = tipoSancion.ConsultarSanciones
        DataGridView1.DataSource = sanciones

        DataGridView1.Columns("IdTipoSancion").Visible = False
        DataGridView1.Columns("JuegosSuspension").Visible = False
        DataGridView1.Columns("Clave").HeaderText = "Clave Sancion"
        DataGridView1.Columns("Descripcion").HeaderText = "Descripcion Sancion"
        DataGridView1.Columns("Flag").HeaderText = String.Empty

        DataGridView1.Columns("Clave").Width = 60
        DataGridView1.Columns("Descripcion").Width = 700
        DataGridView1.Columns("Flag").Width = 50
        DataGridView1.Columns("Clave").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        DataGridView1.Columns("Descripcion").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft
        DataGridView1.Columns("Flag").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        DataGridView1.Columns("Clave").ReadOnly = True
        DataGridView1.Columns("Descripcion").ReadOnly = True

    End Sub

    Private Sub btnCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCancelar.Click
        Me.Close()
    End Sub

    Private Sub btnGuardar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnGuardar.Click
        Guardar()
        Me.Close()
    End Sub

    Private Sub Guardar()
        'listaSancionados = New ArrayList
        For Each row As DataGridViewRow In DataGridView1.Rows
            If (Convert.ToBoolean(row.Cells("Flag").Value)) Then
                sancion = New ClsSancion
                sancion.activa = 1
                sancion.claUsuarioMod = 1
                sancion.nombrePcMod = "Carga Inicial"
                sancion.idTorneo = Me.idTorneo
                sancion.idEquipo = Me.idEquipo
                sancion.idJornada = Me.idJornada
                sancion.idJugador = Me.idJugador
                sancion.idTipoSancion = Convert.ToInt16(row.Cells("IdTipoSancion").Value)
                sancion.juegosSuspendido = Convert.ToInt16(row.Cells("JuegosSuspension").Value)
                sancion.juegosPendientes = Convert.ToInt16(row.Cells("JuegosSuspension").Value)
                listaSancionados.Add(sancion)
            End If
        Next
        hacerCambios = True
    End Sub
End Class