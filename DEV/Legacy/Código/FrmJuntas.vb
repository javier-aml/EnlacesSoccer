Public Class FrmJuntas

    Friend cargando As Boolean

    Private Sub btnBuscar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnBuscar.Click
        Buscar()
    End Sub

    Private Sub Buscar()
        Dim dat As New DataTable
        If (Me.CheckBox1.Checked) Then
            Junta.SoloJunta = 1
        Else
            Junta.SoloJunta = 0
        End If
        Junta.IdTorneo = Me.CmbTorneo.SelectedValue
        Junta.Juntas(dat, Junta.IdTorneo, Junta.SoloJunta)
        If (dat.Rows.Count > 0) Then
            Me.dgResultados.DataSource = dat
            Me.dgResultados.Columns("idJunta").Visible = False
            Me.dgResultados.Columns("FechaHora").HeaderText = "Fecha"
            Me.dgResultados.Columns("FechaHora").Width = 335
            Me.dgResultados.Columns("idJornada").Width = 130
            Me.dgResultados.Columns("idJornada").HeaderText = "Jornada"
        Else
            dgResultados.DataSource = New DataTable
        End If
    End Sub

    Private Sub ModificarToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ModificarToolStripMenuItem.Click
        If Junta.IdJunta > 0 Then
            Modificar()
        End If
    End Sub

    Private Sub Modificar()
        AccionJunta.Accion = AccionJunta.Acciones.Modificar
        If Not (String.IsNullOrEmpty(Convert.ToString(Me.dgResultados.CurrentRow.Cells("idJornada").Value))) Then
            Junta.IdJornada = Convert.ToInt32(Me.dgResultados.CurrentRow.Cells("idJornada").Value)
        Else
            Junta.IdJornada = 0
        End If
        Dim NuevaJunta As New FrmNuevaJunta
        NuevaJunta.ShowDialog()
        If AccionJunta.Accion = AccionJunta.Acciones.Guardado Then
            Buscar()
        End If
    End Sub

    Private Sub NuevoToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles NuevoToolStripMenuItem.Click
        AccionJunta.Accion = AccionJunta.Acciones.Nuevo
        Junta.IdJornada = 0
        Dim NuevaJunta As New FrmNuevaJunta
        NuevaJunta.ShowDialog()
        If AccionJunta.Accion = AccionJunta.Acciones.Guardado Then
            Buscar()
        End If
    End Sub

    Private Sub FrmJuntas_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        HabilitaMenu(Me.ParentForm.Menu, "Capturar Bitacora de Juntas")
    End Sub


    Private Sub FrmJuntas_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        cargando = True
        Me.llenarTorneosActivos()
        Me.BringToFront()
        Buscar()
        cargando = False
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

    Private Sub CmbTorneo_SelectedValueChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CmbTorneo.SelectedValueChanged
        txtAcuerdos.Text = String.Empty
        txtObservaciones.Text = String.Empty
        Junta.IdJunta = 0
    End Sub

    'Private Sub dtpFechaBuscar_ValueChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)
    '    txtAcuerdos.Text = String.Empty
    '    txtObservaciones.Text = String.Empty
    '    Junta.IdJunta = 0
    'End Sub

    Private Sub chkPasarLista_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)
        
    End Sub

   

    Private Sub dgResultados_SelectionChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles dgResultados.SelectionChanged
        If Not (cargando) Then
            If (Me.dgResultados.SelectedRows.Count > 0) Then
                Junta.IdJunta = Convert.ToInt32(Me.dgResultados.CurrentRow.Cells("idJunta").Value)
                Junta.FechaHora = Convert.ToDateTime(Me.dgResultados.CurrentRow.Cells("FechaHora").Value)
                If Not (String.IsNullOrEmpty(Convert.ToString(Me.dgResultados.CurrentRow.Cells("idJornada").Value))) Then
                    Junta.IdJornada = Convert.ToInt32(Me.dgResultados.CurrentRow.Cells("idJornada").Value)
                Else
                    Junta.IdJornada = 0
                End If
                Dim datos As New Collection
                Junta.Ver(datos, Junta.IdJunta, Junta.IdTorneo)
                If (datos.Count > 0) Then
                    Me.txtAcuerdos.Text = datos.Item("Acuerdos")
                    Me.txtObservaciones.Text = datos.Item("Observaciones")
                Else
                    txtAcuerdos.Text = String.Empty
                    txtObservaciones.Text = String.Empty
                End If
            End If
            End If
    End Sub
End Class