Public Class ClsArbitros

    Friend IdArbitro As String
    Friend Nombre As String
    Friend Activo As Boolean
    Friend Telefono As String
    Friend IdUsuario As Byte

    Friend Sub Buscar(ByRef LvResultados As ListView, ByVal Cadena As String)
        LvResultados.Items.Clear()
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "BuscarArbitroSel 1,'" & Cadena & "'"
        SR = Conexion.Comando.ExecuteReader
        Dim Contador As Short
        If SR.HasRows = True Then
            While SR.Read
                Contador += 1
                Dim Elemento As New ListViewItem
                Elemento.Text = SR.Item("NOMBRE")
                Elemento.Tag = SR.Item("IDARBITRO")
                Elemento.SubItems.Add(SR.Item("ACTIVO"))
                LvResultados.Items.Add(Elemento)
            End While
        End If
        SR.Close()
    End Sub

    Friend Sub Guardar()
        Try
            Dim Cadena As String
            Cadena = "GuardarArbitroSI 1,'" & Nombre & "'," & IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Actualizar()
        Try
            Dim Cadena As String
            Telefono = 1
            Cadena = "ActualizarArbitroSU 1," & IdArbitro & ",'" & Nombre & "'," & Telefono & "," & IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub ObtieneInformacion()
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "ObtieneArbitroSel 1," & IdArbitro
        SR = Conexion.Comando.ExecuteReader
        Limpiar()
        If SR.HasRows = True Then
            SR.Read()
            Nombre = SR.Item("NOMBRE")
            Telefono = SR.Item("TELEFONO")
        End If
        SR.Close()
    End Sub

    Friend Sub Eliminar()
        Try
            Dim Cadena As String
            Cadena = "EliminarArbitroSD 1," & IdArbitro
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try        
    End Sub


    Friend Sub Activar()
        Try
            Dim Cadena As String
            Cadena = "ActivarArbitro 1," & IdArbitro & "," & IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Public Function Consultar() As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("ConsultarArbitros")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@pnIdLiga", 1)
        comm.Parameters.AddWithValue("@nActivo", Me.Activo)
        Dim dt = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return dt
    End Function


    Private Sub Limpiar()
        Nombre = ""
    End Sub
End Class
