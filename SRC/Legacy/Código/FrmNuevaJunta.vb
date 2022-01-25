Public Class FrmNuevaJunta


    Dim cargando As Boolean
    Dim cargandoJ As Boolean

    Private Sub btnCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCancelar.Click
        Me.Close()
    End Sub

    Private Sub FrmNuevaJunta_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.cmbJornada.Visible = False
        Me.cmbJornada.Enabled = False
        cargando = True
        Me.llenarTorneosActivos()
        If AccionJunta.Accion = AccionJunta.Acciones.Modificar Then
            Me.Text = "Modificar Junta"
            Dim datos As New Collection
            Junta.Ver(datos, Junta.IdJunta, Junta.IdTorneo)
            If (datos.Count > 0) Then
                dtpFecha.Value = Convert.ToDateTime(datos.Item("FechaHora"))
                txtAcuerdo.Text = Convert.ToString(datos.Item("Acuerdos"))
                txtObservaciones.Text = Convert.ToString(datos.Item("Observaciones"))
                Me.cmbTorneo.SelectedValue = Junta.IdTorneo
                dtpFecha.Enabled = False
                cmbTorneo.Enabled = False
            End If
            If (Junta.IdJornada > 0) Then
                Me.chkPasarLista.Enabled = False
                Me.cmbJornada.Enabled = False
                Me.chkPasarLista.Checked = True
            Else
                Me.chkPasarLista.Checked = False
                Me.chkPasarLista.Enabled = False
                Me.cmbJornada.Enabled = False
            End If
        Else
            Me.Text = "Agregar Junta"
            Me.chkPasarLista.Checked = False
            Me.llenarLista()
            Me.chkPasarLista.Enabled = True
            Me.cmbJornada.Enabled = True
        End If
        cargando = False
        cargandoJ = True
        Me.LlenarJornadas()
        cargandoJ = False
        If (Junta.IdJornada > 0) Or (AccionJunta.Accion = AccionJunta.Acciones.Nuevo) Then
            Me.LlenarJornadas()
        End If
    End Sub

    Private Sub btnGuardar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnGuardar.Click
        Guardar()
    End Sub

    Private Sub Guardar()
        If Convert.ToString(Me.dtpFecha.Value) <> "" Then
            AsignarValoresaClase()
            If AccionJunta.Accion = AccionJunta.Acciones.Nuevo Then
                Junta.Guardar()
            Else
                Junta.Actualizar()
            End If
            If (Me.chkPasarLista.Checked) Then
                Dim idEquipo As Integer
                Dim asistencia As Integer
                For Each row As DataGridViewRow In Me.dgEquipos.Rows
                    idEquipo = row.Cells("idEquipo").Value
                    asistencia = row.Cells("Asistio").Value
                    Junta.GuardarAsistencia(idEquipo, asistencia)
                Next row
            End If
            AccionJunta.Accion = AccionJunta.Acciones.Guardado
            Me.Close()
        Else
            MsgBox("Faltan datos, favor de verificar", MsgBoxStyle.Information, Mensaje)
        End If
        If (Junta.Erro.Length > 0) Then
            MsgBox(Junta.Erro, MsgBoxStyle.Information, Mensaje)
        End If
        AccionJunta.Accion = ClsAccion.Acciones.Guardado
    End Sub

    Private Sub AsignarValoresaClase()
        With Junta
            .IdJunta = Junta.IdJunta
            .FechaHora = Me.dtpFecha.Value
            .IdTorneo = Me.cmbTorneo.SelectedValue
            If (Me.txtObservaciones.Text <> "") Then
                .Acuerdos = Me.txtAcuerdo.Text
            Else
                .Acuerdos = String.Empty
            End If
            If (Me.txtAcuerdo.Text <> "") Then
                .Observaciones = Me.txtObservaciones.Text
            Else
                .Observaciones = String.Empty
            End If
        End With
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
    End Sub


    Private Sub LlenarJornadas()
        If Not (cargando) Then
            Dim cJornada As New ClsTorneo
            Dim tablaJornadas As DataTable
            tablaJornadas = cJornada.cargarJornadas(Me.cmbTorneo.SelectedValue, Junta.IdJornada)
            Me.cmbJornada.DataSource = tablaJornadas
            Me.cmbJornada.DisplayMember = "Nombre"
            Me.cmbJornada.ValueMember = "IdJornada"
        End If
    End Sub


    Private Sub chkPasarLista_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles chkPasarLista.CheckedChanged
        If (chkPasarLista.Checked) Then
            Me.cmbJornada.Visible = True
            Me.Size = New Size(585, 646)
            Me.llenarLista()
        Else
            Me.cmbJornada.Enabled = False
            Me.cmbJornada.Visible = False
            Me.Size = New Size(585, 266)
        End If
    End Sub

    ''' <summary>
    ''' Metodo que uso para llenar los torneos activos.
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub llenarLista()
        Dim cTorneo As New ClsTorneo
        Dim ds As DataSet
        If Not (cargando) Then
            If Not (cargandoJ) Then
                ds = cTorneo.cargarEquiposActivosTorneo(Me.cmbTorneo.SelectedValue, Junta.IdJornada)
                Dim Jornada As String
                If (ds.Tables(0).Rows.Count > 0) Then
                    Me.dgEquipos.RowCount = ds.Tables(0).Rows.Count
                    'Me.dgEquipos.DataSource = ds.Tables(0)
                    'Dibujo la columna del nombre del equipo
                    Dim i As Int32
                    For Each row As DataGridViewRow In Me.dgEquipos.Rows
                        row.Cells("Equipos").Value = Convert.ToString(ds.Tables(0).Rows(row.Index)("Nombre"))
                    Next row
                    'Dibujo la columna del checkbox
                    For Each row As DataGridViewRow In Me.dgEquipos.Rows
                        row.Cells("Asistio").Value = Convert.ToBoolean(ds.Tables(0).Rows(row.Index)("Asistencia"))
                    Next row
                    'Dibujo la columna del checkbox
                    For Each row As DataGridViewRow In Me.dgEquipos.Rows
                        row.Cells("idEquipo").Value = Convert.ToInt32(ds.Tables(0).Rows(row.Index)("idEquipo"))
                    Next row

                End If
                Jornada = Me.cmbJornada.SelectedValue
                With Junta
                    .IdJornada = Convert.ToInt32(Jornada)
                End With
                'If (ds.Tables(1).Rows.Count > 0) Then
                '    With Junta
                '        'Jornada = ds.Tables(1).Rows(0)(0).ToString
                '        Jornada = Me.cmbJornada.SelectedValue
                '        Me.chkPasarLista.Enabled = True
                '        'Me.chkPasarLista.Text = "Corresponde a Jornada " + Jornada
                '        .IdJornada = Convert.ToInt32(Jornada)
                '    End With
                'End If
            End If
        End If
    End Sub

    Private Sub cmbTorneo_SelectedValueChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbTorneo.SelectedValueChanged
        Me.LlenarJornadas()
    End Sub

    Public Sub New()

        ' This call is required by the Windows Form Designer.
        InitializeComponent()

        ' Add any initialization after the InitializeComponent() call.

    End Sub

    Private Sub cmbJornada_SelectedValueChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbJornada.SelectedValueChanged
        Me.llenarLista()
    End Sub
End Class