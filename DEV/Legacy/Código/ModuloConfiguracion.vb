Imports System.Globalization

Module ModuloConfiguracion

    Friend Enum Configuraciones
        Mexico
        España
        Otro
    End Enum

    Friend Configuracion As Configuraciones

    Friend Sub ObtieneConfiguracionRegional()
        Dim Cultura As CultureInfo
        Select Case Cultura.CurrentCulture.Name
            Case "es-MX"
                Configuracion = Configuraciones.Mexico
            Case "es-ES"
                Configuracion = Configuraciones.España
            Case Else
                Configuracion = Configuraciones.Otro
        End Select
    End Sub

    Friend Sub CambiaFormatoDecimal()
        Dim Cultura As CultureInfo
        Dim Formato As NumberFormatInfo = New CultureInfo(Cultura.CurrentCulture.ToString, False).NumberFormat
        Formato.NumberDecimalSeparator = "."
        Formato.NumberDecimalDigits = 2

    End Sub

End Module
