Public Class FrmConfiguraTorneo

    Private Sub FrmConfiguraTorneo_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        HabilitaMenu(Me.ParentForm.Menu, "Configuración de Torneos")
    End Sub

    Private Sub FrmConfiguraTorneo_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        CargarGrid()
    End Sub

    Private Sub CargarGrid()
        Dim cTorneo As New ClsTorneo
        Dim data As New Object
        data = cTorneo.Consultar(-1)
        Dim datasource As New BindingSource(data, Nothing)
        Me.DtgTorneos.DataSource = datasource
        Me.DtgTorneos.Columns("IdTorneo").Visible = False
        'Me.DtgTorneos.Columns("Nombre").FillWeight = 70
        'Me.DtgTorneos.Columns("Estado").FillWeight = 30
        cTorneo = Nothing
    End Sub

    Private Sub MniModificar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MniModificar.Click
        If Me.DtgTorneos.RowCount > 0 Then
            If Me.DtgTorneos.CurrentRow.Index <> -1 Then
                Dim frmModificaTorneo As New FrmModificaTorneo
                frmModificaTorneo.Tag = Me.DtgTorneos.CurrentRow.Cells("IdTorneo").Value
                frmModificaTorneo.StartPosition = FormStartPosition.CenterParent
                frmModificaTorneo.ShowDialog()
                CargarGrid()
            Else
                MsgBox("No ha seleccionado ningun Torneo para editar")
            End If
        End If
    End Sub
End Class