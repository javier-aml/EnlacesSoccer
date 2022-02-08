Public Class ClsConfiguracion

    Friend IdConfiguracion As Byte
    Friend Descripcion As String
    Friend ValorNumerico As Decimal
    Friend ValorAlfanumerico As String
    Friend ValorFecha As Date
    Friend GuardaFecha As Boolean
    Friend GuardaNumerico As Boolean
    Friend Activa As Boolean
    Friend IdUsuario As Byte

    Friend Ids As New ArrayList



    Friend Sub Guardar()
        Try
            Dim Cadena As String

            Cadena = "SET DATEFORMAT DMY"
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()

            Cadena = ""

            Cadena = "GuardaConfiguracion 1,'" & Descripcion & "'," & IIf(GuardaNumerico = True, ValorNumerico, "NULL") & ",'" & ValorAlfanumerico & "'," & IIf(GuardaFecha = True, "'" + FechaHora(ValorFecha) + "'", "NULL") & "," & IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Actualizar()
        Try
            Dim Cadena As String

            Cadena = "SET DATEFORMAT DMY"
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()

            Cadena = ""

            Cadena = "ActualizaConfiguracion 1," & IdConfiguracion & ",'" & Descripcion & "'," & IIf(GuardaNumerico = True, ValorNumerico, "NULL") & ",'" & ValorAlfanumerico & "'," & IIf(GuardaFecha = True, "'" + FechaHora(ValorFecha) + "'", "NULL") & "," & IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Eliminar()
        Try
            Dim Cadena As String
            Cadena = "EliminaConfiguracion 1," & IdConfiguracion & "," & IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Activar()
        Try
            Dim Cadena As String
            Cadena = "ActivarConfiguracion 1," & IdConfiguracion & "," & IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub


    'Friend Sub Buscar(ByRef LvResultados As ListView, ByVal Cadena As String)
    '    Dim SR As SqlClient.SqlDataReader
    '    Conexion.Comando.CommandText = "BuscaConfiguracion '" & Cadena & "'"
    '    SR = Conexion.Comando.ExecuteReader
    '    LvResultados.Items.Clear()
    '    Dim Contador As Short
    '    If SR.HasRows = True Then
    '        While SR.Read
    '            Contador += 1
    '            Dim Elemento As New ListViewItem
    '            Elemento.Text = SR.Item("DESCRIPCION")
    '            Elemento.Tag = SR.Item("IDJUGADOR")
    '            Elemento.SubItems.Add(SR.Item("ACTIVO"))
    '            LvResultados.Items.Add(Elemento)
    '        End While
    '    End If
    '    SR.Close()
    'End Sub

    Public Function Buscar() As DataTable
        Dim comm As SqlClient.SqlCommand
        Dim db As New DBTools
        comm = New SqlClient.SqlCommand("BuscaConfiguracion")
        comm.CommandType = CommandType.StoredProcedure
        comm.Parameters.AddWithValue("@descripcion", Me.Descripcion)
        Dim dt = db.EjecutaCommandoTabla(comm, "DataTable1")
        db = Nothing
        comm = Nothing
        Return dt
    End Function

    Friend Sub ObtieneInformacion()
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "ObtieneConfiguracion 1, " & IdConfiguracion
        SR = Conexion.Comando.ExecuteReader
        Limpiar()
        If SR.HasRows = True Then
            SR.Read()
            Descripcion = SR.Item("DESCRIPCION")            
            ValorAlfanumerico = SR.Item("VALORALFANUMERICO")
            If SR.Item("VALORNUMERICO") Is DBNull.Value Then
                GuardaNumerico = False
            Else
                ValorNumerico = SR.Item("VALORNUMERICO")
                GuardaNumerico = True
            End If

            If SR.Item("VALORFECHA") Is DBNull.Value Then                
                GuardaFecha = False
            Else
                ValorFecha = SR.Item("VALORFECHA")
                GuardaFecha = True
            End If
            Activa = SR.Item("ACTIVA")
        End If

        SR.Close()
    End Sub

    Private Sub Limpiar()
        Descripcion = ""
        ValorNumerico = 0
        ValorAlfanumerico = ""
        ValorFecha = Now
        Activa = 0
    End Sub

    Friend Sub CargaCombo(ByRef Combo As ComboBox, Optional ByVal AgregarTodos As Boolean = False)
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "ObtieneConfiguraciones "
        SR = Conexion.Comando.ExecuteReader
        If SR.HasRows = True Then
            Ids.Clear()
            Combo.Items.Clear()

            'si se indica que hay que agregar el elemento "Todos", se agrega
            If AgregarTodos = True Then
                Combo.Items.Add("Todos")
            End If

            While SR.Read
                Ids.Add(SR.Item("IDCONFIGURACION"))
                Combo.Items.Add(SR.Item("DESCRIPCION"))
            End While
        End If
        SR.Close()
        If Combo.Items.Count > 0 Then
            Combo.SelectedIndex = 0
        End If
    End Sub

   

End Class
