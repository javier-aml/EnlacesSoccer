Imports System.Security.Cryptography

Public Class ClsUsuario

    Friend IdEmpleado As Byte
    Friend IdUsuario As Byte
    Friend Usuario As String
    Friend Password As String
    Friend Clave As String
    Friend UsuarioValido As Boolean
    Friend Ids As New ArrayList

    Friend Sub Guardar()
        Try
            Dim Cadena As String
            Cadena = "GuardaUsuario " & IdEmpleado & ",'" & Usuario & "','" & Password & "','" & Clave & "'"
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Actualizar()
        Try
            Dim Cadena As String
            Cadena = "ActualizaUsuario " & IdEmpleado & "," & IdUsuario & ",'" & Usuario & "','" & Password & "','" & Clave & "'"
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Eliminar()
        Try
            Dim Cadena As String
            Cadena = "EliminaUsuario " & IdEmpleado & "," & IdUsuario
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub VerificaSiExisteUsuario()
        Try

            Dim SR As SqlClient.SqlDataReader
            Conexion.Comando.CommandText = "VerificaSiExisteUsuario '" & Usuario & "'"
            SR = Conexion.Comando.ExecuteReader
            SR.Read()
            Clave = SR.Item("clave")
            SR.Close()
            If Clave <> "" Then
                Seguridad.Algoritmo = New System.Security.Cryptography.RijndaelManaged
                Seguridad.Clave = Clave
                Seguridad.Cadena = Password

                VerificaUsuario()
            Else
                MsgBox("El nombre de usuario no es valido", MsgBoxStyle.Exclamation, Mensaje)
                UsuarioValido = False
            End If
        Catch ex As Exception
            MsgBox(ex.InnerException.Message, MsgBoxStyle.Exclamation, Mensaje)
        End Try

    End Sub

    Private Sub VerificaUsuario()
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "VerificaUsuario '" & Usuario & "','" & Seguridad.Encriptar & "'"
        SR = Conexion.Comando.ExecuteReader
        SR.Read()
        If SR.Item("idusuario") > 0 Then
            If SR.Item("activo") = True Then
                UsuarioValido = True                
                Acceso.IdUsuario = SR.Item("idusuario")
                IdUsuario = SR.Item("idusuario")
            Else
                MsgBox("La cuenta de usuario esta cancelada", MsgBoxStyle.Exclamation, Mensaje)
                UsuarioValido = False
            End If
        Else
            MsgBox("La cuenta de usuario no es valida", MsgBoxStyle.Exclamation, Mensaje)
            UsuarioValido = False
        End If

        SR.Close()
    End Sub

    Friend Sub Buscar(ByRef LvResultados As ListView, ByVal Cadena As String)
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "BuscaUsuario '" & Cadena & "'"
        SR = Conexion.Comando.ExecuteReader
        LvResultados.Items.Clear()
        If SR.HasRows = True Then
            While SR.Read
                Dim Elemento As New ListViewItem
                Elemento.Text = SR.Item("NOMBRECOMPLETO")
                Elemento.Tag = SR.Item("IDEMPLEADO") & "-" & SR.Item("IDUSUARIO")
                Elemento.SubItems.Add(SR.Item("USUARIO"))
                LvResultados.Items.Add(Elemento)
            End While
        End If
        SR.Close()
    End Sub

    Friend Sub ObtieneInformacion()
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "ObtieneUsuario " & IdEmpleado & "," & IdUsuario
        SR = Conexion.Comando.ExecuteReader
        Limpiar()
        If SR.HasRows = True Then
            SR.Read()
            Usuario = SR.Item("USUARIO")
            Password = SR.Item("PASSWORD")
            Clave = SR.Item("CLAVE")
        End If
        SR.Close()
    End Sub

    Friend Sub CargaCheckedListBox(ByRef ClbLista As CheckedListBox)
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "ObtieneUsuarios "
        SR = Conexion.Comando.ExecuteReader
        If SR.HasRows = True Then
            ClbLista.Items.Clear()
            Ids.Clear()
            While SR.Read()
                ClbLista.Items.Add(SR.Item("USUARIO"))
                Ids.Add(SR.Item("IDEMPLEADO") & "-" & SR.Item("IDUSUARIO"))
            End While
        End If
        SR.Close()
    End Sub


    Private Sub Limpiar()
        Usuario = ""
        Password = ""
        Clave = ""
    End Sub




End Class
