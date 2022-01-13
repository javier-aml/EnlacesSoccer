Public Class FrmCapturaObservaciones

    Friend idTorneo As Int16
    Friend idJornada As Int16
    Friend idEquipo1 As Int16
    Friend idEquipo2 As Int16
    Friend observaciones As String
    Friend jorPar As JornadaPartido

    Private Sub btnGuardar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnGuardar.Click
        observaciones = txtObservaciones.Text
        Me.Close()
    End Sub

    Private Sub btnCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCancelar.Click
        Me.Close()
    End Sub

    Private Sub FrmCapturaObservaciones_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        txtObservaciones.Text = observaciones
    End Sub
End Class