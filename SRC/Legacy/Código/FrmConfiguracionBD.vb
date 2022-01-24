
Imports System.IO
Public Class FrmConfiguracionBD
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
    Friend WithEvents butAceptar As System.Windows.Forms.Button
    Friend WithEvents butCancelar As System.Windows.Forms.Button
    Friend WithEvents ToolTip1 As System.Windows.Forms.ToolTip
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents texbServidor As System.Windows.Forms.TextBox
    Friend WithEvents texbContraseña As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents texbBaseDeDatos As System.Windows.Forms.TextBox
    Friend WithEvents texbUsuario As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmConfiguracionBD))
        Me.butAceptar = New System.Windows.Forms.Button
        Me.butCancelar = New System.Windows.Forms.Button
        Me.ToolTip1 = New System.Windows.Forms.ToolTip(Me.components)
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.texbServidor = New System.Windows.Forms.TextBox
        Me.texbContraseña = New System.Windows.Forms.TextBox
        Me.Label4 = New System.Windows.Forms.Label
        Me.Label1 = New System.Windows.Forms.Label
        Me.texbBaseDeDatos = New System.Windows.Forms.TextBox
        Me.texbUsuario = New System.Windows.Forms.TextBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.Label3 = New System.Windows.Forms.Label
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'butAceptar
        '
        Me.butAceptar.BackColor = System.Drawing.SystemColors.Control
        Me.butAceptar.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butAceptar.ImageIndex = 11
        Me.butAceptar.Location = New System.Drawing.Point(265, 212)
        Me.butAceptar.Name = "butAceptar"
        Me.butAceptar.Size = New System.Drawing.Size(80, 32)
        Me.butAceptar.TabIndex = 4
        Me.butAceptar.Text = "Aceptar"
        Me.ToolTip1.SetToolTip(Me.butAceptar, "Aceptar")
        Me.butAceptar.UseVisualStyleBackColor = False
        '
        'butCancelar
        '
        Me.butCancelar.BackColor = System.Drawing.SystemColors.Control
        Me.butCancelar.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butCancelar.ImageIndex = 12
        Me.butCancelar.Location = New System.Drawing.Point(361, 212)
        Me.butCancelar.Name = "butCancelar"
        Me.butCancelar.Size = New System.Drawing.Size(80, 32)
        Me.butCancelar.TabIndex = 5
        Me.butCancelar.Text = "Cancelar"
        Me.ToolTip1.SetToolTip(Me.butCancelar, "Cancelar")
        Me.butCancelar.UseVisualStyleBackColor = False
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.texbServidor)
        Me.GroupBox1.Controls.Add(Me.texbContraseña)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.texbBaseDeDatos)
        Me.GroupBox1.Controls.Add(Me.texbUsuario)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Location = New System.Drawing.Point(8, 8)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(433, 192)
        Me.GroupBox1.TabIndex = 6
        Me.GroupBox1.TabStop = False
        '
        'texbServidor
        '
        Me.texbServidor.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.texbServidor.Location = New System.Drawing.Point(124, 22)
        Me.texbServidor.MaxLength = 30
        Me.texbServidor.Name = "texbServidor"
        Me.texbServidor.Size = New System.Drawing.Size(294, 20)
        Me.texbServidor.TabIndex = 31
        '
        'texbContraseña
        '
        Me.texbContraseña.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.texbContraseña.Location = New System.Drawing.Point(124, 150)
        Me.texbContraseña.MaxLength = 30
        Me.texbContraseña.Name = "texbContraseña"
        Me.texbContraseña.PasswordChar = Global.Microsoft.VisualBasic.ChrW(42)
        Me.texbContraseña.Size = New System.Drawing.Size(294, 20)
        Me.texbContraseña.TabIndex = 38
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.BackColor = System.Drawing.Color.Transparent
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.ForeColor = System.Drawing.Color.Black
        Me.Label4.Location = New System.Drawing.Point(44, 150)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(80, 16)
        Me.Label4.TabIndex = 35
        Me.Label4.Text = "Contraseña:"
        Me.Label4.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.BackColor = System.Drawing.Color.Transparent
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.Color.Black
        Me.Label1.Location = New System.Drawing.Point(64, 22)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(62, 16)
        Me.Label1.TabIndex = 32
        Me.Label1.Text = "Servidor:"
        Me.Label1.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        '
        'texbBaseDeDatos
        '
        Me.texbBaseDeDatos.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.texbBaseDeDatos.Location = New System.Drawing.Point(124, 62)
        Me.texbBaseDeDatos.MaxLength = 30
        Me.texbBaseDeDatos.Name = "texbBaseDeDatos"
        Me.texbBaseDeDatos.Size = New System.Drawing.Size(294, 20)
        Me.texbBaseDeDatos.TabIndex = 36
        '
        'texbUsuario
        '
        Me.texbUsuario.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.texbUsuario.Location = New System.Drawing.Point(124, 110)
        Me.texbUsuario.MaxLength = 30
        Me.texbUsuario.Name = "texbUsuario"
        Me.texbUsuario.Size = New System.Drawing.Size(294, 20)
        Me.texbUsuario.TabIndex = 37
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.Color.Transparent
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.ForeColor = System.Drawing.Color.Black
        Me.Label2.Location = New System.Drawing.Point(28, 62)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(99, 16)
        Me.Label2.TabIndex = 33
        Me.Label2.Text = "Base de datos:"
        Me.Label2.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.BackColor = System.Drawing.Color.Transparent
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.ForeColor = System.Drawing.Color.Black
        Me.Label3.Location = New System.Drawing.Point(67, 110)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(58, 16)
        Me.Label3.TabIndex = 34
        Me.Label3.Text = "Usuario:"
        Me.Label3.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        '
        'FrmConfiguracionBD
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.BackColor = System.Drawing.Color.LightSteelBlue
        Me.ClientSize = New System.Drawing.Size(450, 256)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.butAceptar)
        Me.Controls.Add(Me.butCancelar)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "FrmConfiguracionBD"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Configuración de base de datos"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub

#End Region

    Private Sub butAceptar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles butAceptar.Click
        If Me.texbServidor.Text = "" Then
            MsgBox("Falta el nombre del servidor", MsgBoxStyle.Information, Mensaje)
            Me.texbServidor.Focus()
        Else
            If Me.texbBaseDeDatos.Text = "" Then
                MsgBox("Falta el nombre de la base de datos", MsgBoxStyle.Information, Mensaje)
                Me.texbBaseDeDatos.Focus()
            Else
                If Me.texbUsuario.Text = "" Then
                    MsgBox("Falta el nombre del usuario", MsgBoxStyle.Information, Mensaje)
                    Me.texbUsuario.Focus()
                Else
                    If Me.texbContraseña.Text = "" Then
                        MsgBox("Falta la contraseña", MsgBoxStyle.Information, Mensaje)
                        Me.texbContraseña.Focus()
                    Else
                        Conexion.Servidor = Me.texbServidor.Text
                        Conexion.BaseDeDatos = Me.texbBaseDeDatos.Text
                        Conexion.Usuario = Me.texbUsuario.Text
                        Conexion.Password = Me.texbContraseña.Text
                        Conexion.EscribirEnArchivo()
                        Me.Close()
                    End If
                End If
            End If
        End If
    End Sub

    Private Sub butCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles butCancelar.Click
        End
    End Sub

    
    Private Sub FrmConfiguracionBD_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub
End Class
