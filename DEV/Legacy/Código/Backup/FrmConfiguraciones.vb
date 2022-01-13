Public Class FrmConfiguraciones

    Private Sub BtnBuscar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnBuscar.Click
        Buscar()
    End Sub

    Private Sub Buscar()

        ConfiguracionSys.Descripcion = Me.TxtBuscar.Text

        Dim dtConsulta As DataTable
        dtConsulta = ConfiguracionSys.Buscar()
        Me.DgdConfiguraciones.DataSource = dtConsulta
        Me.DgdConfiguraciones.Columns(0).Visible = False

    

        'Tamaño de las columnas
        Me.DgdConfiguraciones.Columns(1).Width = 335
        Me.DgdConfiguraciones.Columns(2).Width = 120
        Me.DgdConfiguraciones.Columns(3).Width = 300
        Me.DgdConfiguraciones.Columns(4).Width = 120
        Me.DgdConfiguraciones.Columns(5).Width = 60

        'Alinea texto de columnas
        Me.DgdConfiguraciones.Columns(1).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft
        Me.DgdConfiguraciones.Columns(2).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        Me.DgdConfiguraciones.Columns(3).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft
        Me.DgdConfiguraciones.Columns(4).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        Me.DgdConfiguraciones.Columns(5).DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter


        'Titulo de columnas
        Me.DgdConfiguraciones.Columns(2).HeaderText = "Valor Númerico"
        Me.DgdConfiguraciones.Columns(3).HeaderText = "Valor Alfanúmerico"
        Me.DgdConfiguraciones.Columns(4).HeaderText = "Valor Fecha"




    End Sub

    Private Sub Modificar()
        AccionConfiguracion.Accion = AccionConfiguracion.Acciones.Modificar

        ConfiguracionSys.IdConfiguracion = CInt(DgdConfiguraciones.CurrentRow.Cells(0).Value)
        Dim NuevoConfiguracion As New FrmNuevoConfiguracion
        NuevoConfiguracion.ShowDialog()
        If AccionConfiguracion.Accion = AccionConfiguracion.Acciones.Guardado Then
            Buscar()
        End If
    End Sub

    Private Sub Eliminar()
        If MsgBox("Esta seguro de dar de baja la configuración seleccionada", MsgBoxStyle.Question + MsgBoxStyle.YesNo, "Sistema") = MsgBoxResult.Yes Then
            ConfiguracionSys.IdConfiguracion = CInt(DgdConfiguraciones.CurrentRow.Cells(0).Value)
            ConfiguracionSys.IdUsuario = Usuario.IdUsuario
            ConfiguracionSys.Eliminar()
            Buscar()
        End If
    End Sub

    Private Sub Activar()

        ConfiguracionSys.IdConfiguracion = CInt(DgdConfiguraciones.CurrentRow.Cells(0).Value)
        ConfiguracionSys.IdUsuario = Usuario.IdUsuario
        ConfiguracionSys.Activar()
        Buscar()

    End Sub


    Private Sub MniNuevo_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MniNuevo.Click
        AccionConfiguracion.Accion = AccionConfiguracion.Acciones.Nuevo
        Dim NuevoConfiguracion As New FrmNuevoConfiguracion
        NuevoConfiguracion.ShowDialog()
        If AccionConfiguracion.Accion = AccionConfiguracion.Acciones.Guardado Then
            Buscar()
        End If
    End Sub

    Private Sub MniModificar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MniModificar.Click
        If Me.DgdConfiguraciones.SelectedRows.Count > 0 Then
            Modificar()
        End If
    End Sub

    Private Sub MniDarBaja_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles MniDarBaja.Click
        If Me.DgdConfiguraciones.SelectedRows.Count > 0 Then
            Eliminar()
        End If
    End Sub

    Private Sub MniActivar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles MniActivar.Click
        If Me.DgdConfiguraciones.SelectedRows.Count > 0 Then
            Activar()
        End If
    End Sub

    Private Sub FrmConfiguraciones_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        HabilitaMenu(Me.ParentForm.Menu, "Configuraciones de Sistema")
    End Sub



    Private Sub FrmConfiguraciones_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub DgdConfiguraciones_DataBindingComplete(ByVal sender As Object, ByVal e As System.Windows.Forms.DataGridViewBindingCompleteEventArgs) Handles DgdConfiguraciones.DataBindingComplete
        DgdConfiguraciones.ClearSelection()
    End Sub

    Private Sub MnuTiposSancion1_Opening(ByVal sender As System.Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles MnuTiposSancion1.Opening
        If Me.DgdConfiguraciones.SelectedRows.Count > 0 Then
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