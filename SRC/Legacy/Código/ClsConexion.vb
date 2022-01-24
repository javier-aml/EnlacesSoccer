Imports System.Data.SqlClient
Imports System.IO

Public Class ClsConexion

    Public Conexion As SqlConnection
    Public Comando As New SqlCommand
    Public Adaptador As New SqlDataAdapter
    Public Servidor As String
    Public BaseDeDatos As String
    Public Usuario As String
    Public Password As String
    Public ExisteArchivo As Boolean


    Public Function Conectar() As Boolean
        Dim Cadena As String
        Cadena = "data source=" & Servidor & ";initial catalog=" & BaseDeDatos & ";user id=" & Usuario & ";password=" & Password & ";"
        'Conexion.ConnectionString = Cadena
        Conexion = New SqlConnection(Cadena)
        Try
            Conexion.Open()
            Comando.Connection = Conexion
            Return True
        Catch
            Return False
        End Try
    End Function

    Public Sub LeerArchivo()
        Dim Texto As StreamReader
        Dim RutaArchivo As String

        RutaArchivo = Ruta.RUTA_ARCHIVOS_CONFIGURACION + "\registro.inf"

        Try
            If File.Exists(RutaArchivo) Then
                Texto = File.OpenText(RutaArchivo)
                Servidor = Texto.ReadLine
                BaseDeDatos = Texto.ReadLine
                Usuario = Texto.ReadLine
                Password = Texto.ReadLine
                Texto.Close()
                ExisteArchivo = True
            Else
                MsgBox("No se encontro el registro de conexión, consulte a su proveedor", MsgBoxStyle.Critical, Mensaje)
                ExisteArchivo = False
            End If
        Catch err As Exception
            MsgBox(err.Message, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub

   


    Public Sub EscribirEnArchivo()
        Dim Texto As StreamWriter
        Dim RutaArchivo As String

        RutaArchivo = Ruta.RUTA_ARCHIVOS_CONFIGURACION + "\registro.inf"

        Try
            File.Delete(RutaArchivo)
            Texto = File.AppendText(RutaArchivo)
            Texto.WriteLine(Servidor)
            Texto.WriteLine(BaseDeDatos)
            Texto.WriteLine(Usuario)
            Texto.WriteLine(Password)
            Texto.Close()
        Catch err As Exception
            MsgBox(err.Message, MsgBoxStyle.Information, Mensaje)
        End Try
    End Sub


End Class
