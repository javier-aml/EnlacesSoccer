
Public Class frmConsultarEquipo




    'NAVEGACION DEL GRID
    Private Sub cargarGrid()
        Dim cEquipos As New ClsEquipo
        Dim data As New Object
        data = cEquipos.consultar(-1)
        Dim datasource As New BindingSource(data, Nothing)
        DataGridView1.DataSource = datasource
        DataGridView1.Columns("IdEquipo").Visible = False
        cEquipos = Nothing
    End Sub

    ' Initializes the data source.
    Protected Overrides Sub OnLoad(ByVal e As System.EventArgs)
        Me.cargarGrid()
        MyBase.OnLoad(e)
    End Sub


    Private Sub ToolStripButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Dim frmAlta As New frmAltaEquipo
        frmAlta.Tag = 0
        frmAlta.StartPosition = FormStartPosition.CenterParent
        frmAlta.ShowDialog()
        cargarGrid()

    End Sub
    

    Private Sub btnEditar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        If Me.DataGridView1.RowCount > 0 Then
            If Me.DataGridView1.CurrentRow.Index <> -1 Then
                Dim frAltas As New frmAltaEquipo
                frAltas.Tag = Me.DataGridView1.CurrentRow.Cells("IdEquipo").Value
                frAltas.StartPosition = FormStartPosition.CenterParent
                frAltas.ShowDialog()
                cargarGrid()
            Else
                MsgBox("No ha seleccionado ningun cliente para editar")
            End If
        End If
    End Sub

    Private Sub NuevoToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles NuevoToolStripMenuItem.Click
        Dim frmAlta As New frmAltaEquipo
        frmAlta.Tag = 0
        frmAlta.StartPosition = FormStartPosition.CenterParent
        frmAlta.ShowDialog()
        cargarGrid()

    End Sub

    Private Sub ModificarToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ModificarToolStripMenuItem.Click
        If Me.DataGridView1.RowCount > 0 Then
            If Me.DataGridView1.CurrentRow.Index <> -1 Then
                Dim frAltas As New frmAltaEquipo
                frAltas.Tag = Me.DataGridView1.CurrentRow.Cells("IdEquipo").Value
                frAltas.StartPosition = FormStartPosition.CenterParent
                frAltas.ShowDialog()
                cargarGrid()
            Else
                MsgBox("No ha seleccionado ningun cliente para editar")
            End If
        End If
    End Sub

    Private Sub frmConsultarEquipo_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        HabilitaMenu(Me.ParentForm.Menu, "Catálogo de Equipos")
    End Sub

    Private Sub frmConsultarEquipo_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub DataGridView1_CellContentClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles DataGridView1.CellContentClick

    End Sub
End Class
