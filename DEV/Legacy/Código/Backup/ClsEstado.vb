Imports System.Windows.Forms

Public Class ClsEstado
    Public IdEstado As Byte
    Public Estado As String
    Public Ids As New ArrayList

    Friend Sub Guardar()
        'Intrucciones para Guardar
    End Sub

    Friend Sub Actualizar()
        'Intrucciones para Actualizar
    End Sub

    Friend Sub Eliminar()
        'Intrucciones para Eliminar
    End Sub

    Public Sub CargaCombo(ByRef Combo As ComboBox)
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "ObtieneEstados"
        SR = Conexion.Comando.ExecuteReader
        Combo.Items.Clear()
        Ids.Clear()
        If SR.HasRows = True Then
            While SR.Read
                Combo.Items.Add(SR.Item("ESTADO"))
                Ids.Add(SR.Item("IDESTADO"))
            End While
        End If
        SR.Close()
        If Combo.Items.Count > 0 Then
            Combo.SelectedIndex = 0
        End If
    End Sub



End Class
