Public Class ClsControl

    Friend Function ValidaControles(ByVal Objeto As Object) As Boolean
        Dim oControl As Control
        For Each oControl In Objeto.controls
            If oControl.GetType.Name = "TextBox" Or oControl.GetType.Name = "ComboBox" Then
                If oControl.Text = "" Then
                    Return False
                End If
            End If
        Next
        Return True
    End Function

End Class
