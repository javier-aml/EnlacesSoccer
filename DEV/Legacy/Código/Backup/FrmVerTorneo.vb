Public Class FrmVerTorneo

    ''' <summary>
    ''' variable que uso para saber si la pantalla esta en proceso de cargado o no.
    ''' </summary>
    ''' <remarks></remarks>
    Public IsCargando As Boolean
    Dim jornadaPartido As JornadaPartido
    Dim flag As Boolean = True
    Dim flagMoficado As Boolean
    Friend listaPartidos As ArrayList

    Private Sub FrmVerTorneo_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.llenarTorneosActivos()
        If Me.cmbTorneo.SelectedIndex > -1 Then
            'llena el combo de jornadas
            Me.llenarJornadasTorneo()

            'llena el grid de partidos
            Me.llenarPartidosPorJornada()

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
        'Me.IsCargando = False
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
        'Me.IsCargando = False
    End Sub

    ''' <summary>
    ''' metodo para llenar los equipos activos.
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub llenarPartidosPorJornada()
        Me.IsCargando = True
        Dim cJornadaPartido As New JornadaPartido
        Dim dsEquipos As DataSet
        Dim tablaEquipos As DataTable
        Dim tablaDescansa As DataTable
        Dim tablaPendientes As DataTable
        Dim cont As Int16
        Dim control As String
        lblDescansa.Visible = False
        lblEquipoDescansa.Visible = False
        lblEquipoDescansa.Text = String.Empty
        Me.IsCargando = True
        cJornadaPartido.idTorneo = cmbTorneo.SelectedValue
        cJornadaPartido.idJornada = cmbJornadas.SelectedValue
        dsEquipos = cJornadaPartido.consultar2()
        tablaEquipos = dsEquipos.Tables(0)
        tablaDescansa = dsEquipos.Tables(1)
        tablaPendientes = dsEquipos.Tables(2)

        Me.DataGridView1.RowCount = tablaEquipos.Rows.Count
        For Each row As DataGridViewRow In Me.DataGridView1.Rows
            If Convert.ToBoolean(tablaEquipos.Rows(row.Index)("Programado")) Then
                row.Cells("Fecha").Value = Convert.ToDateTime(tablaEquipos.Rows(row.Index)("Fecha"))
            Else
                row.Cells("Fecha").Value = DateTime.Now
            End If
            'row.Cells("Fecha").Value = Convert.ToDateTime(tablaEquipos.Rows(row.Index)("Fecha"))
            row.Cells("Hora").Value = Convert.ToDateTime(tablaEquipos.Rows(row.Index)("Hora"))
            row.Cells("NombreEquipo1").Value = Convert.ToString(tablaEquipos.Rows(row.Index)("NombreEquipo1"))
            row.Cells("Resultado").Value = Convert.ToString(tablaEquipos.Rows(row.Index)("Resultado"))
            row.Cells("NombreEquipo2").Value = Convert.ToString(tablaEquipos.Rows(row.Index)("NombreEquipo2"))
            row.Cells("Programado").Value = Convert.ToBoolean(tablaEquipos.Rows(row.Index)("Programado"))
            row.Cells("IdEquipo1").Value = Convert.ToString(tablaEquipos.Rows(row.Index)("IdEquipo1"))
            row.Cells("IdEquipo2").Value = Convert.ToString(tablaEquipos.Rows(row.Index)("IdEquipo2"))
            row.Cells("Jugado").Value = Convert.ToBoolean(tablaEquipos.Rows(row.Index)("Jugado"))
            If (Convert.ToBoolean(tablaEquipos.Rows(row.Index)("Jugado"))) Then
                row.Cells("Hora").ReadOnly = True
                row.Cells("Fecha").ReadOnly = True
                row.Cells("Programado").ReadOnly = True
            Else
                row.Cells("Hora").ReadOnly = False
                row.Cells("Fecha").ReadOnly = False
                row.Cells("Programado").ReadOnly = False
            End If
        Next row

        If (tablaDescansa.Rows.Count > 0) Then
            lblDescansa.Visible = True
            lblEquipoDescansa.Visible = True
            lblEquipoDescansa.Text = tablaDescansa.Rows.Item(0).Item(0).ToString()
        End If

        'If (tablaPendientes.Rows.Count > 0) Then
        Me.DataGridView2.RowCount = tablaPendientes.Rows.Count()
        For Each row As DataGridViewRow In Me.DataGridView2.Rows
            If Convert.ToBoolean(tablaPendientes.Rows(row.Index)("Programado")) Then
                row.Cells("Fecha1").Value = Convert.ToDateTime(tablaEquipos.Rows(row.Index)("Fecha"))
            Else
                row.Cells("Fecha1").Value = DateTime.Now
            End If
            'row.Cells("Fecha1").Value = DateTime.Now 'Convert.ToDateTime(tablaPendientes.Rows(row.Index)("Fecha"))
            row.Cells("Hora1").Value = Convert.ToDateTime(tablaPendientes.Rows(row.Index)("Hora"))
            row.Cells("NomEquipo1").Value = Convert.ToString(tablaPendientes.Rows(row.Index)("NombreEquipo1"))
            row.Cells("Resultado1").Value = Convert.ToString(tablaPendientes.Rows(row.Index)("Resultado"))
            row.Cells("NomEquipo2").Value = Convert.ToString(tablaPendientes.Rows(row.Index)("NombreEquipo2"))
            row.Cells("Programado1").Value = Convert.ToBoolean(tablaPendientes.Rows(row.Index)("Programado"))
            row.Cells("IdEquip1").Value = Convert.ToString(tablaPendientes.Rows(row.Index)("IdEquipo1"))
            row.Cells("IdEquip2").Value = Convert.ToString(tablaPendientes.Rows(row.Index)("IdEquipo2"))
            row.Cells("Jugado1").Value = Convert.ToBoolean(tablaPendientes.Rows(row.Index)("Jugado"))
            row.Cells("IdJornada").Value = Convert.ToString(tablaPendientes.Rows(row.Index)("IdJornada"))
            row.Cells("Jornada").Value = "Jornada" + Convert.ToString(tablaPendientes.Rows(row.Index)("IdJornada"))
            If (Convert.ToBoolean(tablaPendientes.Rows(row.Index)("Jugado"))) Then
                row.Cells("Hora1").ReadOnly = True
                row.Cells("Fecha1").ReadOnly = True
                row.Cells("Programado1").ReadOnly = True
            Else
                row.Cells("Hora1").ReadOnly = False
                row.Cells("Fecha1").ReadOnly = False
                row.Cells("Programado1").ReadOnly = False
            End If
        Next row
        'End If
        Me.DataGridView1.ClearSelection()
        Me.DataGridView2.ClearSelection()
        Me.IsCargando = False
    End Sub

    Private Sub cmbJornadas_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbJornadas.SelectedIndexChanged
        If Me.IsCargando = False Then
            Me.llenarPartidosPorJornada()
        End If
    End Sub

    Private Sub cmbTorneo_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbTorneo.SelectedIndexChanged
        If Me.IsCargando = False Then
            'llena el combo de jornadas
            Me.llenarJornadasTorneo()

            'llena el grid de partidos
            Me.llenarPartidosPorJornada()
        End If
    End Sub

    Private Sub FrmVerTorneo_FormClosed(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        HabilitaMenu(Me.ParentForm.Menu, "Programar Horarios de Partidos")
    End Sub

    Private Sub btnCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCancelar.Click
        Me.Close()
    End Sub

    Private Sub btnGuardar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnGuardar.Click
        Guardar()
    End Sub

    Private Sub Guardar()
        Dim fecha As String
        Dim fechaJuego As Date
        Dim flagGuardar As Boolean
        flagGuardar = False
        flag = validarHorario()

        If flag Then
            For Each row As DataGridViewRow In DataGridView1.Rows
                If (Convert.ToBoolean(row.Cells("Jugado").Value) = False) And (Convert.ToBoolean(row.Cells("Programado").Value) = True) Then
                    Fecha = row.Cells("Fecha").Value.ToString().Substring(0, 10) + " " + row.Cells("Hora").Value.ToString().Substring(11, 13)
                    fechaJuego = Convert.ToDateTime(Fecha)
                    jornadaPartido = New JornadaPartido
                    jornadaPartido.fechaHora = fechaJuego
                    jornadaPartido.programado = Convert.ToBoolean(row.Cells("Programado").Value)
                    jornadaPartido.claUsuarioMod = 1
                    jornadaPartido.nombrePcMod = "Torneo"
                    jornadaPartido.idTorneo = cmbTorneo.SelectedValue
                    jornadaPartido.idJornada = cmbJornadas.SelectedValue()
                    jornadaPartido.idEquipo1 = Convert.ToInt16(row.Cells("IdEquipo1").Value)
                    jornadaPartido.idEquipo2 = Convert.ToInt16(row.Cells("IdEquipo2").Value)
                    jornadaPartido.actualizarHora()
                    flagGuardar = True
                ElseIf (Convert.ToBoolean(row.Cells("Jugado").Value) = False) And (Convert.ToBoolean(row.Cells("Programado").Value) = False) Then
                    fecha = row.Cells("Fecha").Value.ToString().Substring(0, 10) + " " + row.Cells("Hora").Value.ToString().Substring(11, 13)
                    fechaJuego = Convert.ToDateTime(fecha)
                    jornadaPartido = New JornadaPartido
                    jornadaPartido.fechaHora = fechaJuego
                    jornadaPartido.programado = Convert.ToBoolean(row.Cells("Programado").Value)
                    jornadaPartido.claUsuarioMod = 1
                    jornadaPartido.nombrePcMod = "Torneo"
                    jornadaPartido.idTorneo = cmbTorneo.SelectedValue
                    jornadaPartido.idJornada = cmbJornadas.SelectedValue()
                    jornadaPartido.idEquipo1 = Convert.ToInt16(row.Cells("IdEquipo1").Value)
                    jornadaPartido.idEquipo2 = Convert.ToInt16(row.Cells("IdEquipo2").Value)
                    jornadaPartido.actualizarHora()
                    flagGuardar = True
                End If
            Next

            For Each row As DataGridViewRow In DataGridView2.Rows
                If (Convert.ToBoolean(row.Cells("Jugado1").Value) = False) And (Convert.ToBoolean(row.Cells("Programado1").Value) = True) Then
                    fecha = row.Cells("Fecha1").Value.ToString().Substring(0, 10) + " " + row.Cells("Hora1").Value.ToString().Substring(11, 13)
                    fechaJuego = Convert.ToDateTime(fecha)
                    jornadaPartido = New JornadaPartido
                    jornadaPartido.fechaHora = fechaJuego
                    jornadaPartido.programado = Convert.ToBoolean(row.Cells("Programado1").Value)
                    jornadaPartido.claUsuarioMod = 1
                    jornadaPartido.nombrePcMod = "Torneo"
                    jornadaPartido.idTorneo = cmbTorneo.SelectedValue
                    jornadaPartido.idJornada = Convert.ToInt16(row.Cells("IdJornada").Value)
                    jornadaPartido.idEquipo1 = Convert.ToInt16(row.Cells("IdEquip1").Value)
                    jornadaPartido.idEquipo2 = Convert.ToInt16(row.Cells("IdEquip2").Value)
                    jornadaPartido.actualizarHora()
                    flagGuardar = True
                End If
            Next
        End If

        If flagGuardar Then
            MessageBox.Show("Se Actualizaron los horarios correctamente", "Mensaje")
            Me.llenarPartidosPorJornada()
        End If

    End Sub

    Private Function validarHorario() As Boolean
        Dim fechaJuego As Date
        Dim fecha As String
        validarHorario = True

        'For Each row As DataGridViewRow In DataGridView1.Rows
        '    fecha = row.Cells("Fecha").Value.ToString().Substring(0, 10) + " " + row.Cells("Hora").Value.ToString().Substring(11, 13)
        '    fechaJuego = Convert.ToDateTime(fecha)
        '    If fechaJuego < DateTime.Now.Date And Convert.ToBoolean(row.Cells("Programado").Value) = True And Convert.ToBoolean(row.Cells("Jugado").Value) = False Then
        '        MessageBox.Show("La fecha " + fechaJuego + " no puede ser menor al dia de hoy " + DateTime.Now.Date.ToShortDateString + ". Revisar los datos.", "Error al guardar")
        '        validarHorario = False
        '        Exit For
        '    End If
        'Next

        'If validarHorario Then
        '    For Each row As DataGridViewRow In DataGridView2.Rows
        '        fecha = row.Cells("Fecha1").Value.ToString().Substring(0, 10) + " " + row.Cells("Hora1").Value.ToString().Substring(11, 13)
        '        fechaJuego = Convert.ToDateTime(fecha)
        '        If fechaJuego < DateTime.Now.Date And Convert.ToBoolean(row.Cells("Programado1").Value) = True Then
        '            MessageBox.Show("La fecha " + fechaJuego + " no puede ser menor al dia de hoy " + DateTime.Now.Date.ToShortDateString + ". Revisar los datos.", "Error al guardar")
        '            validarHorario = False
        '            Exit For
        '        End If
        '    Next
        'End If

        If validarHorario Then
            For Each row As DataGridViewRow In DataGridView1.Rows
                If Convert.ToBoolean(row.Cells("Programado").Value) Then
                    fecha = row.Cells("Fecha").Value.ToString().Substring(0, 10) + " " + row.Cells("Hora").Value.ToString().Substring(11, 13)
                    fechaJuego = Convert.ToDateTime(fecha)
                    For Each row1 As DataGridViewRow In DataGridView1.Rows
                        If fecha = row1.Cells("Fecha").Value.ToString().Substring(0, 10) + " " + row1.Cells("Hora").Value.ToString().Substring(11, 13) And row.Index <> row1.Index And Convert.ToBoolean(row.Cells("Jugado").Value) = False And Convert.ToBoolean(row.Cells("Programado").Value) = True Then
                            MessageBox.Show("Se Repite la fecha y el horario del dia " + fecha + " de otro juego de la jornada. Revisar los datos.", "Error al guardar")
                            validarHorario = False
                            Exit For
                        End If
                    Next row1
                End If
                If validarHorario = False Then
                    Exit For
                End If
            Next row
        End If

        If validarHorario Then
            If DataGridView2.Rows.Count > 0 And flag Then
                For Each row As DataGridViewRow In DataGridView2.Rows
                    If Convert.ToBoolean(row.Cells("Programado1").Value) Then
                        fecha = row.Cells("Fecha1").Value.ToString().Substring(0, 10) + " " + row.Cells("Hora1").Value.ToString().Substring(11, 13)
                        fechaJuego = Convert.ToDateTime(fecha)
                        For Each row1 As DataGridViewRow In DataGridView1.Rows
                            If fecha = row1.Cells("Fecha").Value.ToString().Substring(0, 10) + " " + row1.Cells("Hora").Value.ToString().Substring(11, 13) And Convert.ToBoolean(row1.Cells("Jugado").Value) = False And Convert.ToBoolean(row1.Cells("Programado").Value) Then
                                MessageBox.Show("Se Repite la fecha y el horario del dia " + fecha + " de otro juego de la jornada. Revisar los datos.", "Error al guardar")
                                validarHorario = False
                                Exit For
                            End If
                        Next row1
                        For Each row1 As DataGridViewRow In DataGridView2.Rows
                            If fecha = row1.Cells("Fecha1").Value.ToString().Substring(0, 10) + " " + row1.Cells("Hora1").Value.ToString().Substring(11, 13) And Convert.ToBoolean(row1.Cells("Programado1").Value) And row.Index <> row1.Index Then
                                MessageBox.Show("Se Repite la fecha y el horario del dia " + fecha + " de otro juego de la jornada. Revisar los datos.", "Error al guardar")
                                validarHorario = False
                                Exit For
                            End If
                        Next row1
                    End If
                Next
            End If
        End If
    End Function

    Private Sub BtnImprimir_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnImprimir.Click
        Dim frmreport As New FrmReportViewerSSRS("Reporte Calendario")
        frmreport.pTipoReporte = ClsEnumerados.ETipoReporte.Reporte_Calendario
        frmreport.pIdTorneo = Me.cmbTorneo.SelectedValue
        frmreport.pIdJornada = Me.cmbJornadas.SelectedValue
        frmreport.pNombreTorneo = Me.cmbTorneo.Text
        frmreport.pParaJunta = Me.chkParaJunta.Checked
        frmreport.pVerPendientes = Me.chkVerPendientes.Checked
        frmreport.ShowDialog()
        frmreport.Dispose()
    End Sub

    Private Sub BtnImprimirCedula_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnImprimirCedula.Click
        Dim frmreport As New FrmReportViewerSSRS("Reporte Cedula")
        Dim bandera As Boolean = False
        frmreport.pIdTorneo = Me.cmbTorneo.SelectedValue
        If Me.DataGridView1.SelectedRows.Count > 0 Then
            frmreport.pIdEquipo1 = Convert.ToInt16(Me.DataGridView1.CurrentRow.Cells("IdEquipo1").Value)
            frmreport.pIdEquipo2 = Convert.ToInt16(Me.DataGridView1.CurrentRow.Cells("IdEquipo2").Value)
            frmreport.pIdJornada = Me.cmbJornadas.SelectedValue
            bandera = True
        ElseIf Me.DataGridView2.SelectedRows.Count > 0 Then
            frmreport.pIdEquipo1 = Convert.ToInt16(Me.DataGridView2.CurrentRow.Cells("IdEquip1").Value)
            frmreport.pIdEquipo2 = Convert.ToInt16(Me.DataGridView2.CurrentRow.Cells("IdEquip2").Value)
            frmreport.pIdJornada = Convert.ToInt16(Me.DataGridView2.CurrentRow.Cells("IdJornada").Value)
            bandera = True
        Else
            MessageBox.Show("Se debe elegir algun partido para mostrar la cedula", "Error al generar reporte")
        End If

        If bandera Then
            frmreport.pTipoReporte = ClsEnumerados.ETipoReporte.Reporte_Cedula
            frmreport.ShowDialog()
            frmreport.Dispose()
        End If
    End Sub

    Private Sub BtnImprimirResultado_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnImprimirResultado.Click
        Dim frmreport As New FrmReportViewerSSRS("Reporte Resultados")
        frmreport.pTipoReporte = ClsEnumerados.ETipoReporte.Reporte_Resultado
        frmreport.pIdTorneo = Me.cmbTorneo.SelectedValue
        frmreport.pIdJornada = Me.cmbJornadas.SelectedValue
        frmreport.pNombreTorneo = Me.cmbTorneo.Text
        frmreport.ShowDialog()
        frmreport.Dispose()
    End Sub

    Private Sub DataGridView1_DataBindingComplete(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewBindingCompleteEventArgs) Handles DataGridView1.DataBindingComplete
        Me.DataGridView1.ClearSelection()
    End Sub

    Private Sub DataGridView2_DataBindingComplete(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewBindingCompleteEventArgs) Handles DataGridView2.DataBindingComplete
        Me.DataGridView2.ClearSelection()
    End Sub

    Private Sub DataGridView1_CellContentClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles DataGridView1.CellContentClick

    End Sub

    Private Sub chkVerPendientes_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles chkVerPendientes.CheckedChanged
        If chkVerPendientes.Checked = True Then
            Me.DataGridView2.Visible = True
        Else
            Me.DataGridView2.Visible = False
        End If


    End Sub
End Class