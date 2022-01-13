Public Class FrmNuevoTipoSancion

    Private Sub BtnCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnCancelar.Click
        Me.Close()
    End Sub

    Private Sub FrmNuevoTipoSancion_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If AccionTipoSancion.Accion = AccionTipoSancion.Acciones.Modificar Then
            Me.Text = "Modificar Tipo de Sanción"
            TipoSancion.ObtieneInformacion()
            AsignarValoresaControles()
        Else
            Me.Text = "Agregar Tipo de Sanción"
        End If
    End Sub

    Private Sub BtnGuardar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnGuardar.Click
        If Me.TxtClave.Text <> "" Then
            AsignarValoresaClase()
            If AccionTipoSancion.Accion = AccionTipoSancion.Acciones.Nuevo Then
                TipoSancion.Guardar()
            Else
                TipoSancion.Actualizar()
            End If
            AccionTipoSancion.Accion = AccionTipoSancion.Acciones.Guardado
            Me.Close()
        Else
            MsgBox("Faltan datos, favor de verificar", MsgBoxStyle.Information, Mensaje)
        End If
    End Sub

    Private Sub AsignarValoresaClase()
        With TipoSancion
            .Clave = Me.TxtClave.Text
            .Descripcion = Me.TxtDescripcion.Text
            .JuegosSuspension = Me.TxtJuegosSuspension.Text
            .CausaBaja = Me.ChkCausaBaja.Checked
            .IdUsuario = Usuario.IdUsuario
        End With
    End Sub

    Private Sub AsignarValoresaControles()
        With TipoSancion
            Me.TxtClave.Text = .Clave
            Me.TxtDescripcion.Text = .Descripcion
            Me.TxtJuegosSuspension.Text = .JuegosSuspension
            Me.ChkCausaBaja.Checked = .CausaBaja
        End With
    End Sub

    Private Sub TxtJuegosSuspension_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles TxtJuegosSuspension.KeyPress
        Dim caracter As Char = e.KeyChar

        If Not Char.IsNumber(caracter) And (caracter = ChrW(Keys.Back)) = False Then
            e.KeyChar = Chr(0)
        End If
    End Sub


  


End Class