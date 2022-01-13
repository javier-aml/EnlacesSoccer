Public Class FrmModificaTorneo

    Dim cTorneo As New ClsTorneo
    
    Private Sub BtnCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnCancelar.Click
        Me.Close()
    End Sub

    Private Sub BtnGuardar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnGuardar.Click
        Dim aux As Integer
        aux = cTorneo.activo
        Select Case Me.rbActivo.Checked
            Case True
                Me.cTorneo.activo = 1
            Case False
                Me.cTorneo.activo = 0
        End Select
        cTorneo.nombre = txtNombre.Text

        Try
            cTorneo.actualizar()
            MsgBox("Torneo Actualizado Exitosamente", MsgBoxStyle.Information, "Información")
            Me.Close()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Critical, "Sistemas")
        End Try
    End Sub

    Private Sub FrmModificaTorneo_Leave(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Leave

    End Sub

    Private Sub FrmModificaTorneo_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load            
        If Me.Tag <> 0 Then
            Me.cTorneo.idTorneo = Me.Tag
            Me.cTorneo.CargarInformacionTorneo()
            Me.txtNombre.Text = cTorneo.nombre
            Select Case Me.cTorneo.activo
                Case 1
                    Me.rbActivo.Checked = True
                Case 0
                    Me.rbInactivo.Checked = True
            End Select
        End If
    End Sub
End Class