<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FrmConfiguraciones
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmConfiguraciones))
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.LblTipo = New System.Windows.Forms.Label
        Me.TxtBuscar = New System.Windows.Forms.TextBox
        Me.BtnBuscar = New System.Windows.Forms.Button
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.DgdConfiguraciones = New System.Windows.Forms.DataGridView
        Me.MnuTiposSancion1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.MniNuevo = New System.Windows.Forms.ToolStripMenuItem
        Me.MniModificar = New System.Windows.Forms.ToolStripMenuItem
        Me.MniDarBaja = New System.Windows.Forms.ToolStripMenuItem
        Me.MniActivar = New System.Windows.Forms.ToolStripMenuItem
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        CType(Me.DgdConfiguraciones, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.MnuTiposSancion1.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.LblTipo)
        Me.GroupBox2.Controls.Add(Me.TxtBuscar)
        Me.GroupBox2.Controls.Add(Me.BtnBuscar)
        Me.GroupBox2.Location = New System.Drawing.Point(14, 6)
        Me.GroupBox2.Margin = New System.Windows.Forms.Padding(3, 8, 3, 8)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Padding = New System.Windows.Forms.Padding(3, 8, 3, 8)
        Me.GroupBox2.Size = New System.Drawing.Size(990, 78)
        Me.GroupBox2.TabIndex = 2
        Me.GroupBox2.TabStop = False
        '
        'LblTipo
        '
        Me.LblTipo.AutoSize = True
        Me.LblTipo.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LblTipo.Location = New System.Drawing.Point(24, 12)
        Me.LblTipo.Name = "LblTipo"
        Me.LblTipo.Size = New System.Drawing.Size(79, 20)
        Me.LblTipo.TabIndex = 4
        Me.LblTipo.Text = "Descripción:"
        '
        'TxtBuscar
        '
        Me.TxtBuscar.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TxtBuscar.Location = New System.Drawing.Point(25, 35)
        Me.TxtBuscar.Margin = New System.Windows.Forms.Padding(3, 8, 3, 8)
        Me.TxtBuscar.Name = "TxtBuscar"
        Me.TxtBuscar.Size = New System.Drawing.Size(465, 25)
        Me.TxtBuscar.TabIndex = 1
        '
        'BtnBuscar
        '
        Me.BtnBuscar.BackColor = System.Drawing.SystemColors.Control
        Me.BtnBuscar.Image = CType(resources.GetObject("BtnBuscar.Image"), System.Drawing.Image)
        Me.BtnBuscar.Location = New System.Drawing.Point(539, 33)
        Me.BtnBuscar.Margin = New System.Windows.Forms.Padding(3, 8, 3, 8)
        Me.BtnBuscar.Name = "BtnBuscar"
        Me.BtnBuscar.Size = New System.Drawing.Size(74, 32)
        Me.BtnBuscar.TabIndex = 2
        Me.BtnBuscar.UseVisualStyleBackColor = False
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.DgdConfiguraciones)
        Me.GroupBox1.Location = New System.Drawing.Point(14, 85)
        Me.GroupBox1.Margin = New System.Windows.Forms.Padding(3, 8, 3, 8)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Padding = New System.Windows.Forms.Padding(3, 8, 3, 8)
        Me.GroupBox1.Size = New System.Drawing.Size(990, 406)
        Me.GroupBox1.TabIndex = 3
        Me.GroupBox1.TabStop = False
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(23, 19)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(71, 20)
        Me.Label1.TabIndex = 5
        Me.Label1.Text = "Resultados"
        '
        'DgdConfiguraciones
        '
        Me.DgdConfiguraciones.AllowUserToAddRows = False
        Me.DgdConfiguraciones.AllowUserToDeleteRows = False
        Me.DgdConfiguraciones.BackgroundColor = System.Drawing.Color.LightSteelBlue
        Me.DgdConfiguraciones.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DgdConfiguraciones.ContextMenuStrip = Me.MnuTiposSancion1
        Me.DgdConfiguraciones.Location = New System.Drawing.Point(27, 47)
        Me.DgdConfiguraciones.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.DgdConfiguraciones.Name = "DgdConfiguraciones"
        Me.DgdConfiguraciones.ReadOnly = True
        Me.DgdConfiguraciones.RowHeadersVisible = False
        Me.DgdConfiguraciones.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.DgdConfiguraciones.Size = New System.Drawing.Size(942, 341)
        Me.DgdConfiguraciones.TabIndex = 1
        '
        'MnuTiposSancion1
        '
        Me.MnuTiposSancion1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.MniNuevo, Me.MniModificar, Me.MniDarBaja, Me.MniActivar})
        Me.MnuTiposSancion1.Name = "MnuTiposSancion1"
        Me.MnuTiposSancion1.Size = New System.Drawing.Size(153, 114)
        '
        'MniNuevo
        '
        Me.MniNuevo.Name = "MniNuevo"
        Me.MniNuevo.Size = New System.Drawing.Size(152, 22)
        Me.MniNuevo.Text = "Nuevo"
        '
        'MniModificar
        '
        Me.MniModificar.Name = "MniModificar"
        Me.MniModificar.Size = New System.Drawing.Size(152, 22)
        Me.MniModificar.Text = "Modificar"
        '
        'MniDarBaja
        '
        Me.MniDarBaja.Name = "MniDarBaja"
        Me.MniDarBaja.Size = New System.Drawing.Size(152, 22)
        Me.MniDarBaja.Text = "Dar de Baja"
        '
        'MniActivar
        '
        Me.MniActivar.Name = "MniActivar"
        Me.MniActivar.Size = New System.Drawing.Size(152, 22)
        Me.MniActivar.Text = "Activar"
        '
        'FrmConfiguraciones
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.LightSteelBlue
        Me.ClientSize = New System.Drawing.Size(1018, 504)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.GroupBox2)
        Me.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.MaximizeBox = False
        Me.Name = "FrmConfiguraciones"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Catálogo de configuraciones del Sistema"
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.DgdConfiguraciones, System.ComponentModel.ISupportInitialize).EndInit()
        Me.MnuTiposSancion1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents LblTipo As System.Windows.Forms.Label
    Friend WithEvents TxtBuscar As System.Windows.Forms.TextBox
    Friend WithEvents BtnBuscar As System.Windows.Forms.Button
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents DgdConfiguraciones As System.Windows.Forms.DataGridView
    Friend WithEvents MnuTiposSancion1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents MniNuevo As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents MniModificar As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents MniDarBaja As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents MniActivar As System.Windows.Forms.ToolStripMenuItem
End Class
