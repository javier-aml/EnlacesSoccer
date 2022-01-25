Public Class FrmRelEquipoJugador


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

    Public IdEquipoSeleccionado As Integer = 0
    Public IdTorneoSeleccionado As Integer = 0

    ''' <summary>
    ''' Variable que uso para ver si se hizo algun movimiento.
    ''' </summary>
    ''' <remarks></remarks>
    Public tieneCambios As Boolean = False

    ''' <summary>
    ''' Evento que llama al catalogo de jugadores, para que el usuario registre, en caso de que no exista algun jugador.
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    ''' <remarks></remarks>
    Private Sub ToolStripButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        'llama al catalogo de jugadores
        sender.checked = True
        Dim frmJugador As New FrmJugadores
        frmJugador.MdiParent = Me.MdiParent
        frmJugador.Show()
        Me.llenarInformacionDeBD()
    End Sub

   

    ''' <summary>
    ''' Agrega los jugadores seleccionados al equipo.
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    ''' <remarks></remarks>
    Private Sub Button1_Click(sender As System.Object, e As System.EventArgs) Handles Button1.Click
        'agrega los jugadores seleccionados al equipo
        Dim ban As Boolean = False
        If Me.dgJugadores.SelectedRows.Count > 0 Then
            Me.validarCantidadJugadores(ClsEnumerados.ETipoRelacion.asociar)
            For Each jugador As DataGridViewRow In Me.dgJugadores.SelectedRows
                Dim idJugador As Integer = jugador.Cells("IdJugador").Value
                For Each drJugador As DataRow In Me.dtJugadores.Rows
                    If drJugador("IdJugador") = idJugador And drJugador("EsLibre") = 1 Then
                        drJugador("EsLibre") = 0
                        drJugador("Situación") = "Asignado - " + Me.cmbEquipos.Text
                        drJugador("IdEquipo") = Me.cmbEquipos.SelectedValue
                        drJugador("Número") = 0
                        ban = True
                        Me.tieneCambios = True
                    End If
                Next
            Next
            If ban Then
                Me.llenarJugadoresDisponibles()
                Me.llenarJugadoresEquipo()
            End If
        End If
    End Sub

    Private Sub validarCantidadJugadores(ByVal tipoValidacion As ClsEnumerados.ETipoRelacion)
        Select Case tipoValidacion
            Case ClsEnumerados.ETipoRelacion.asociar
                Dim NoJugadoresAAgregar As Integer = Me.dgJugadores.SelectedRows.Count
                If (NoJugadoresAAgregar + Me.dgEquipoJugadores.RowCount) > 22 Then
                    MsgBox("Al realizar esta relacion, el equipo quedara con mas de 22 jugadores!.")
                End If
            Case ClsEnumerados.ETipoRelacion.desAsociar
                Dim NoJugadoresADesAsociar As Integer = Me.dgEquipoJugadores.SelectedRows.Count
                If (Me.dgEquipoJugadores.RowCount - NoJugadoresADesAsociar) > 22 Then
                    MsgBox("Al realizar esta relacion, el equipo quedara con mas de 22 jugadores!.")
                End If
        End Select

        
    End Sub

    ''' <summary>
    ''' quita los jugadores seleccionados del equipo y los deja como ajentes libres para el torneo en cuestion.
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    ''' <remarks></remarks>
    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        'quita los jugadores seleccionados del equipo
        If Me.dgEquipoJugadores.SelectedRows.Count > 0 Then
            Me.validarCantidadJugadores(ClsEnumerados.ETipoRelacion.desAsociar)
            For Each jugador As DataGridViewRow In Me.dgEquipoJugadores.SelectedRows
                Dim idJugador As Integer = jugador.Cells("IdJugador").Value
                For Each drJugador As DataRow In Me.dtJugadores.Rows
                    If drJugador("IdJugador") = idJugador Then
                        drJugador("EsLibre") = 1
                        drJugador("IdEquipo") = 0
                        drJugador("Situación") = "Libre"
                        drJugador("Número") = 0
                        Me.tieneCambios = True
                    End If
                Next
            Next
            Me.llenarJugadoresDisponibles()
            Me.llenarJugadoresEquipo()
        End If
    End Sub

    ''' <summary>
    ''' Evento que se dispara al cargar la forma
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    ''' <remarks></remarks>
    Private Sub FrmRelEquipoJugador_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.llenarInformacionDeBD()
    End Sub

    Private Sub llenarInformacionDeBD()
        Me.IsCargando = True
        Me.llenarTorneosActivos()
        If Me.cmbTorneo.SelectedIndex > -1 Then
            'llenar el combo de equipos
            Me.llenarEquipos()
            'llena los grids de jugadores
            Me.llenarGrids()
        End If
        Me.IsCargando = False
        Me.llenarEquipos()
        'llena los grids de jugadores
        Me.llenarGrids()
        Me.IdTorneoSeleccionado = Me.cmbTorneo.SelectedValue
        Me.IdEquipoSeleccionado = Me.cmbEquipos.SelectedValue
    End Sub

    Private Sub ComboBox1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbEquipos.SelectedIndexChanged
        'aqui debo llenar otra vez los los grids.
        If Not IsCargando Then
            If Me.tieneCambios Then
                If MsgBox("Tiene cambios pendientes desea Guardarlos?", MsgBoxStyle.YesNo) = MsgBoxResult.Yes Then
                    Me.Guardar(Me.IdEquipoSeleccionado, Me.IdTorneoSeleccionado)
                End If
                Me.tieneCambios = False
            End If
            Me.IdEquipoSeleccionado = Me.cmbEquipos.SelectedValue
            Me.IdTorneoSeleccionado = Me.cmbTorneo.SelectedValue
            Me.llenarGrids()
            Me.TextBox1.Text = String.Empty
        End If
    End Sub

    ''' <summary>
    ''' Metodo que uso para obtener los jugadores disponibles y mostrarlos en su respectivo grid.
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub llenarGrids()
        If Not IsCargando Then
            If Me.cmbEquipos.SelectedIndex > -1 Then
                Dim cJugador As New ClsEquipo
                dtJugadores = Nothing
                dtJugadores = cJugador.dameJugadores(Me.cmbEquipos.SelectedValue, Me.cmbTorneo.SelectedValue)
                'llena los jugadores que estan disponibles para el torneo
                Me.llenarJugadoresDisponibles()
                'llena el grid con los jugadores que ya estan dentro del equipo
                Me.llenarJugadoresEquipo()
            End If
        End If
    End Sub

    ''' <summary>
    ''' metodo para llenar los equipos activos.
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub llenarEquipos()

        Dim cEquipos As New ClsEquipo
        Dim tablaEquipos As DataTable
        tablaEquipos = cEquipos.consultar(1) 'traer los que esten activos
        Me.cmbEquipos.DataSource = tablaEquipos
        Me.cmbEquipos.DisplayMember = "Nombre equipo"
        Me.cmbEquipos.ValueMember = "IdEquipo"


    End Sub

    ''' <summary>
    ''' Metodo que uso para llenar los torneos activos.
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub llenarTorneosActivos()
        Dim cTorneo As New ClsTorneo
        Dim tablaTorneos As DataTable
        cTorneo.activo = 1
        tablaTorneos = cTorneo.cargarTorneosActivos()
        Me.cmbTorneo.DataSource = tablaTorneos
        Me.cmbTorneo.DisplayMember = "Nombre"
        Me.cmbTorneo.ValueMember = "IdTorneo"
        Me.cmbTorneo.SelectedIndex = Me.cmbTorneo.Items.Count - 1
    End Sub

    ''' <summary>
    ''' metodo que utilizo para llenar los jugadores que aun estan disponibles para el torneo.
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub llenarJugadoresDisponibles()
        If Not IsCargando Then
            Me.dtJugadores.Select("", "EsLibre DESC, [Nombre jugador] ")

            If Me.TextBox1.Text = String.Empty Then
                Me.dgJugadores.DataSource = Me.filtrarInformacion(Me.dtJugadores, String.Empty, "EsLibre DESC, [Nombre jugador] ")
            Else
                Me.dgJugadores.DataSource = Me.filtrarInformacion(Me.dtJugadores, "[Nombre jugador] LIKE '%" + Me.TextBox1.Text + "%'", "EsLibre DESC, [Nombre jugador] ")
            End If
            Me.dgJugadores.Refresh()
            'Dim dtAux As DataTable = Me.dgJugadores.DataSource
            'dtAux = dt.Clone()
            'dtAux.Merge(dt, True)

            'Me.dgJugadores.DataSource = dtAux
            Me.dgJugadores.Columns("EsLibre").Visible = False
            Me.dgJugadores.Columns("IdJugador").Visible = False
            Me.dgJugadores.Columns("IdEquipo").Visible = False
            Me.dgJugadores.Columns("Número").Visible = False




        End If
    End Sub

    ''' <summary>
    ''' metodo que de la tabla de jugadores selecciona los que ya pertenecen a este equipo para este torneo.
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub llenarJugadoresEquipo()
        If Not IsCargando Then
            Me.dgEquipoJugadores.DataSource = Me.filtrarInformacion(Me.dtJugadores, "IdEquipo=" + Me.cmbEquipos.SelectedValue.ToString(), "[Nombre jugador] ")
            Me.dgEquipoJugadores.Refresh()
            Me.dgEquipoJugadores.Columns("EsLibre").Visible = False
            Me.dgEquipoJugadores.Columns("IdJugador").Visible = False
            Me.dgEquipoJugadores.Columns("Situación").Visible = False
            Me.dgEquipoJugadores.Columns("IdEquipo").Visible = False

            Me.dgEquipoJugadores.Columns("Nombre jugador").ReadOnly = True
            Me.dgEquipoJugadores.Columns("Número").Width = 70




        End If
    End Sub

    Private Function filtrarInformacion(ByVal registros As DataTable, ByVal filtro As String, ByVal ordenamiento As String) As DataTable
        Dim dt As DataTable
        dt = registros.Clone()
        Dim dr As DataRow() = registros.Select(filtro, ordenamiento)
        For Each r As DataRow In dr
            dt.ImportRow(r)
        Next
        Return dt
    End Function

    Private Sub cmbTorneo_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbTorneo.SelectedIndexChanged
        If Not IsCargando Then
            If Me.tieneCambios Then
                If MsgBox("Tiene cambios pendientes desea Guardarlos?", MsgBoxStyle.YesNo) = MsgBoxResult.Yes Then
                    Me.Guardar(Me.IdEquipoSeleccionado, Me.IdTorneoSeleccionado)
                End If
                Me.tieneCambios = False
            End If
            'llenar el combo de equipos
            Me.llenarEquipos()
            'llena los grids de jugadores
            Me.llenarGrids()
            Me.IdTorneoSeleccionado = Me.cmbTorneo.SelectedValue
            Me.IdEquipoSeleccionado = Me.cmbEquipos.SelectedValue
        End If

    End Sub

    Private Sub dgJugadores_CellFormatting(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellFormattingEventArgs) Handles dgJugadores.CellFormatting
        If Me.dgJugadores.Columns(e.ColumnIndex).Name = "Situación" Then
            If e.Value.ToString.Contains("Asignado") Then
                Me.dgJugadores.Rows(e.RowIndex).DefaultCellStyle.BackColor = Drawing.Color.LightPink
            ElseIf e.Value.ToString.Contains("Libre") Then
                Me.dgJugadores.Rows(e.RowIndex).DefaultCellStyle.BackColor = Drawing.Color.LightGreen
            End If
        End If

    End Sub

    Private Sub BtnGuardar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnGuardar.Click
        'Guarda la relacion establecida
        Guardar(Me.cmbEquipos.SelectedValue, Me.cmbTorneo.SelectedValue)
    End Sub

    Private Sub Guardar(ByVal idEquipo As Integer, ByVal IdTorneo As Integer)
        Dim cEquipo As New ClsEquipo

        Try
            cEquipo.idEquipo = idEquipo
            cEquipo.idTorneo = IdTorneo

            'If cEquipo.ValidarInformacionHistorica() = False Then
            '    MsgBox("No puede modificarse la información del Torneo/Equipo seleccionados porque afecta a la información Historica de otros Torneos")
            '    Exit Sub
            'End If
            If ValidarNumerosJugadores(idEquipo) Then
                'cEquipo.EliminarJugadores(idEquipo, IdTorneo)
                For Each renglon As DataRow In Me.filtrarInformacion(Me.dtJugadores, "EsLibre = 0 AND IdEquipo = " + idEquipo.ToString(), "[Nombre jugador] ").Rows
                    cEquipo.idJugador = renglon("IdJugador")
                    cEquipo.numero = renglon("Número")
                    cEquipo.claUsuarioMod = 1
                    cEquipo.nombrePcMod = "5"
                    cEquipo.registrarJugador()
                Next
                MsgBox("Relacion equipo/jugadores fue registrada existosamente!")
                Me.tieneCambios = False
            Else
                MsgBox("Existe uno o mas jugadores que tienen el mismo número!")
            End If
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub


    Private Function ValidarNumerosJugadores(ByVal idEquipo As Integer) As Boolean
        Dim dt As DataTable
        Dim totalJugadores As Integer
        Dim NumerosDiferentes As Integer
        dt = Me.filtrarInformacion(Me.dtJugadores, "EsLibre = 0 AND IdEquipo = " + idEquipo.ToString(), "[Nombre jugador] ")
        totalJugadores = dt.Rows.Count
        NumerosDiferentes = SelectDistinct(dt, New String() {"Número"}).Rows.Count

        Return totalJugadores = NumerosDiferentes
    End Function

   

    Friend Function SelectDistinct(ByVal SourceTable As DataTable, ByVal ParamArray FieldNames() As String) As DataTable
        Dim lastValues() As Object
        Dim newTable As DataTable

        If FieldNames Is Nothing OrElse FieldNames.Length = 0 Then
            Throw New ArgumentNullException("FieldNames")
        End If

        lastValues = New Object(FieldNames.Length - 1) {}
        newTable = New DataTable

        For Each field As String In FieldNames
            newTable.Columns.Add(field, SourceTable.Columns(field).DataType)
        Next

        For Each Row As DataRow In SourceTable.Select("", String.Join(", ", FieldNames))
            If Not fieldValuesAreEqual(lastValues, Row, FieldNames) Then
                newTable.Rows.Add(createRowClone(Row, newTable.NewRow(), FieldNames))

                setLastValues(lastValues, Row, FieldNames)
            End If
        Next

        Return newTable
    End Function

    Private Function fieldValuesAreEqual(ByVal lastValues() As Object, ByVal currentRow As DataRow, ByVal fieldNames() As String) As Boolean
        Dim areEqual As Boolean = True

        For i As Integer = 0 To fieldNames.Length - 1
            If (lastValues(i) Is Nothing OrElse Not lastValues(i).Equals(currentRow(fieldNames(i)))) Or lastValues(i) = "0" Then
                areEqual = False
                Exit For
            End If
        Next

        Return areEqual
    End Function

    Private Function createRowClone(ByVal sourceRow As DataRow, ByVal newRow As DataRow, ByVal fieldNames() As String) As DataRow
        For Each field As String In fieldNames
            newRow(field) = sourceRow(field)
        Next

        Return newRow
    End Function
    Private Sub setLastValues(ByVal lastValues() As Object, ByVal sourceRow As DataRow, ByVal fieldNames() As String)
        For i As Integer = 0 To fieldNames.Length - 1
            lastValues(i) = sourceRow(fieldNames(i))
        Next
    End Sub




    Private Sub BtnCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnCancelar.Click
        Me.Close()

    End Sub

    Private Sub TextBox1_TextChanged_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBox1.TextChanged
        If Not IsCargando Then
            Me.dgJugadores.DataSource = Me.filtrarInformacion(Me.dtJugadores, "[Nombre jugador] LIKE '%" + Me.TextBox1.Text + "%'", "EsLibre DESC, [Nombre jugador] ") ' Me.dtJugadores.Select("[Nombre jugador] LIKE '%" + Me.TextBox1.Text + "%'", "EsLibre DESC, [Nombre jugador] ")
            Me.dgJugadores.Columns("EsLibre").Visible = False
        End If
    End Sub

    Private Sub NuevoToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles NuevoToolStripMenuItem.Click
        If Me.tieneCambios Then
            If MsgBox("Tiene cambios pendientes desea Guardarlos?", MsgBoxStyle.YesNo) = MsgBoxResult.Yes Then
                Me.Guardar(Me.IdEquipoSeleccionado, Me.IdTorneoSeleccionado)
            End If
            Me.tieneCambios = False
        End If

        AccionJugador.Accion = ClsAccion.Acciones.Nuevo
        Dim NuevoJugador As New FrmNuevoJugador
        NuevoJugador.ShowDialog()
        Me.llenarGrids()
    End Sub

    Private Sub ToolStripMenuItem1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripMenuItem1.Click
        If Me.tieneCambios Then
            If MsgBox("Tiene cambios pendientes desea Guardarlos?", MsgBoxStyle.YesNo) = MsgBoxResult.Yes Then
                Me.Guardar(Me.IdEquipoSeleccionado, Me.IdTorneoSeleccionado)
            End If
            Me.tieneCambios = False
        End If

        AccionJugador.Accion = ClsAccion.Acciones.Modificar
        Jugador.IdJugador = ObtieneId(Me.dgJugadores.CurrentRow.Cells("IdJugador").Value, 0)
        Dim NuevoJugador As New FrmNuevoJugador
        NuevoJugador.ShowDialog()
        Me.llenarGrids()
    End Sub

    Private Sub FrmRelEquipoJugador_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        HabilitaMenu(Me.ParentForm.Menu, "Configurar plantilla de equipos")
    End Sub

    Private Sub dgJugadores_DataBindingComplete(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewBindingCompleteEventArgs) Handles dgJugadores.DataBindingComplete
        Me.dgJugadores.ClearSelection()

    End Sub




    Private Sub dgEquipoJugadores_EditingControlShowing(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewEditingControlShowingEventArgs) Handles dgEquipoJugadores.EditingControlShowing
        Dim validar As TextBox = CType(e.Control, TextBox)
        validar.MaxLength = 2


        AddHandler validar.KeyPress, AddressOf dgEquipoJugadores_KeyPress
    End Sub
    Private Sub dgEquipoJugadores_KeyPress(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyPressEventArgs)
        ' obtener indice de la columna  
        Dim columna As Integer = dgEquipoJugadores.CurrentCell.ColumnIndex
        If columna = 1 Then
            Dim caracter As Char = e.KeyChar
            If Not Char.IsNumber(caracter) And (caracter = ChrW(Keys.Back)) = False Then
                e.KeyChar = Chr(0)
            End If
        End If

    End Sub

    Private Sub dgEquipoJugadores_CellEndEdit(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgEquipoJugadores.CellEndEdit
        If e.ColumnIndex = 1 Then
            Dim resutlados() As DataRow
            resutlados = Me.dtJugadores.Select("Número =" + Me.dgEquipoJugadores.Rows(e.RowIndex).Cells("Número").Value.ToString() + "AND IdJugador <> " + Me.dgEquipoJugadores.Rows(e.RowIndex).Cells("IdJugador").Value.ToString() + " AND IdEquipo =" + Me.dgEquipoJugadores.Rows(e.RowIndex).Cells("IdEquipo").Value.ToString())
            If resutlados.Length > 0 Then
                MsgBox("EL número " + Me.dgEquipoJugadores.Rows(e.RowIndex).Cells("Número").Value.ToString() + " ya fue asignado a otro jugador. Favor de cambiarlo.")
                Me.dgEquipoJugadores.Rows(e.RowIndex).Cells("Número").Value = 0
            Else
                Dim idequipo As Integer = Me.dgEquipoJugadores.Rows(e.RowIndex).Cells("IdEquipo").Value
                Dim idJugador As Integer = Me.dgEquipoJugadores.Rows(e.RowIndex).Cells("IdJugador").Value
                For Each renglon As DataRow In Me.dtJugadores.Rows 'Me.filtrarInformacion(Me.dtJugadores, "EsLibre = 0 AND IdEquipo = " + idequipo.ToString(), "[Nombre jugador] ").Rows
                    If renglon("IdJugador") = idJugador Then
                        renglon("Número") = Me.dgEquipoJugadores.Rows(e.RowIndex).Cells("Número").Value
                    End If
                Next
            End If
        End If
    End Sub

    Private Sub BtnReporteCredenciales_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnReporteCredenciales.Click
        Dim frmRptCredenciales As New FrmReportViewerSSRS("Credenciales")
        frmRptCredenciales.pTipoReporte = ClsEnumerados.ETipoReporte.Reporte_Credenciales
        frmRptCredenciales.pIdTorneo = cmbTorneo.SelectedValue
        frmRptCredenciales.pIdEquipo = Me.cmbEquipos.SelectedValue
        frmRptCredenciales.ShowDialog()
        frmRptCredenciales.Dispose()
    End Sub
End Class