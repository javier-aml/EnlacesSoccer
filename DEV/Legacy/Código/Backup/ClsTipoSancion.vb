Public Class ClsTipoSancion


    Friend IdTipoSancion As Byte
    Friend Clave As String
    Friend Descripcion As String
    Friend JuegosSuspension As Byte
    Friend Activa As Boolean
    Friend IdUsuario As Byte
    Friend CausaBaja As Boolean


    Friend Ids As New ArrayList



    Friend Sub Guardar()
        Try
            Dim Cadena As String
            Cadena = "GuardaTipoSancion '" & Clave & "','" & Descripcion & "'," & JuegosSuspension & "," & CausaBaja & "," & IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Actualizar()
        Try
            Dim Cadena As String
            Cadena = "ActualizaTipoSancion " & IdTipoSancion & ",'" & Clave & "','" & Descripcion & "'," & JuegosSuspension & CausaBaja & "," & IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Eliminar()
        Try
            Dim Cadena As String
            Cadena = "EliminaTipoSancion " & IdTipoSancion & "," & IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Activar()
        Try
            Dim Cadena As String
            Cadena = "ActivarTipoSancion " & IdTipoSancion & "," & IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub


    Friend Sub Buscar(ByRef LvResultados As ListView, ByVal Cadena As String)
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "BuscaTipoSancion '" & Cadena & "'"
        SR = Conexion.Comando.ExecuteReader
        LvResultados.Items.Clear()
        Dim Contador As Short
        If SR.HasRows = True Then
            While SR.Read
                Contador += 1
                Dim Elemento As New ListViewItem
                Elemento.Text = SR.Item("CLAVE")
                Elemento.Tag = SR.Item("IDTIPOSANCION")
                Elemento.SubItems.Add(SR.Item("DESCRIPCION"))
                Elemento.SubItems.Add(SR.Item("JUEGOSSUSPENSION"))
                Elemento.SubItems.Add(SR.Item("CAUSABAJA"))
                Elemento.SubItems.Add(SR.Item("ACTIVA"))
                LvResultados.Items.Add(Elemento)
            End While
        End If
        SR.Close()
    End Sub

    Public Function Consultar() As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("BuscaTipoSancion")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@descripcion", Me.Descripcion)
        Dim dt = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return dt
    End Function

    Public Function ConsultarSanciones() As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("SancionesSel")
        comm.CommandType = CommandType.StoredProcedure
        Dim dt = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return dt
    End Function

    Friend Sub ObtieneInformacion()
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "ObtieneTipoSancion " & IdTipoSancion
        SR = Conexion.Comando.ExecuteReader
        Limpiar()
        If SR.HasRows = True Then
            SR.Read()
            Clave = SR.Item("CLAVE")
            Descripcion = SR.Item("DESCRIPCION")
            JuegosSuspension = SR.Item("JUEGOSSUSPENSION")
            CausaBaja = SR.Item("CAUSABAJA")
            Activa = SR.Item("ACTIVA")
        End If
        SR.Close()
    End Sub

    Private Sub Limpiar()
        Clave = ""
        Descripcion = ""
        JuegosSuspension = 0
        CausaBaja = False
        Activa = 0
    End Sub

    Friend Sub CargaCombo(ByRef Combo As ComboBox, Optional ByVal AgregarTodos As Boolean = False)
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "ObtieneTiposDeSancion "
        SR = Conexion.Comando.ExecuteReader
        If SR.HasRows = True Then
            Ids.Clear()
            Combo.Items.Clear()

            'si se indica que hay que agregar el elemento "Todos", se agrega
            If AgregarTodos = True Then
                Combo.Items.Add("Todos")
            End If

            While SR.Read
                Ids.Add(SR.Item("IDTIPOSANCION"))
                Combo.Items.Add(SR.Item("CLAVE") & " - " & SR.Item("DESCRIPCION"))
            End While
        End If
        SR.Close()
        If Combo.Items.Count > 0 Then
            Combo.SelectedIndex = 0
        End If
    End Sub

   

End Class
