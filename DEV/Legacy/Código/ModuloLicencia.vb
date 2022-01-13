Imports System.IO
Module ModuloLicencia

    Friend LicenciaArchivo As String
    Friend LicenciaBD As String
    Friend Clave As String

    Friend Function LeerArchivo() As Boolean
        Dim Texto As StreamReader
        Dim RutaArchivo As String


        RutaArchivo = Ruta.RUTA_ARCHIVOS_CONFIGURACION + "\Licencia.inf"

        Try
            If File.Exists(RutaArchivo) Then
                Texto = File.OpenText(RutaArchivo)
                LicenciaArchivo = Texto.ReadLine
                Texto.Close()
                Return True
            Else
                MsgBox("No se encontro la Licencia del producto", MsgBoxStyle.Critical, Mensaje)
                Return False
            End If
        Catch err As Exception
            MsgBox(err.Message, MsgBoxStyle.Information, Mensaje)
        End Try
    End Function

    Friend Sub EscribirEnArchivo()
        Dim Texto As StreamWriter
        Dim RutaArchivo As String

        RutaArchivo = Ruta.RUTA_ARCHIVOS_CONFIGURACION + "\Licencia.inf"

        Try            
            File.Delete(RutaArchivo)
            Texto = File.AppendText(RutaArchivo)
            Texto.WriteLine(LicenciaArchivo)
            Texto.Close()
        Catch err As Exception
            MsgBox(err.Message, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Function LicenciaEsCorrecta() As Boolean
        ObtenerLicencia()
        If LeerArchivo() = True Then
            If LicenciaArchivo = LicenciaBD Then
                Return True
            Else
                Return False
            End If
        End If
        Return False
    End Function

    Friend Sub Guardar()
        Try
            Dim Cadena As String
            Cadena = "GuardaLicencia '" & LicenciaBD & "','" & Clave & "'"
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

    Friend Sub Actualizar()
        Try
            Dim Cadena As String
            Cadena = "ActualizaLicencia '" & LicenciaBD & "'"
            Conexion.Comando.CommandText = Cadena
            Conexion.Comando.ExecuteNonQuery()
        Catch
            MsgBox(Err.Description, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub


    Friend Sub ObtenerLicencia()
        Dim SR As SqlClient.SqlDataReader
        Conexion.Comando.CommandText = "ObtieneLicencia"
        SR = Conexion.Comando.ExecuteReader
        Limpiar()
        If SR.HasRows = True Then
            SR.Read()
            LicenciaBD = SR.Item("LICENCIA")
            Clave = SR.Item("CLAVE")
        End If
        SR.Close()
    End Sub

    Private Sub Limpiar()
        LicenciaBD = ""
    End Sub



End Module
