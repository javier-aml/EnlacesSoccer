Public Class FrmCapturaResultado
    Public IsCargando As Boolean
    Friend Observaciones As String
    Friend listaSancionados As New ArrayList
    Dim listaJugadores As ArrayList
    Dim listaJugadoresEst As ArrayList
    Dim cJornadaPartido As JornadaPartido
    Dim cJornadaPartidoJugador As jornadaPartidoJugador
    Dim cTorneoEquipo1 As torneoEquipo
    Dim cTorneoEquipo2 As torneoEquipo
    Dim cTorneoEquipoJugador As torneoEquipoJugador
    Dim Junta As Boolean
    Dim HacerCambios As Boolean = True
    Dim IconAma As Image = Image.FromFile(Ruta.RUTA_ARCHIVOS_CONFIGURACION + "\soccer-card-yellow.ico")
    Dim IconRoj As Image = Image.FromFile(Ruta.RUTA_ARCHIVOS_CONFIGURACION + "\soccer-card-red.ico")
    Dim IconGol As Image = Image.FromFile(Ruta.RUTA_ARCHIVOS_CONFIGURACION + "\soccer-ball.ico")
    Dim IconSil As Image = Image.FromFile(Ruta.RUTA_ARCHIVOS_CONFIGURACION + "\jugador.ico")

    Private Sub FrmCapturaResultado_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.llenarTorneosActivos()
        If Me.cmbTorneo.SelectedIndex > -1 Then

            Me.llenarJornadasTorneo()

            Me.llenarPartidosPorJornada()

            Me.llenarArbitros()

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
        cTorneo.activo = 1
        tablaTorneos = cTorneo.cargarTorneosActivos()
        Me.cmbTorneo.DataSource = tablaTorneos
        Me.cmbTorneo.DisplayMember = "Nombre"
        Me.cmbTorneo.ValueMember = "IdTorneo"
        Me.IsCargando = False
        'Me.cmbTorneo.SelectedIndex = Me.cmbTorneo.Items.Count - 1
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
        tablaJornadas = cJornada.consultar()
        Me.cmbJornadas.DataSource = tablaJornadas
        Me.cmbJornadas.DisplayMember = "Nombre"
        Me.cmbJornadas.ValueMember = "IdJornada"
        Me.IsCargando = False
    End Sub

    ''' <summary>
    ''' Metodo que uso para llenar los partidos de la jornada y torneo seleccionado.
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub llenarPartidosPorJornada()
        Dim cJornadaPartido As New JornadaPartido
        Dim tablaEquipos As DataTable
        Dim tablaDescansa As DataTable
        Dim dsEquipos As DataSet

        Me.Junta = False
        Me.IsCargando = True
        lblDescansa.Visible = False
        lblEquipoDescansa.Visible = False
        lblEquipoDescansa.Text = String.Empty

        cJornadaPartido.idTorneo = cmbTorneo.SelectedValue
        cJornadaPartido.idJornada = cmbJornadas.SelectedValue
        dsEquipos = cJornadaPartido.consultar()
        tablaEquipos = dsEquipos.Tables(0)
        tablaDescansa = dsEquipos.Tables(1)

        DataGridView3.DataSource = tablaEquipos
        DataGridView3.Columns(0).HeaderText = ""
        DataGridView3.Columns(1).HeaderText = ""
        DataGridView3.Columns(2).HeaderText = ""
        DataGridView3.Columns("IdEquipo1").Visible = False
        DataGridView3.Columns("IdEquipo2").Visible = False
        DataGridView3.Columns("Fecha").Visible = False
        DataGridView3.Columns("Hora").Visible = False
        DataGridView3.Columns(0).Width = 120
        DataGridView3.Columns(1).Width = 60
        DataGridView3.Columns(2).Width = 120
        DataGridView3.Columns(0).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight
        DataGridView3.Columns(1).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        DataGridView3.Columns(2).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft

        If (tablaDescansa.Rows.Count > 0) Then
            lblDescansa.Visible = True
            lblEquipoDescansa.Visible = True
            lblEquipoDescansa.Text = tablaDescansa.Rows.Item(0).Item(0).ToString()
        End If

        Me.IsCargando = False
    End Sub

    ''' <summary>
    ''' Metodo que uso para llenar los arbitros.
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub llenarArbitros()
        Me.IsCargando = True
        Dim cArbitro As New ClsArbitros
        cArbitro.Activo = True
        Dim tablaJornadas As DataTable
        tablaJornadas = cArbitro.Consultar()
        Me.cmbArbitros.DataSource = tablaJornadas
        Me.cmbArbitros.DisplayMember = "Nombre"
        Me.cmbArbitros.ValueMember = "IdArbitro"
        Me.IsCargando = False
    End Sub

    Private Sub cmbJornadas_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbJornadas.SelectedIndexChanged
        'Dim tablaJunta As DataTable
        'Dim cJornadaPartido As New JornadaPartido
        If Me.IsCargando = False Then
            Me.llenarPartidosPorJornada()
            Me.llenarArbitros()
            Me.cargarDatos()
        End If

        'If Me.IsCargando = False Then
        '    cJornadaPartido.idTorneo = cmbTorneo.SelectedValue
        '    cJornadaPartido.idJornada = cmbJornadas.SelectedValue
        '    tablaJunta = cJornadaPartido.consultarJunta()
        '    If (Convert.ToBoolean(tablaJunta.Rows(0).Item("Estatus")) = False) Then
        '        If (MessageBox.Show(Me, tablaJunta.Rows(0).Item("Mensaje").ToString, "Mensaje de Alerta", MessageBoxButtons.YesNo, MessageBoxIcon.Information)) = Windows.Forms.DialogResult.Yes Then
        '            Me.Junta = True
        '            Me.llenarPartidosPorJornada()
        '            Me.llenarArbitros()
        '            Me.cargarDatos()
        '        Else
        '            Me.llenarPartidosPorJornada()
        '            Me.llenarArbitros()
        '            Me.cargarDatos()
        '            '    CerrarPantalla()
        '        End If
        '    Else
        '        Me.llenarPartidosPorJornada()
        '        Me.llenarArbitros()
        '        Me.cargarDatos()
        '    End If
        'End If
    End Sub

    Private Sub cmbTorneo_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbTorneo.SelectedIndexChanged
        If Me.IsCargando = False Then

            Me.llenarJornadasTorneo()

            Me.llenarPartidosPorJornada()

            Me.llenarArbitros()

            Me.cargarDatos()
        End If
    End Sub

    Private Sub FrmCapturaResultado_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        HabilitaMenu(Me.ParentForm.Menu, "Capturar Resultado Partido")
    End Sub

    Private Sub DataGridView3_CellClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles DataGridView3.CellClick
        cargarDatos()
    End Sub

    Private Sub cargarDatos()
        Me.IsCargando = True
        Dim dsEquipos As DataSet
        Dim tablaDatos As DataTable
        Dim tablaEquipo1 As DataTable
        Dim tablaEquipo2 As DataTable
        Dim cJornadaPartido As New JornadaPartido

        cJornadaPartido.idTorneo = cmbTorneo.SelectedValue
        cJornadaPartido.idJornada = cmbJornadas.SelectedValue
        cJornadaPartido.idEquipo1 = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo1").Value.ToString())
        cJornadaPartido.idEquipo2 = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo2").Value.ToString())
        dsEquipos = cJornadaPartido.consultarDatosPartido()
        tablaDatos = dsEquipos.Tables(0)
        tablaEquipo1 = dsEquipos.Tables(1)
        tablaEquipo2 = dsEquipos.Tables(2)

        DataGridView1.DataSource = tablaEquipo1
        DataGridView2.DataSource = tablaEquipo2
        DataGridView1.Columns("IdJugador").Visible = False
        DataGridView2.Columns("IdJugador").Visible = False
        DataGridView1.Columns("NumeroJugador").HeaderText = "No."
        DataGridView1.Columns("Nombre").HeaderText = "Nombre Jugador"
        DataGridView1.Columns("GolesJugador").HeaderText = String.Empty
        DataGridView1.Columns("RecibioTarjetaAmarilla").HeaderText = String.Empty
        DataGridView1.Columns("RecibioTarjetaRoja").HeaderText = String.Empty
        DataGridView1.Columns("Jugo").HeaderText = "Jugó"
        DataGridView2.Columns("NumeroJugador").HeaderText = "No."
        DataGridView2.Columns("Nombre").HeaderText = "Nombre Jugador"
        DataGridView2.Columns("GolesJugador").HeaderText = String.Empty
        DataGridView2.Columns("RecibioTarjetaAmarilla").HeaderText = String.Empty
        DataGridView2.Columns("RecibioTarjetaRoja").HeaderText = String.Empty
        DataGridView2.Columns("Jugo").HeaderText = "Jugó"

        DataGridView1.Columns("NumeroJugador").Width = 30
        DataGridView1.Columns("Nombre").Width = 227
        DataGridView1.Columns("GolesJugador").Width = 30
        DataGridView1.Columns("RecibioTarjetaAmarilla").Width = 30
        DataGridView1.Columns("RecibioTarjetaRoja").Width = 30
        DataGridView1.Columns("Jugo").Width = 42
        DataGridView1.Columns("NumeroJugador").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        DataGridView1.Columns("Nombre").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft
        DataGridView1.Columns("GolesJugador").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        DataGridView1.Columns("RecibioTarjetaAmarilla").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        DataGridView1.Columns("RecibioTarjetaRoja").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        DataGridView1.Columns("Jugo").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        DataGridView2.Columns("NumeroJugador").Width = 30
        DataGridView2.Columns("Nombre").Width = 227
        DataGridView2.Columns("GolesJugador").Width = 30
        DataGridView2.Columns("RecibioTarjetaAmarilla").Width = 30
        DataGridView2.Columns("RecibioTarjetaRoja").Width = 30
        DataGridView2.Columns("Jugo").Width = 42
        DataGridView2.Columns("NumeroJugador").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        DataGridView2.Columns("Nombre").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft
        DataGridView2.Columns("GolesJugador").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        DataGridView2.Columns("RecibioTarjetaAmarilla").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        DataGridView2.Columns("RecibioTarjetaRoja").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        DataGridView2.Columns("Jugo").DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        DataGridView1.Columns("Nombre").ReadOnly = True
        DataGridView2.Columns("Nombre").ReadOnly = True
        DataGridView1.Columns("NumeroJugador").ReadOnly = True
        DataGridView2.Columns("NumeroJugador").ReadOnly = True


        chkAmarillaEquipo1.Checked = tablaDatos.Rows(0).Item("RecibioTarjetaAEquipo1").ToString()
        chkAmarillaEquipo2.Checked = tablaDatos.Rows(0).Item("RecibioTarjetaAEquipo2").ToString()
        chkRojaEquipo1.Checked = tablaDatos.Rows(0).Item("RecibioTarjetaREquipo1").ToString()
        chkRojaEquipo2.Checked = tablaDatos.Rows(0).Item("RecibioTarjetaREquipo2").ToString()
        chkGanaEnPenales1.Checked = tablaDatos.Rows(0).Item("GanaEnPenales1").ToString()
        chkGanaEnPenales2.Checked = tablaDatos.Rows(0).Item("GanaEnPenales2").ToString()
        txtEquipo1.Text = tablaDatos.Rows(0).Item("NombreEquipo1").ToString()
        txtEquipo2.Text = tablaDatos.Rows(0).Item("NombreEquipo2").ToString()
        txtGolesEquipo1.Text = tablaDatos.Rows(0).Item("GolesEquipo1").ToString()
        txtGolesEquipo2.Text = tablaDatos.Rows(0).Item("GolesEquipo2").ToString()
        dtpFechaJuego.Value = Convert.ToDateTime(tablaDatos.Rows(0).Item("Fecha"))
        dtpHora.Value = Convert.ToDateTime(tablaDatos.Rows(0).Item("Hora"))
        Observaciones = tablaDatos.Rows(0).Item("Observaciones").ToString()
        Me.Observaciones = tablaDatos.Rows(0).Item("Observaciones").ToString()
        If (Convert.ToInt16(tablaDatos.Rows(0).Item("IdArbitro")) <> 0) Then
            cmbArbitros.SelectedValue = tablaDatos.Rows(0).Item("IdArbitro")
        End If
        

        Me.IsCargando = False
    End Sub

    Private Sub DataGridView1_CellValueChanged(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles DataGridView1.CellValueChanged
        Dim goles As Integer
        Dim amarillas As Boolean = False
        Dim rojas As Boolean = False
        Dim cont As Integer = listaSancionados.Count
        Dim listaBorrar As New ArrayList
        If (e.ColumnIndex = 2) Then
            For Each row As DataGridViewRow In DataGridView1.Rows
                If (row.Cells("GolesJugador").Value.ToString <> String.Empty) Then
                    goles = goles + Convert.ToInt16(row.Cells("GolesJugador").Value.ToString())
                End If
            Next
            txtGolesEquipo1.Text = goles.ToString()

        ElseIf (e.ColumnIndex = 3) Then
            For Each row As DataGridViewRow In DataGridView1.Rows
                If (Convert.ToBoolean(row.Cells("RecibioTarjetaAmarilla").Value)) Then
                    amarillas = True
                    Exit For
                End If
            Next
            chkAmarillaEquipo1.Checked = amarillas

        ElseIf (e.ColumnIndex = 4) Then
            For Each row As DataGridViewRow In DataGridView1.Rows
                If (Convert.ToBoolean(row.Cells("RecibioTarjetaRoja").Value)) Then
                    rojas = True
                    Exit For
                End If
            Next
            chkRojaEquipo1.Checked = rojas

            If Me.IsCargando = False And Convert.ToBoolean(DataGridView1.CurrentRow.Cells("RecibioTarjetaRoja").Value) Then
                Dim NuevaSancion As New FrmAsignarSancion
                NuevaSancion.idEquipo = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo1").Value)
                NuevaSancion.idJugador = Convert.ToInt16(DataGridView1.CurrentRow.Cells("IdJugador").Value)
                NuevaSancion.idTorneo = cmbTorneo.SelectedValue
                NuevaSancion.idJornada = cmbJornadas.SelectedValue
                NuevaSancion.listaSancionados = Me.listaSancionados
                NuevaSancion.ShowDialog()
                Me.HacerCambios = NuevaSancion.hacerCambios
                Me.listaSancionados = NuevaSancion.listaSancionados
                NuevaSancion.Dispose()
                'If Me.listaSancionados.Count = 0 Then
                '    DataGridView1.CurrentRow.Cells("RecibioTarjetaRoja").Value = False
                '    'HacerCambios = False
                'ElseIf Me.listaSancionados.Count = cont Then
                '    DataGridView1.CurrentRow.Cells("RecibioTarjetaRoja").Value = False
                '    ' HacerCambios = False
                '    'Else
                '    '    HacerCambios = True
                'End If
            End If

            If Me.IsCargando = False And Convert.ToBoolean(DataGridView1.CurrentRow.Cells("RecibioTarjetaRoja").Value) = False Then
                For Each sancion As ClsSancion In listaSancionados
                    If sancion.idJugador = Convert.ToInt16(DataGridView1.CurrentRow.Cells("IdJugador").Value) And sancion.idEquipo = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo1").Value) Then
                        listaBorrar.Add(sancion)
                    End If
                Next
                For Each sancion As ClsSancion In listaBorrar
                    If sancion.idJugador = Convert.ToInt16(DataGridView1.CurrentRow.Cells("IdJugador").Value) And sancion.idEquipo = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo1").Value) Then
                        listaSancionados.Remove(sancion)
                    End If
                Next
            End If
        End If
    End Sub

    Private Sub DataGridView2_CellValueChanged(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles DataGridView2.CellValueChanged
        Dim goles As Integer
        Dim amarillas As Boolean = False
        Dim rojas As Boolean = False
        Dim cont As Integer = listaSancionados.Count
        Dim listaBorrar As New ArrayList

        If (e.ColumnIndex = 2) Then
            For Each row As DataGridViewRow In DataGridView2.Rows
                If (row.Cells("GolesJugador").Value.ToString <> String.Empty) Then
                    goles = goles + Convert.ToInt16(row.Cells("GolesJugador").Value.ToString())
                End If
            Next
            txtGolesEquipo2.Text = goles.ToString()

        ElseIf (e.ColumnIndex = 3) Then
            For Each row As DataGridViewRow In DataGridView2.Rows
                If (Convert.ToBoolean(row.Cells("RecibioTarjetaAmarilla").Value)) Then
                    amarillas = True
                    Exit For
                End If
            Next
            chkAmarillaEquipo2.Checked = amarillas

        ElseIf (e.ColumnIndex = 4) Then
            For Each row As DataGridViewRow In DataGridView2.Rows
                If (Convert.ToBoolean(row.Cells("RecibioTarjetaRoja").Value)) Then
                    rojas = True
                    Exit For
                End If
            Next
            chkRojaEquipo2.Checked = rojas
            If Me.IsCargando = False And Convert.ToBoolean(DataGridView2.CurrentRow.Cells("RecibioTarjetaRoja").Value) Then
                Dim NuevaSancion As New FrmAsignarSancion
                NuevaSancion.idEquipo = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo2").Value)
                NuevaSancion.idJugador = Convert.ToInt16(DataGridView2.CurrentRow.Cells("IdJugador").Value)
                NuevaSancion.idTorneo = cmbTorneo.SelectedValue
                NuevaSancion.idJornada = cmbJornadas.SelectedValue
                NuevaSancion.listaSancionados = Me.listaSancionados
                NuevaSancion.ShowDialog()
                Me.HacerCambios = NuevaSancion.hacerCambios
                Me.listaSancionados = NuevaSancion.listaSancionados
                NuevaSancion.Dispose()
                'If Me.listaSancionados.Count = 0 Then
                '    DataGridView2.CurrentRow.Cells("RecibioTarjetaRoja").Value = False
                'End If
                'If Me.listaSancionados.Count = cont Then
                '    DataGridView2.CurrentRow.Cells("RecibioTarjetaRoja").Value = False
                'End If
            End If
            If Me.IsCargando = False And Convert.ToBoolean(DataGridView2.CurrentRow.Cells("RecibioTarjetaRoja").Value) = False Then
                For Each sancion As ClsSancion In listaSancionados
                    If sancion.idJugador = Convert.ToInt16(DataGridView2.CurrentRow.Cells("IdJugador").Value) And sancion.idEquipo = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo2").Value) Then
                        listaSancionados.Remove(sancion)
                    End If
                Next
                For Each sancion As ClsSancion In listaBorrar
                    If sancion.idJugador = Convert.ToInt16(DataGridView2.CurrentRow.Cells("IdJugador").Value) And sancion.idEquipo = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo1").Value) Then
                        listaSancionados.Remove(sancion)
                    End If
                Next
            End If
        End If
    End Sub

    Private Sub btnObservaciones_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnObservaciones.Click
        Dim NuevaObservacion As New FrmCapturaObservaciones
        NuevaObservacion.idEquipo1 = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo1").Value)
        NuevaObservacion.idEquipo2 = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo2").Value)
        NuevaObservacion.idTorneo = cmbTorneo.SelectedValue
        NuevaObservacion.idJornada = cmbJornadas.SelectedValue
        NuevaObservacion.observaciones = Me.Observaciones
        NuevaObservacion.ShowDialog()
        Me.Observaciones = NuevaObservacion.observaciones
    End Sub

    Private Sub btnCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCancelar.Click
        Me.Close()
    End Sub

    Private Sub btnGuardar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnGuardar.Click
        GuardarDatos()
    End Sub

    Private Sub GuardarDatos()
        cJornadaPartido = New JornadaPartido
        cJornadaPartido.nombrePcMod = "torneoJornadaPartido"
        cJornadaPartido.claUsuarioMod = 3
        cJornadaPartido.golesEquipo1 = Convert.ToInt16(txtGolesEquipo1.Text)
        cJornadaPartido.golesEquipo2 = Convert.ToInt16(txtGolesEquipo2.Text)
        cJornadaPartido.idArbitro = cmbArbitros.SelectedValue
        cJornadaPartido.idJornada = cmbJornadas.SelectedValue
        cJornadaPartido.idTorneo = cmbTorneo.SelectedValue
        cJornadaPartido.jugado = 1
        cJornadaPartido.recibioTarjetaAEquipo1 = chkAmarillaEquipo1.Checked
        cJornadaPartido.recibioTarjetaAEquipo2 = chkAmarillaEquipo2.Checked
        cJornadaPartido.recibioTarjetaREquipo1 = chkRojaEquipo1.Checked
        cJornadaPartido.recibioTarjetaREquipo2 = chkRojaEquipo2.Checked
        cJornadaPartido.ganaEnPenales1 = chkGanaEnPenales1.Checked
        cJornadaPartido.ganaEnPenales2 = chkGanaEnPenales2.Checked
        cJornadaPartido.idEquipo1 = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo1").Value)
        cJornadaPartido.idEquipo2 = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo2").Value)
        cJornadaPartido.observaciones = Me.Observaciones
        cJornadaPartido.actualizar()
        Dim RegistroActual As Integer
        RegistroActual = DataGridView3.CurrentRow.Index

        listaJugadoresEst = New ArrayList
        listaJugadores = New ArrayList
        For Each row As DataGridViewRow In DataGridView1.Rows
            cJornadaPartidoJugador = New jornadaPartidoJugador
            cJornadaPartidoJugador.nombrePcMod = "torneoJornadaPartido"
            cJornadaPartidoJugador.claUsuarioMod = 3
            cJornadaPartidoJugador.idTorneo = cmbTorneo.SelectedValue
            cJornadaPartidoJugador.idJornada = cmbJornadas.SelectedValue
            cJornadaPartidoJugador.idEquipo = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo1").Value)
            cJornadaPartidoJugador.idJugador = Convert.ToInt16(row.Cells("IdJugador").Value)
            cJornadaPartidoJugador.golesJugador = Convert.ToInt16(row.Cells("GolesJugador").Value)
            cJornadaPartidoJugador.recibioTarjetaAmarilla = Convert.ToBoolean(row.Cells("RecibioTarjetaAmarilla").Value)
            cJornadaPartidoJugador.recibioTarjetaRoja = Convert.ToBoolean(row.Cells("RecibioTarjetaRoja").Value)
            cJornadaPartidoJugador.jugo = Convert.ToBoolean(row.Cells("Jugo").Value)
            listaJugadores.Add(cJornadaPartidoJugador)
        Next

        For Each row As DataGridViewRow In DataGridView2.Rows
            cJornadaPartidoJugador = New jornadaPartidoJugador
            cJornadaPartidoJugador.nombrePcMod = "torneoJornadaPartido"
            cJornadaPartidoJugador.claUsuarioMod = 3
            cJornadaPartidoJugador.idTorneo = cmbTorneo.SelectedValue
            cJornadaPartidoJugador.idJornada = cmbJornadas.SelectedValue
            cJornadaPartidoJugador.idEquipo = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo2").Value)
            cJornadaPartidoJugador.idJugador = Convert.ToInt16(row.Cells("IdJugador").Value)
            cJornadaPartidoJugador.golesJugador = Convert.ToInt16(row.Cells("GolesJugador").Value)
            cJornadaPartidoJugador.recibioTarjetaAmarilla = Convert.ToBoolean(row.Cells("RecibioTarjetaAmarilla").Value)
            cJornadaPartidoJugador.recibioTarjetaRoja = Convert.ToBoolean(row.Cells("RecibioTarjetaRoja").Value)
            cJornadaPartidoJugador.jugo = Convert.ToBoolean(row.Cells("Jugo").Value)
            listaJugadores.Add(cJornadaPartidoJugador)
        Next

        For Each jorParJug As jornadaPartidoJugador In listaJugadores
            jorParJug.registrar()
        Next

        For Each sancion As ClsSancion In listaSancionados
            sancion.eliminar()
        Next

        For Each sancion As ClsSancion In listaSancionados
            sancion.registrar()
        Next

        cTorneoEquipo1 = New torneoEquipo
        cTorneoEquipo1.idTorneo = cmbTorneo.SelectedValue
        cTorneoEquipo1.idJornada = cmbJornadas.SelectedValue
        cTorneoEquipo1.idEquipo = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo1").Value)
        cTorneoEquipo1.actualizar()
        cTorneoEquipo1.actualizarJugador()

        cTorneoEquipo2 = New torneoEquipo
        cTorneoEquipo2.idTorneo = cmbTorneo.SelectedValue
        cTorneoEquipo2.idJornada = cmbJornadas.SelectedValue
        cTorneoEquipo2.idEquipo = Convert.ToInt16(DataGridView3.CurrentRow.Cells("IdEquipo2").Value)
        cTorneoEquipo2.actualizar()
        cTorneoEquipo2.actualizarJugador()

        MessageBox.Show("El resultado se guardo exitosamente")
        llenarPartidosPorJornada()
        DataGridView3.Rows(RegistroActual).Selected = True        
        DataGridView3.CurrentCell = DataGridView3.Rows(RegistroActual).Cells(0)
    End Sub

    Private Sub DataGridView1_CellPainting(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellPaintingEventArgs) Handles DataGridView1.CellPainting
        Try
            If e.RowIndex = -1 AndAlso e.ColumnIndex = 3 Then
                e.Paint(e.CellBounds, DataGridViewPaintParts.All And Not DataGridViewPaintParts.ContentForeground)
                e.Graphics.DrawImage(IconAma, e.CellBounds)
                e.Handled = True
            End If
            If e.RowIndex = -1 AndAlso e.ColumnIndex = 4 Then
                e.Paint(e.CellBounds, DataGridViewPaintParts.All And Not DataGridViewPaintParts.ContentForeground)
                e.Graphics.DrawImage(IconRoj, e.CellBounds)
                e.Handled = True
            End If
            If e.RowIndex = -1 AndAlso e.ColumnIndex = 6 Then
                e.Paint(e.CellBounds, DataGridViewPaintParts.All And Not DataGridViewPaintParts.ContentForeground)
                e.Graphics.DrawImage(IconSil, e.CellBounds)
                e.Handled = True
            End If
            If e.RowIndex = -1 AndAlso e.ColumnIndex = 2 Then
                e.Paint(e.CellBounds, DataGridViewPaintParts.All And Not DataGridViewPaintParts.ContentForeground)
                e.Graphics.DrawImage(IconGol, e.CellBounds)
                e.Handled = True
            End If
        Catch ex As Exception
            MsgBox(ex.Message, MsgBoxStyle.Exclamation, Mensaje)
        End Try
    End Sub

    Private Sub DataGridView2_CellPainting(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellPaintingEventArgs) Handles DataGridView2.CellPainting
        If e.RowIndex = -1 AndAlso e.ColumnIndex = 3 Then
            e.Paint(e.CellBounds, DataGridViewPaintParts.All And Not DataGridViewPaintParts.ContentForeground)
            e.Graphics.DrawImage(IconAma, e.CellBounds)
            e.Handled = True
        End If
        If e.RowIndex = -1 AndAlso e.ColumnIndex = 4 Then
            e.Paint(e.CellBounds, DataGridViewPaintParts.All And Not DataGridViewPaintParts.ContentForeground)
            e.Graphics.DrawImage(IconRoj, e.CellBounds)
            e.Handled = True
        End If
        If e.RowIndex = -1 AndAlso e.ColumnIndex = 6 Then
            e.Paint(e.CellBounds, DataGridViewPaintParts.All And Not DataGridViewPaintParts.ContentForeground)
            e.Graphics.DrawImage(IconSil, e.CellBounds)
            e.Handled = True
        End If
        If e.RowIndex = -1 AndAlso e.ColumnIndex = 2 Then
            e.Paint(e.CellBounds, DataGridViewPaintParts.All And Not DataGridViewPaintParts.ContentForeground)
            e.Graphics.DrawImage(IconGol, e.CellBounds)
            e.Handled = True
        End If
    End Sub

    Private Sub validar_Keypress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs)
        'Obtener indice de la columna
        Dim columna As Integer = DataGridView1.CurrentCell.ColumnIndex

        If columna = 2 Then
            Dim caracter As Char = e.KeyChar
            If Not Char.IsNumber(caracter) And (caracter = ChrW(Keys.Back)) = False Then
                e.KeyChar = Chr(0)
            End If
        End If
    End Sub

    Private Sub validar_Keypress2(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs)
        'Obtener indice de la columna
        Dim columna As Integer = DataGridView2.CurrentCell.ColumnIndex

        If columna = 2 Then
            Dim caracter As Char = e.KeyChar
            If Not Char.IsNumber(caracter) And (caracter = ChrW(Keys.Back)) = False Then
                e.KeyChar = Chr(0)
            End If
        End If
    End Sub

    Private Sub DataGridView1_CurrentCellDirtyStateChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DataGridView1.CurrentCellDirtyStateChanged
        If DataGridView1.IsCurrentCellDirty Then
            DataGridView1.CommitEdit(DataGridViewDataErrorContexts.Commit)
        End If
        If HacerCambios = False Then
            DataGridView1.CurrentRow.Cells("RecibioTarjetaRoja").Value = False
            DataGridView1.RefreshEdit()
        End If
    End Sub

    Private Sub DataGridView2_CurrentCellDirtyStateChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DataGridView2.CurrentCellDirtyStateChanged
        If DataGridView2.IsCurrentCellDirty Then
            DataGridView2.CommitEdit(DataGridViewDataErrorContexts.Commit)
        End If
        If HacerCambios = False Then
            DataGridView2.CurrentRow.Cells("RecibioTarjetaRoja").Value = False
            DataGridView2.RefreshEdit()
        End If
    End Sub

    Private Sub txtGolesEquipo1_KeyPress(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtGolesEquipo1.KeyPress
        Dim caracter As Char = e.KeyChar

        If Not Char.IsNumber(caracter) And (caracter = ChrW(Keys.Back)) = False Then
            e.KeyChar = Chr(0)
        End If
    End Sub

    Private Sub txtGolesEquipo2_KeyPress(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtGolesEquipo2.KeyPress
        Dim caracter As Char = e.KeyChar

        If Not Char.IsNumber(caracter) And (caracter = ChrW(Keys.Back)) = False Then
            e.KeyChar = Chr(0)
        End If
    End Sub

    Private Sub DataGridView1_EditingControlShowing(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewEditingControlShowingEventArgs) Handles DataGridView1.EditingControlShowing
        Dim validar As TextBox = CType(e.Control, TextBox)
        AddHandler validar.KeyPress, AddressOf validar_Keypress
    End Sub

    Private Sub DataGridView2_EditingControlShowing(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewEditingControlShowingEventArgs) Handles DataGridView2.EditingControlShowing
        Dim validar As TextBox = CType(e.Control, TextBox)
        AddHandler validar.KeyPress, AddressOf validar_Keypress2
    End Sub

    Private Sub DataGridView3_CellEnter(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles DataGridView3.CellEnter
        cargarDatos()
    End Sub

    Private Sub chkGanaEnPenales2_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkGanaEnPenales2.CheckedChanged
        If Me.chkGanaEnPenales1.Checked = True And Me.chkGanaEnPenales2.Checked = True Then
            MsgBox("Solo puede haber un ganador, debe seleccionar solo uno favor de verificar", MsgBoxStyle.Exclamation)
            Me.chkGanaEnPenales2.Checked = False
        End If
    End Sub

    Private Sub chkGanaEnPenales1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkGanaEnPenales1.CheckedChanged
        If Me.chkGanaEnPenales2.Checked = True And Me.chkGanaEnPenales1.Checked = True Then
            MsgBox("Solo puede haber un ganador, debe seleccionar solo uno favor de verificar", MsgBoxStyle.Exclamation)
            Me.chkGanaEnPenales1.Checked = False
        End If
    End Sub

    

    Private Sub DataGridView3_CellContentClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles DataGridView3.CellContentClick

    End Sub
End Class