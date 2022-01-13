Public Class FrmNuevoJugador
    Inherits System.Windows.Forms.Form

#Region " Código generado por el Diseñador de Windows Forms "

    Public Sub New()
        MyBase.New()

        'El Diseñador de Windows Forms requiere esta llamada.
        InitializeComponent()

        'Agregar cualquier inicialización después de la llamada a InitializeComponent()

    End Sub

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms requiere el siguiente procedimiento
    'Puede modificarse utilizando el Diseñador de Windows Forms. 
    'No lo modifique con el editor de código.
    Friend WithEvents BtnGuardar As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents TxtNombre As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents btnfoto As System.Windows.Forms.Button
    Friend WithEvents OpenFileDialog1 As System.Windows.Forms.OpenFileDialog
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents txtNomina As System.Windows.Forms.TextBox
    Friend WithEvents lblnomina As System.Windows.Forms.Label
    Friend WithEvents txtContratista As System.Windows.Forms.TextBox
    Friend WithEvents lblContratista As System.Windows.Forms.Label
    Friend WithEvents txtPlanta As System.Windows.Forms.TextBox
    Friend WithEvents lblPlanta As System.Windows.Forms.Label
    Friend WithEvents txtNumeroCamisa As System.Windows.Forms.TextBox
    Friend WithEvents lblNumeroCamisa As System.Windows.Forms.Label
    Friend WithEvents txtArea As System.Windows.Forms.TextBox
    Friend WithEvents lblArea As System.Windows.Forms.Label
    Friend WithEvents BtnCancelar As System.Windows.Forms.Button
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmNuevoJugador))
        Me.BtnCancelar = New System.Windows.Forms.Button
        Me.BtnGuardar = New System.Windows.Forms.Button
        Me.Label1 = New System.Windows.Forms.Label
        Me.TxtNombre = New System.Windows.Forms.TextBox
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.txtNumeroCamisa = New System.Windows.Forms.TextBox
        Me.lblNumeroCamisa = New System.Windows.Forms.Label
        Me.txtArea = New System.Windows.Forms.TextBox
        Me.lblArea = New System.Windows.Forms.Label
        Me.txtContratista = New System.Windows.Forms.TextBox
        Me.lblContratista = New System.Windows.Forms.Label
        Me.txtPlanta = New System.Windows.Forms.TextBox
        Me.lblPlanta = New System.Windows.Forms.Label
        Me.txtNomina = New System.Windows.Forms.TextBox
        Me.lblnomina = New System.Windows.Forms.Label
        Me.OpenFileDialog1 = New System.Windows.Forms.OpenFileDialog
        Me.btnfoto = New System.Windows.Forms.Button
        Me.PictureBox1 = New System.Windows.Forms.PictureBox
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.GroupBox1.SuspendLayout()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox2.SuspendLayout()
        Me.SuspendLayout()
        '
        'BtnCancelar
        '
        Me.BtnCancelar.BackColor = System.Drawing.SystemColors.Control
        Me.BtnCancelar.Image = CType(resources.GetObject("BtnCancelar.Image"), System.Drawing.Image)
        Me.BtnCancelar.Location = New System.Drawing.Point(879, 296)
        Me.BtnCancelar.Name = "BtnCancelar"
        Me.BtnCancelar.Size = New System.Drawing.Size(74, 32)
        Me.BtnCancelar.TabIndex = 8
        Me.BtnCancelar.UseVisualStyleBackColor = False
        '
        'BtnGuardar
        '
        Me.BtnGuardar.BackColor = System.Drawing.SystemColors.Control
        Me.BtnGuardar.Image = CType(resources.GetObject("BtnGuardar.Image"), System.Drawing.Image)
        Me.BtnGuardar.Location = New System.Drawing.Point(782, 296)
        Me.BtnGuardar.Name = "BtnGuardar"
        Me.BtnGuardar.Size = New System.Drawing.Size(74, 32)
        Me.BtnGuardar.TabIndex = 7
        Me.BtnGuardar.UseVisualStyleBackColor = False
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(16, 27)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(57, 20)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Nombre:"
        '
        'TxtNombre
        '
        Me.TxtNombre.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TxtNombre.Location = New System.Drawing.Point(16, 61)
        Me.TxtNombre.MaxLength = 150
        Me.TxtNombre.Name = "TxtNombre"
        Me.TxtNombre.Size = New System.Drawing.Size(339, 25)
        Me.TxtNombre.TabIndex = 1
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.txtNumeroCamisa)
        Me.GroupBox1.Controls.Add(Me.lblNumeroCamisa)
        Me.GroupBox1.Controls.Add(Me.txtArea)
        Me.GroupBox1.Controls.Add(Me.lblArea)
        Me.GroupBox1.Controls.Add(Me.txtContratista)
        Me.GroupBox1.Controls.Add(Me.lblContratista)
        Me.GroupBox1.Controls.Add(Me.txtPlanta)
        Me.GroupBox1.Controls.Add(Me.lblPlanta)
        Me.GroupBox1.Controls.Add(Me.txtNomina)
        Me.GroupBox1.Controls.Add(Me.lblnomina)
        Me.GroupBox1.Controls.Add(Me.TxtNombre)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Location = New System.Drawing.Point(171, 12)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(782, 269)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        '
        'txtNumeroCamisa
        '
        Me.txtNumeroCamisa.Location = New System.Drawing.Point(384, 225)
        Me.txtNumeroCamisa.Name = "txtNumeroCamisa"
        Me.txtNumeroCamisa.Size = New System.Drawing.Size(339, 25)
        Me.txtNumeroCamisa.TabIndex = 6
        '
        'lblNumeroCamisa
        '
        Me.lblNumeroCamisa.AutoSize = True
        Me.lblNumeroCamisa.Location = New System.Drawing.Point(380, 192)
        Me.lblNumeroCamisa.Name = "lblNumeroCamisa"
        Me.lblNumeroCamisa.Size = New System.Drawing.Size(72, 20)
        Me.lblNumeroCamisa.TabIndex = 10
        Me.lblNumeroCamisa.Text = "N°Jugador:"
        '
        'txtArea
        '
        Me.txtArea.Location = New System.Drawing.Point(16, 225)
        Me.txtArea.MaxLength = 50
        Me.txtArea.Name = "txtArea"
        Me.txtArea.Size = New System.Drawing.Size(339, 25)
        Me.txtArea.TabIndex = 5
        '
        'lblArea
        '
        Me.lblArea.AutoSize = True
        Me.lblArea.Location = New System.Drawing.Point(16, 192)
        Me.lblArea.Name = "lblArea"
        Me.lblArea.Size = New System.Drawing.Size(37, 20)
        Me.lblArea.TabIndex = 8
        Me.lblArea.Text = "Area:"
        '
        'txtContratista
        '
        Me.txtContratista.Location = New System.Drawing.Point(384, 140)
        Me.txtContratista.MaxLength = 50
        Me.txtContratista.Name = "txtContratista"
        Me.txtContratista.Size = New System.Drawing.Size(339, 25)
        Me.txtContratista.TabIndex = 4
        '
        'lblContratista
        '
        Me.lblContratista.AutoSize = True
        Me.lblContratista.Location = New System.Drawing.Point(380, 107)
        Me.lblContratista.Name = "lblContratista"
        Me.lblContratista.Size = New System.Drawing.Size(71, 20)
        Me.lblContratista.TabIndex = 6
        Me.lblContratista.Text = "Contratista:"
        '
        'txtPlanta
        '
        Me.txtPlanta.Location = New System.Drawing.Point(384, 61)
        Me.txtPlanta.MaxLength = 50
        Me.txtPlanta.Name = "txtPlanta"
        Me.txtPlanta.Size = New System.Drawing.Size(339, 25)
        Me.txtPlanta.TabIndex = 2
        '
        'lblPlanta
        '
        Me.lblPlanta.AutoSize = True
        Me.lblPlanta.Location = New System.Drawing.Point(380, 27)
        Me.lblPlanta.Name = "lblPlanta"
        Me.lblPlanta.Size = New System.Drawing.Size(47, 20)
        Me.lblPlanta.TabIndex = 4
        Me.lblPlanta.Text = "Planta:"
        '
        'txtNomina
        '
        Me.txtNomina.Location = New System.Drawing.Point(16, 140)
        Me.txtNomina.Name = "txtNomina"
        Me.txtNomina.Size = New System.Drawing.Size(339, 25)
        Me.txtNomina.TabIndex = 3
        '
        'lblnomina
        '
        Me.lblnomina.AutoSize = True
        Me.lblnomina.Location = New System.Drawing.Point(16, 107)
        Me.lblnomina.Name = "lblnomina"
        Me.lblnomina.Size = New System.Drawing.Size(91, 20)
        Me.lblnomina.TabIndex = 2
        Me.lblnomina.Text = "N° de Nomina:"
        '
        'OpenFileDialog1
        '
        Me.OpenFileDialog1.FileName = "OpenFileDialog1"
        '
        'btnfoto
        '
        Me.btnfoto.BackColor = System.Drawing.Color.Azure
        Me.btnfoto.Location = New System.Drawing.Point(6, 20)
        Me.btnfoto.Name = "btnfoto"
        Me.btnfoto.Size = New System.Drawing.Size(141, 35)
        Me.btnfoto.TabIndex = 2
        Me.btnfoto.Text = "Fotografia"
        Me.btnfoto.UseVisualStyleBackColor = False
        '
        'PictureBox1
        '
        Me.PictureBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.PictureBox1.Location = New System.Drawing.Point(6, 61)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(141, 202)
        Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.PictureBox1.TabIndex = 3
        Me.PictureBox1.TabStop = False
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.PictureBox1)
        Me.GroupBox2.Controls.Add(Me.btnfoto)
        Me.GroupBox2.Location = New System.Drawing.Point(12, 12)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(153, 269)
        Me.GroupBox2.TabIndex = 8
        Me.GroupBox2.TabStop = False
        '
        'FrmNuevoJugador
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(6, 18)
        Me.BackColor = System.Drawing.Color.LightSteelBlue
        Me.ClientSize = New System.Drawing.Size(965, 335)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.BtnCancelar)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.BtnGuardar)
        Me.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "FrmNuevoJugador"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Agregar Jugador"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox2.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub

#End Region

    Public KeyAscii As Short

    Private Sub FrmNuevoCliente_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.PictureBox1.Image = Nothing
        If AccionJugador.Accion = AccionJugador.Acciones.Modificar Then
            Me.Text = "Modificar Jugador"
            Jugador.ObtieneInformacion()
            AsignarValoresaControles()
        Else
            Me.Text = "Agregar Jugador"
        End If
    End Sub


    Private Sub BtnCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnCancelar.Click
        Me.Close()
    End Sub


    Private Sub BtnGuardar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnGuardar.Click
        If Me.TxtNombre.Text <> "" Then
            AsignarValoresaClase()
            If AccionJugador.Accion = AccionJugador.Acciones.Nuevo Then
                Jugador.Guardar()
            Else
                Jugador.Actualizar()
            End If
            AccionJugador.Accion = AccionJugador.Acciones.Guardado
            Me.Close()
        Else
            MsgBox("Faltan datos, favor de verificar", MsgBoxStyle.Information, Mensaje)
        End If
    End Sub

    Private Sub AsignarValoresaClase()
        With Jugador
            .Nombre = Me.TxtNombre.Text
            .IdUsuario = Usuario.IdUsuario
            If Me.OpenFileDialog1.FileName <> "OpenFileDialog1" Then
                .Foto = Me.OpenFileDialog1.FileName
            Else
                .Foto = ""
            End If
            If Trim(Me.txtNomina.Text) <> "" Then
                .NumeroNomina = CInt(Me.txtNomina.Text)
            Else
                .NumeroNomina = 0
            End If
            .Planta = Me.txtPlanta.Text
            .Contratista = Me.txtContratista.Text
            .Area = Me.txtArea.Text
            If Me.txtNumeroCamisa.Text <> "" Then
                .NumeroJugador = CInt(Me.txtNumeroCamisa.Text)
            Else
                .NumeroJugador = 0
            End If
        End With
    End Sub

    Private Sub AsignarValoresaControles()
        With Jugador
            Me.TxtNombre.Text = .Nombre
            Me.txtNomina.Text = .NumeroNomina
            If Not .Imagen Is Nothing Then
                Me.PictureBox1.Image = .Imagen
            Else
                Me.PictureBox1.Image = Nothing
            End If
            Me.txtPlanta.Text = .Planta
            Me.txtContratista.Text = .Contratista
            Me.txtArea.Text = .Area
            Me.txtNumeroCamisa.Text = .NumeroJugador
        End With
    End Sub

    Private Sub btnfoto_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnfoto.Click
        Dim filename As String
        OpenFileDialog1.Filter = "Images (*.BMP;*.JPG;*.GIF)|*.BMP;*.JPG;*.GIF|All files (*.*)|*.*"
        '//Set the openFileDialog's FileName to nothing.
        OpenFileDialog1.FileName = ""
        '//Show the openFileDialog
        If OpenFileDialog1.ShowDialog(Me) = DialogResult.OK Then
            '//To do code if the Open button was pressed
            '//Use something like:
            filename = OpenFileDialog1.FileName
            PictureBox1.Image = Image.FromFile(filename)
        Else
            Return
        End If
    End Sub


    Private Sub txtNomina_KeyPress(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtNomina.KeyPress
        Dim KeyAscii As Short = CShort(Asc(e.KeyChar))
        KeyAscii = CShort(SoloNumeros(KeyAscii))
        If KeyAscii = 0 Then
            e.Handled = True
        End If
    End Sub

    Function SoloNumeros(ByVal Keyascii As Short) As Short
        If InStr("1234567890", Chr(Keyascii)) = 0 Then
            SoloNumeros = 0
        Else
            SoloNumeros = Keyascii
        End If
        Select Case Keyascii
            Case 8
                SoloNumeros = Keyascii
            Case 13
                SoloNumeros = Keyascii
        End Select
    End Function


    Private Sub TextBox2_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtNumeroCamisa.KeyPress
        Dim KeyAscii As Short = CShort(Asc(e.KeyChar))
        KeyAscii = CShort(SoloNumeros(KeyAscii))
        If KeyAscii = 0 Then
            e.Handled = True
        End If
    End Sub

   
End Class
