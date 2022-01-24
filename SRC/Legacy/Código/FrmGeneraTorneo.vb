Public Class FrmGeneraTorneo
    Dim jornada As Jornada
    Dim jornadaPartido As JornadaPartido
    Dim valor As Integer
    Dim valor2 As Integer
    Dim cTorneo As ClsTorneo
    Dim cTorneoEquipo As torneoEquipo

    Friend listaJornadas As New ArrayList
    Friend listaNomEquipos As New ArrayList
    Friend listaIdEquipos As New ArrayList
    Friend listaPartidos As ArrayList
    Friend listaJuegos As New ArrayList
    Friend listaTorneoEquipo As New ArrayList

    Private Sub consultar()
        Dim cEquipos As New ClsEquipo
        Dim data As New Object
        data = cEquipos.consultar(1)

        For Each row As DataRow In data.Rows
            listaIdEquipos.Add(Convert.ToInt16(row(0).ToString))
            listaNomEquipos.Add(row(1).ToString())
        Next

        cEquipos = Nothing
    End Sub

    Private Sub generarCalendario()
        Dim numEquipos As Integer
        numEquipos = listaIdEquipos.Count

        If (numEquipos Mod 2 <> 0) Then
            listaIdEquipos.Add(0)
            listaNomEquipos.Add("X")
        End If

        Dim mitad As Integer = numEquipos / 2

        Dim nomMover As String
        Dim idMover As Integer
        Dim fecha As String
        fecha = DateTime.Now.ToShortDateString
        For i As Integer = 1 To listaIdEquipos.Count - 1
            jornada = New Jornada
            jornada.idJornada = i
            jornada.nombrePcMod = "Carga Inicial"
            jornada.claUsuarioMod = 0
            jornada.tieneJuegosPendientes = False
            jornada.porJugar = True
            listaPartidos = New ArrayList
            For j As Integer = 0 To mitad - 1
                jornadaPartido = New JornadaPartido
                jornadaPartido.fechaHora = DateTime.Now 'Convert.ToDateTime(fecha + "18:00")
                jornadaPartido.claUsuarioMod = 0
                jornadaPartido.golesEquipo1 = 0
                jornadaPartido.golesEquipo2 = 0
                jornadaPartido.idArbitro = 0
                jornadaPartido.idJornada = i
                jornadaPartido.programado = 0
                jornadaPartido.jugado = False
                jornadaPartido.nombrePcMod = "Carga Inicial"
                jornadaPartido.recibioTarjetaAEquipo1 = False
                jornadaPartido.recibioTarjetaAEquipo2 = False
                jornadaPartido.recibioTarjetaREquipo1 = False
                jornadaPartido.recibioTarjetaREquipo2 = False
                jornadaPartido.idEquipo1 = Convert.ToInt16(listaIdEquipos(j).ToString())
                jornadaPartido.idEquipo2 = Convert.ToInt16(listaIdEquipos(listaNomEquipos.Count - 1 - j).ToString())
                Dim partido(1) As String
                partido(0) = listaNomEquipos(j).ToString()
                partido(1) = listaNomEquipos(listaNomEquipos.Count - 1 - j).ToString()
                listaPartidos.Add(jornadaPartido)
                listaJuegos.Add(partido)
            Next j
            jornada.partidos = listaPartidos
            nomMover = listaNomEquipos(listaNomEquipos.Count - 1).ToString()
            idMover = listaIdEquipos(listaIdEquipos.Count - 1)
            listaNomEquipos.RemoveAt(listaNomEquipos.Count - 1)
            listaIdEquipos.RemoveAt(listaIdEquipos.Count - 1)
            listaNomEquipos.Insert(1, nomMover)
            listaIdEquipos.Insert(1, idMover)
            listaJornadas.Add(jornada)
        Next i

    End Sub

    Private Sub mostrarCalendario()
        Dim Table1 As DataTable
        Table1 = New DataTable("Jornadas")
        Dim Row As DataRow
        Try
            Dim Num As DataColumn = New DataColumn("#")
            Num.DataType = System.Type.GetType("System.Int16")
            Table1.Columns.Add(Num)
            Dim Jornada As DataColumn = New DataColumn("Jornada")
            Jornada.DataType = System.Type.GetType("System.String")
            Jornada.ReadOnly = True
            Table1.Columns.Add(Jornada)

            For Each jor As Jornada In listaJornadas
                Row = Table1.NewRow()
                Row.Item("#") = jor.idJornada
                Row.Item("Jornada") = "Jornada " + jor.idJornada.ToString()
                Table1.Rows.Add(Row)
            Next

        Catch
        End Try
        DataGridView1.DataSource = Table1
        DataGridView1.Columns(0).Width = 40
        DataGridView1.Columns(1).Width = 120
        DataGridView1.CurrentRow.Selected = True
    End Sub

    Private Sub mostrarPartidosJornada(ByVal num As Integer)
        Dim Table1 As DataTable
        Dim jor As Jornada
        ' Dim jorPar As JornadaPartido
        Dim par(1) As String
        Table1 = New DataTable("Partidos")
        Dim descansa As String
        Dim flag As Boolean = False
        Dim Row As DataRow
        Try
            Dim Partido As DataColumn = New DataColumn("Partido")
            Partido.DataType = System.Type.GetType("System.String")
            Table1.Columns.Add(Partido)
            Table1.Columns("Partido").ReadOnly = True
            Dim Partido1 As DataColumn = New DataColumn("vs")
            Partido.DataType = System.Type.GetType("System.String")
            Table1.Columns.Add(Partido1)
            Table1.Columns("vs").ReadOnly = True

            jor = listaJornadas(num)

            For Each jorPar As JornadaPartido In jor.partidos
                If (jorPar.idEquipo1 = 0) Then
                    descansa = obtenerNombre(jorPar.idEquipo2) 'jorPar.idEquipo2
                    'descansa = par(1)
                    flag = True
                    Continue For
                ElseIf (jorPar.idEquipo2 = 0) Then
                    descansa = obtenerNombre(jorPar.idEquipo1) 'jorPar.idEquipo1
                    'descansa = par(1)
                    flag = True
                    Continue For
                Else
                    Row = Table1.NewRow()
                    'Row.Item("Partido") = par(0) + " - " + par(1)
                    Row.Item("Partido") = obtenerNombre(jorPar.idEquipo1) 'jorPar.idEquipo1 
                    Row.Item("vs") = obtenerNombre(jorPar.idEquipo2) 'jorPar.idEquipo2 
                    Table1.Rows.Add(Row)
                End If
            Next

            If (flag) Then
                Row = Table1.NewRow()
                'Row.Item("Partido") = "Descansa " + descansa
                Row.Item("Partido") = "Descansa "
                Row.Item("vs") = descansa
                Table1.Rows.Add(Row)
            End If

        Catch
        End Try
        DataGridView2.DataSource = Table1
        DataGridView2.Columns(0).Width = 165
        DataGridView2.Columns(1).Width = 165
        'DataGridView2.AutoResizeColumn(0)
        'DataGridView2.AutoResizeColumn(1)
    End Sub

    Private Function obtenerNombre(ByVal idEquipo As Integer) As String
        Dim cont As Integer = 0
        For Each id As Integer In listaIdEquipos
            If (listaIdEquipos(cont) = idEquipo) Then
                Exit For
            End If
            cont = cont + 1
        Next
        obtenerNombre = listaNomEquipos(cont).ToString()
    End Function

    Private Sub GuardarTorneo()
        Me.cTorneo = New ClsTorneo
        Me.cTorneo.nombrePcMod = "cargaInicial"
        Me.cTorneo.nombre = Me.txtNombre.Text
        Me.cTorneo.claUsuarioMod = 0
        Me.cTorneo.RegistrarTorneo() 'SE COMENTA TEMPORALMENTE PARA GENERAR TORNEO EXCELENCIA OPERACIONAL 2016
        'Me.cTorneo.idTorneo = 5 'Seteamos el Id del Torneo 5 para que se generen las jornadas sobre este 

        Dim cEquipos As New ClsEquipo
        Dim data As New Object
        data = cEquipos.consultar(1)
        listaIdEquipos = New ArrayList
        For Each row As DataRow In data.Rows
            listaIdEquipos.Add(Convert.ToInt16(row(0).ToString))
        Next

        For Each jor As Jornada In listaJornadas
            jor.idTorneo = Me.cTorneo.idTorneo
            jor.registrar()
            For Each jorPar As JornadaPartido In jor.partidos
                jorPar.idTorneo = Me.cTorneo.idTorneo
                jorPar.idJornada = jor.idJornada
                jorPar.registrar()
            Next
        Next

        For Each equi As Integer In listaIdEquipos
            Me.cTorneoEquipo = New torneoEquipo
            Me.cTorneoEquipo.idTorneo = Me.cTorneo.idTorneo
            Me.cTorneoEquipo.idEquipo = equi
            Me.cTorneoEquipo.idJornada = 1
            Me.cTorneoEquipo.partidosJugados = 0
            Me.cTorneoEquipo.partidosGanados = 0
            Me.cTorneoEquipo.partidosEmpatados = 0
            Me.cTorneoEquipo.partidosPerdidos = 0
            Me.cTorneoEquipo.golesFavor = 0
            Me.cTorneoEquipo.golesContra = 0
            Me.cTorneoEquipo.diferenciaGoles = 0
            Me.cTorneoEquipo.puntos = 0
            Me.cTorneoEquipo.puntosFairPlay = 0
            Me.cTorneoEquipo.puntosDescontadosFairPlay = 0
            Me.cTorneoEquipo.puntosDescontadosJunta = 0
            Me.cTorneoEquipo.claUsuarioMod = 0
            Me.cTorneoEquipo.nombrePcMod = "cargaInicial"
            If (Me.cTorneoEquipo.idEquipo <> 0) Then
                Me.cTorneoEquipo.registrar()
            End If
        Next

        MessageBox.Show("El torneo fue generado exitosamente")
        Me.Close()
        'Dim frmVerTorneo As New FrmVerTorneo
        'frmVerTorneo.MdiParent = Me.ParentForm
        'frmVerTorneo.Show()
    End Sub

    Private Sub FrmGeneraTorneo_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        consultar()
        ListBox1.DataSource = listaNomEquipos
    End Sub

    Private Sub FrmGeneraTorneo_FormClosing(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles MyBase.FormClosing
        jornada = Nothing
        jornadaPartido = Nothing
    End Sub

    Private Sub btnGeneraCalendario_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnGeneraCalendario.Click
        generarCalendario()
        mostrarCalendario()
        mostrarPartidosJornada(1)
        btnGuardar.Enabled = True
        btnGeneraCalendario.Enabled = False
    End Sub

    Private Sub btnCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCancelar.Click
        Me.Close()
    End Sub

    Private Sub DataGridView1_CellClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles DataGridView1.CellClick
        Dim ren As Integer
        ren = DataGridView1.CurrentRow.Index
        mostrarPartidosJornada(ren)
        valor = DataGridView1.CurrentRow.Index
        If (DataGridView1.CurrentRow.Cells("#").Value.ToString() <> String.Empty) Then
            valor2 = Convert.ToInt16(DataGridView1.CurrentRow.Cells("#").Value)
        End If
    End Sub

    Private Sub DataGridView1_CellEndEdit(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles DataGridView1.CellEndEdit
        Dim cambio As Integer
        Dim jorn As Jornada
        If (DataGridView1.CurrentRow.Cells("#").Value.ToString() <> String.Empty) Then
            If (Convert.ToInt16(DataGridView1.CurrentRow.Cells("#").Value) <= listaJornadas.Count And Convert.ToInt16(DataGridView1.CurrentRow.Cells("#").Value) >= 1) Then
                jorn = listaJornadas(DataGridView1.CurrentRow.Index)
                cambio = jorn.idJornada
                jorn.idJornada = Convert.ToInt16(DataGridView1.CurrentRow.Cells("#").Value)
                listaJornadas.RemoveAt(DataGridView1.CurrentRow.Index)
                listaJornadas.Insert(DataGridView1.CurrentRow.Index, jorn)
                jorn = listaJornadas(Convert.ToInt16(DataGridView1.CurrentRow.Cells("#").Value) - 1)
                jorn.idJornada = cambio
                listaJornadas.RemoveAt(Convert.ToInt16(DataGridView1.CurrentRow.Cells("#").Value) - 1)
                listaJornadas.Insert(Convert.ToInt16(DataGridView1.CurrentRow.Cells("#").Value) - 1, jorn)
                OrdenarEquipos()
                MessageBox.Show("Se reordenaron las jornadas se cambio la Jornada " + cambio.ToString() + " por la Jornada " + DataGridView1.CurrentRow.Cells("#").Value.ToString() + ".")
                mostrarCalendario()
            Else
                MessageBox.Show("El numero de la jornada debe ser mayor o igual a 1 y menor o igual del total de jornadas (" + listaJornadas.Count.ToString() + "). Favor de verificarlo.", "Error")
                DataGridView1.CurrentRow.Cells("#").Value = valor2
            End If
        Else
            MessageBox.Show("El campo no puede quedar vacio. Favor de verificarlo.", "Error")
            DataGridView1.CurrentRow.Cells("#").Value = valor2
        End If
    End Sub

    Private Sub OrdenarEquipos()
        Dim nuevo As New ArrayList
        Dim ordenada As New ArrayList
        nuevo = listaJornadas
        Dim cont As Integer = 0
        For j As Integer = 1 To nuevo.Count
            For Each jornada In nuevo
                If jornada.idJornada = j Then
                    ordenada.Add(jornada)
                    nuevo.Remove(cont)
                    Exit For
                End If
                cont = cont + 1
            Next
            cont = 0
        Next
        listaJornadas = ordenada
    End Sub

    Private Sub btnGuardar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnGuardar.Click
        If (Me.txtNombre.Text <> String.Empty) Then
            GuardarTorneo()
        Else
            MessageBox.Show("Debe especificar un nombre de torneo. Favor de verificarlo.", "Error")
        End If
    End Sub

    Private Sub DataGridView1_EditingControlShowing(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewEditingControlShowingEventArgs) Handles DataGridView1.EditingControlShowing
        Dim validar As TextBox = CType(e.Control, TextBox)
        AddHandler validar.KeyPress, AddressOf validar_Keypress
    End Sub

    Private Sub validar_Keypress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs)

        ' obtener indice de la columna  
        Dim columna As Integer = DataGridView1.CurrentCell.ColumnIndex

        If columna = 0 Then

            Dim caracter As Char = e.KeyChar

            If Not Char.IsNumber(caracter) And (caracter = ChrW(Keys.Back)) = False Then
                e.KeyChar = Chr(0)
            End If
        End If
    End Sub

    Private Sub FrmGeneraTorneo_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        HabilitaMenu(Me.ParentForm.Menu, "Generar Torneo")
    End Sub
End Class