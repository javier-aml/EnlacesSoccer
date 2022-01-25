Public Class FrmNuevoArbitro
    Private Sub BtnGuardar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnGuardar.Click
        Guardar()
    End Sub

    Private Sub Guardar()
        If Me.TxtNombre.Text <> "" Then
            AsignarValoresaClase()
            If AccionArbitro.Accion = AccionArbitro.Acciones.Nuevo Then
                Arbitro.Guardar()
            Else
                Arbitro.Actualizar()
            End If
            AccionArbitro.Accion = AccionArbitro.Acciones.Guardado
            Me.Close()
        Else
            MsgBox("Faltan datos, favor de verificar", MsgBoxStyle.Information, Mensaje)
        End If
        AccionArbitro.Accion = ClsAccion.Acciones.Guardado
    End Sub

    Private Sub FrmNuevoArbitro_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        If AccionArbitro.Accion = AccionArbitro.Acciones.Modificar Then
            Me.Text = "Modificar Arbitro"
            Arbitro.ObtieneInformacion()
            AsignarValoresaControles()
        Else
            Me.Text = "Agregar Arbitro"
        End If
    End Sub

    Private Sub AsignarValoresaClase()
        With Arbitro
            .Nombre = Me.TxtNombre.Text
            .IdUsuario = Usuario.IdUsuario
        End With
    End Sub

    Private Sub AsignarValoresaControles()
        With Arbitro
            Me.TxtNombre.Text = .Nombre
        End With
    End Sub

    Private Sub BtnCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnCancelar.Click
        Me.Close()
    End Sub
End Class