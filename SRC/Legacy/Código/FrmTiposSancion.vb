Public Class FrmTiposSancion

  

    Private Sub BtnBuscar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnBuscar.Click
        Buscar()
    End Sub

    Private Sub Buscar()

        TipoSancion.Descripcion = Me.TxtBuscar.Text

        Dim dtConsulta As DataTable
        dtConsulta = TipoSancion.Consultar()
        Me.DataGridView1.DataSource = dtConsulta
        Me.DataGridView1.Columns(0).Visible = False

        'Tamaño de las columnas
        Me.DataGridView1.Columns(1).Width = 100
        Me.DataGridView1.Columns(2).Width = 580
        Me.DataGridView1.Columns(3).Width = 145
        Me.DataGridView1.Columns(4).Width = 100
        Me.DataGridView1.Columns(5).Width = 70

        'Alinea texto de columnas
        Me.DataGridView1.Columns(1).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft
        Me.DataGridView1.Columns(2).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft
        Me.DataGridView1.Columns(3).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        Me.DataGridView1.Columns(4).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        Me.DataGridView1.Columns(5).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter


        'Titulo de columnas
        Me.DataGridView1.Columns(3).HeaderText = "Juegos Suspensión"
        Me.DataGridView1.Columns(4).HeaderText = "Causa Baja"
        Me.DataGridView1.Columns(5).HeaderText = "Situación"

    End Sub

    Private Sub Modificar()
        AccionTipoSancion.Accion = AccionTipoSancion.Acciones.Modificar        
        TipoSancion.IdTipoSancion = CInt(DataGridView1.CurrentRow.Cells(0).Value)
        Dim NuevoTipoSancion As New FrmNuevoTipoSancion
        NuevoTipoSancion.ShowDialog()
        If AccionTipoSancion.Accion = AccionTipoSancion.Acciones.Guardado Then
            Buscar()
        End If
    End Sub

    Private Sub Eliminar()
        If MsgBox("Esta seguro de dar de baja el tipo de sanción seleccionado", MsgBoxStyle.Question + MsgBoxStyle.YesNo, "Sistema") = MsgBoxResult.Yes Then
            TipoSancion.IdTipoSancion = CInt(DataGridView1.CurrentRow.Cells(0).Value)
            TipoSancion.IdUsuario = Usuario.IdUsuario
            TipoSancion.Eliminar()
            Buscar()
        End If
    End Sub

    Private Sub Activar()

        TipoSancion.IdTipoSancion = CInt(DataGridView1.CurrentRow.Cells(0).Value)
        TipoSancion.IdUsuario = Usuario.IdUsuario
        TipoSancion.Activar()
        Buscar()

    End Sub


    Private Sub MniNuevo_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MniNuevo.Click
        AccionTipoSancion.Accion = AccionTipoSancion.Acciones.Nuevo
        Dim NuevoTipoSancion As New FrmNuevoTipoSancion
        NuevoTipoSancion.ShowDialog()
        If AccionTipoSancion.Accion = AccionTipoSancion.Acciones.Guardado Then
            Buscar()
        End If
    End Sub

    Private Sub MniModificar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MniModificar.Click
        If Me.DataGridView1.SelectedRows.Count > 0 Then
            Modificar()
        End If
    End Sub

    Private Sub MniDarBaja_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles MniDarBaja.Click
        If Me.DataGridView1.SelectedRows.Count > 0 Then
            Eliminar()
        End If
    End Sub

    Private Sub MniActivar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles MniActivar.Click
        If Me.DataGridView1.SelectedRows.Count > 0 Then
            Activar()
        End If
    End Sub


    Private Sub DataGridView1_DataBindingComplete(ByVal sender As Object, ByVal e As System.Windows.Forms.DataGridViewBindingCompleteEventArgs) Handles DataGridView1.DataBindingComplete
        DataGridView1.ClearSelection()
    End Sub

    Private Sub FrmTiposSancion_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        HabilitaMenu(Me.ParentForm.Menu, "Catálogo de Tipos de Sanción")
    End Sub

    Private Sub FrmTiposSancion_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Buscar()
    End Sub

    Private Sub MnuTiposSancion1_Opening(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles MnuTiposSancion1.Opening
        If Me.DataGridView1.SelectedRows.Count > 0 Then
            Me.MniActivar.Enabled = True
            Me.MniDarBaja.Enabled = True
            Me.MniModificar.Enabled = True
        Else
            Me.MniActivar.Enabled = False
            Me.MniDarBaja.Enabled = False
            Me.MniModificar.Enabled = False
        End If
    End Sub
End Class