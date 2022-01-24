Imports System.IO
Module ModuloInicio

    Sub Main()
        Conexion.LeerArchivo()
        If Conexion.ExisteArchivo = True Then
            If Conexion.Conectar = True Then
                If ModuloLicencia.LicenciaEsCorrecta Then
                    CargaSistema()
                Else
                    Dim FLicencia As New FrmLicencia
                    FLicencia.ShowDialog()
                    If ModuloLicencia.LicenciaEsCorrecta Then
                        CargaSistema()
                    Else
                        MsgBox("La licencia no es correcta, consulte a su proveedor", MsgBoxStyle.Information, Mensaje)
                    End If
                End If
            Else
                MsgBox("No se realizó la conexión con el Servidor, consulte a su proveedor", MsgBoxStyle.Critical, Mensaje)               
            End If       
        End If
    End Sub


    


    Private Sub CargaSistema()
        Dim FrmPassword As New FrmPassword
        FrmPassword.ShowDialog()
        If Usuario.UsuarioValido = True Then
            Empresa.IdEmpresa = 1
            ObtieneConfiguracionRegional()
            'EstableceFechaEnServidor()
            Dim Principal As New FrmPrincipal
            Principal.ShowDialog()
        End If
    End Sub

End Module

