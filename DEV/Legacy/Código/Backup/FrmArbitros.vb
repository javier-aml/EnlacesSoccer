Public Class FrmArbitros

    Private Sub BtnBuscar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnBuscar.Click
        Buscar()
    End Sub

    Private Sub Buscar()
        Me.LvResultados.Items.Add("")
        Arbitro.Buscar(Me.LvResultados, Me.txtNombre.Text)
    End Sub

    Private Sub FrmArbitros_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        HabilitaMenu(Me.ParentForm.Menu, "Catálogo de Arbitros")
    End Sub

    Private Sub FrmArbitros_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

  
    Private Sub NuevoToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles NuevoToolStripMenuItem.Click
        AccionArbitro.Accion = AccionArbitro.Acciones.Nuevo
        Dim NuevoArbitro As New FrmNuevoArbitro
        NuevoArbitro.ShowDialog()
        If AccionArbitro.Accion = AccionArbitro.Acciones.Guardado Then
            Buscar()
        End If
    End Sub

    Private Sub ModificarToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ModificarToolStripMenuItem.Click
        If LvResultados.SelectedItems.Count > 0 Then
            Modificar()
        End If
    End Sub

    Private Sub Modificar()
        AccionArbitro.Accion = AccionArbitro.Acciones.Modificar
        Arbitro.IdArbitro = ObtieneId(LvResultados.SelectedItems(0).Tag, 0)
        Dim NuevoArbitro As New FrmNuevoArbitro
        NuevoArbitro.ShowDialog()
        If AccionArbitro.Accion = AccionArbitro.Acciones.Guardado Then
            Buscar()
        End If
    End Sub

    Private Sub DarDeBajaToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DarDeBajaToolStripMenuItem.Click
        If LvResultados.SelectedItems.Count > 0 Then
            Baja()
        End If

    End Sub

    Private Sub Baja()
        If MsgBox("Esta seguro de dar de baja el árbitro seleccionado", MsgBoxStyle.Question + MsgBoxStyle.YesNo, "Sistema") = MsgBoxResult.Yes Then
            Arbitro.IdArbitro = ObtieneId(LvResultados.SelectedItems(0).Tag, 0)
            Arbitro.Eliminar()
            Buscar()
        End If

    End Sub

    Private Sub LvResultados_DoubleClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles LvResultados.DoubleClick
        If LvResultados.SelectedItems.Count > 0 Then
            Modificar()
        End If
    End Sub

    Private Sub LvResultados_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles LvResultados.SelectedIndexChanged

    End Sub

    Private Sub MnuArbitro_Opening(ByVal sender As System.Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles MnuArbitro.Opening
        If LvResultados.SelectedIndices.Count = 0 Then
            Me.OcultarMenuModificar()
        Else
            MostrarMenuModificar()
            If LvResultados.SelectedItems(0).SubItems(1).Text = "Baja" Then
                Me.MostrarActivar()
            Else
                Me.OcultarActivar()
            End If
        End If
    End Sub

    Private Sub OcultarMenuModificar()
        Me.NuevoToolStripMenuItem.Visible = True
        Me.ModificarToolStripMenuItem.Enabled = False
        Me.DarDeBajaToolStripMenuItem.Enabled = False
        Me.MnuActivar.Enabled = False
    End Sub

    Private Sub MostrarActivar()
        Me.MnuActivar.Enabled = True
        Me.DarDeBajaToolStripMenuItem.Enabled = False
    End Sub

    Private Sub OcultarActivar()
        Me.MnuActivar.Enabled = False
        Me.DarDeBajaToolStripMenuItem.Enabled = True
    End Sub


    Private Sub MostrarMenuModificar()
        Me.NuevoToolStripMenuItem.Enabled = True
        Me.ModificarToolStripMenuItem.Enabled = True
    End Sub


    Private Sub MnuActivar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MnuActivar.Click
        If LvResultados.SelectedItems.Count > 0 Then
            Activar()
        End If

    End Sub

    Private Sub Activar()
        Arbitro.IdArbitro = ObtieneId(LvResultados.SelectedItems(0).Tag, 0)
        Arbitro.IdUsuario = Usuario.IdUsuario
        Arbitro.Activar()
        Buscar()        
    End Sub


End Class