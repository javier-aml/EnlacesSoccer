Public Class FrmNuevoConfiguracion

    Private Sub BtnCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnCancelar.Click
        Me.Close()
    End Sub



    Private Sub FrmNuevoConfiguracion_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If AccionConfiguracion.Accion = AccionConfiguracion.Acciones.Modificar Then
            Me.Text = "Modificar Configuración"
            ConfiguracionSys.ObtieneInformacion()
            AsignarValoresaControles()
        Else
            Me.Text = "Agregar Configuración"
        End If
    End Sub

    Private Sub BtnGuardar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnGuardar.Click
        If Me.TxtDescripcion.Text <> "" And (Me.TxtValorAlfanumerico.Text <> "" Or Me.TxtValorNumerico.Text <> "" Or Me.DtpValorFecha.Checked = True) Then
            AsignarValoresaClase()
            If AccionConfiguracion.Accion = AccionConfiguracion.Acciones.Nuevo Then
                ConfiguracionSys.Guardar()
            Else
                ConfiguracionSys.Actualizar()
            End If
            AccionConfiguracion.Accion = AccionConfiguracion.Acciones.Guardado
            Me.Close()
        Else
            MsgBox("Faltan datos, favor de verificar", MsgBoxStyle.Information, Mensaje)
        End If
    End Sub


    Private Sub AsignarValoresaClase()
        With ConfiguracionSys
            .Descripcion = Me.TxtDescripcion.Text
            If Me.TxtValorNumerico.Text <> "" Then
                .ValorNumerico = Me.TxtValorNumerico.Text
                .GuardaNumerico = True
            Else                
                .GuardaNumerico = False
            End If


            .ValorAlfanumerico = Me.TxtValorAlfanumerico.Text
            .ValorFecha = Me.DtpValorFecha.Value
            .GuardaFecha = Me.DtpValorFecha.Checked
            .IdUsuario = Usuario.IdUsuario
        End With
    End Sub



    Private Sub AsignarValoresaControles()
        With ConfiguracionSys
            Me.TxtDescripcion.Text = .Descripcion
            If .GuardaNumerico = True Then
                Me.TxtValorNumerico.Text = .ValorNumerico
            Else
                Me.TxtValorNumerico.Text = ""
            End If

            Me.TxtValorAlfanumerico.Text = .ValorAlfanumerico
            If .GuardaFecha = True Then
                Me.DtpValorFecha.Value = .ValorFecha
                Me.DtpValorFecha.Checked = True
            Else
                Me.DtpValorFecha.Value = Now
                Me.DtpValorFecha.Checked = False
            End If

        End With
    End Sub


    Private Sub TxtValorNumerico_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles TxtValorNumerico.KeyPress
        Dim caracter As Char = e.KeyChar

        If sender.text.indexof(".") <> -1 And Char.IsPunctuation(caracter) Then
            e.KeyChar = Chr(0)
        End If

        If Not Char.IsPunctuation(caracter) And Not Char.IsNumber(caracter) And caracter <> ChrW(Keys.Back) Then
            e.KeyChar = Chr(0)
        End If
    End Sub


    Private Sub TxtValorNumerico_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TxtValorNumerico.TextChanged

    End Sub
End Class