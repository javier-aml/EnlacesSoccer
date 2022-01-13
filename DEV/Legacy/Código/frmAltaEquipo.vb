Public Class frmAltaEquipo
    Dim cEquipo As ClsEquipo

    Private Sub frmAdminClientes_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        Me.cEquipo = Nothing
    End Sub


    Private Sub frmAdminClientes_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.cEquipo = New ClsEquipo
        If Me.Tag <> 0 Then
            'Editar
            Me.Text = "Modificar el equipo"
            Me.cEquipo.cargar(Me.Tag)
            Select Case Me.cEquipo.activo
                Case 1
                    Me.rbActivo.Checked = True
                Case 0
                    Me.rbInactivo.Checked = True
            End Select
        Else
            Me.Text = "Agregar equipo"
        End If
        Me.inicializaBindings()
    End Sub


    Private Sub inicializaBindings()
        Me.txtNombre.DataBindings.Add("Text", cEquipo, "nombre")
    End Sub

    Private Sub BtnGuardar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnGuardar.Click
        cEquipo.nombrePcMod = "Mi_MACHETE"
        If Me.Tag <> 0 Then
            Me.ErrorProvider1.DataSource = Me.cEquipo
            If Me.cEquipo.Error = "" Then
                Dim aux As Integer
                aux = cEquipo.activo
                Select Case Me.rbActivo.Checked
                    Case True
                        Me.cEquipo.activo = 1
                    Case False
                        Me.cEquipo.activo = 0
                End Select
               
                If (ValidarModificacionTorneoEquipo(aux) = True) Then
                    MsgBox("No se puede desactivar el equipo ya que esta participando en un torneo!")
                Else
                    cEquipo.actualizar()
                    MsgBox("Equipo actualizado satisfactoriamente!")
                End If
                Me.Close()

            Else
                MsgBox(Me.cEquipo.Error)
                Me.ErrorProvider1.UpdateBinding()
            End If
        Else
            Me.ErrorProvider1.DataSource = Me.cEquipo
            If Me.cEquipo.Error = "" Then
                Select Case Me.rbActivo.Checked
                    Case True
                        Me.cEquipo.activo = 1
                    Case False
                        Me.cEquipo.activo = 0
                End Select

                If cEquipo.existeEquipo(cEquipo.nombre) = False Then
                    cEquipo.registrar()
                    MsgBox("Equipo registrado satisfactoriamente!")
                Else
                    MsgBox("El equipo que intenta registrar ya existe!")
                End If
                Me.Close()

            Else
                MsgBox(Me.cEquipo.Error)
                Me.ErrorProvider1.UpdateBinding()
            End If

        End If
    End Sub
    Private Function ValidarModificacionTorneoEquipo(ByVal aux As Integer) As Boolean
        Dim resultado As Boolean = False
        If aux <> cEquipo.activo And cEquipo.activo = 0 Then
            resultado = cEquipo.EstaEnTorneoEquipo(cEquipo.idEquipo)
        End If
        Return resultado
    End Function

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.Close()
    End Sub


End Class
