Imports System.Text
Imports System
Imports System.Security.Cryptography

Public Class ClsSeguridad

    Public Algoritmo As SymmetricAlgorithm
    Public Cadena As String
    Public Clave As String

    Public Sub GenerarClave(ByVal Tamaño As Integer)
        If Algoritmo.ValidKeySize(Tamaño) Then
            Algoritmo.KeySize = Tamaño
            Algoritmo.GenerateKey()
            Clave = Convert.ToBase64String(Algoritmo.Key)
        Else
            MsgBox("Tamaño no valido... ")
        End If
    End Sub

    Public Function Encriptar() As String
        Algoritmo.Key = Convert.FromBase64String(Clave)
        Algoritmo.Mode = CipherMode.ECB
        Dim Encripta As ICryptoTransform
        Encripta = Algoritmo.CreateEncryptor

        Dim Dato As Byte()
        Dato = Encoding.Unicode.GetBytes(Cadena)

        Dim DatoEncriptado As Byte()
        DatoEncriptado = Encripta.TransformFinalBlock(Dato, 0, Dato.Length)

        Return Convert.ToBase64String(DatoEncriptado)
    End Function

    Public Function Desencriptar() As String
        if clave <> "" then
            Algoritmo.Key = Convert.FromBase64String(Clave)
            Algoritmo.Mode = CipherMode.ECB

            Dim Desencripta As ICryptoTransform
            Desencripta = Algoritmo.CreateDecryptor

            Dim Dato As Byte()
            Dato = Convert.FromBase64String(Cadena)

            Dim DatoDesencriptado As Byte()
            DatoDesencriptado = Desencripta.TransformFinalBlock(Dato, 0, Dato.Length)

            Return Encoding.Unicode.GetString(DatoDesencriptado)
        End If
    End Function

End Class
