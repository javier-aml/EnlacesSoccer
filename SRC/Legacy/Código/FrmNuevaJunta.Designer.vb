<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FrmNuevaJunta
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmNuevaJunta))
        Dim DataGridViewCellStyle1 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle
        Dim DataGridViewCellStyle2 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle
        Dim DataGridViewCellStyle3 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle
        Dim DataGridViewCellStyle4 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle
        Dim DataGridViewCellStyle5 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle
        Me.gpbNuevo = New System.Windows.Forms.GroupBox
        Me.cmbTorneo = New System.Windows.Forms.ComboBox
        Me.lblTorneo = New System.Windows.Forms.Label
        Me.txtObservaciones = New System.Windows.Forms.TextBox
        Me.txtAcuerdo = New System.Windows.Forms.TextBox
        Me.lblObservaciones = New System.Windows.Forms.Label
        Me.lblAcuerdos = New System.Windows.Forms.Label
        Me.dtpFecha = New System.Windows.Forms.DateTimePicker
        Me.lblFecha = New System.Windows.Forms.Label
        Me.btnGuardar = New System.Windows.Forms.Button
        Me.btnCancelar = New System.Windows.Forms.Button
        Me.chkPasarLista = New System.Windows.Forms.CheckBox
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.dgEquipos = New System.Windows.Forms.DataGridView
        Me.idEquipo = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.Equipos = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.Asistio = New System.Windows.Forms.DataGridViewCheckBoxColumn
        Me.cmbJornada = New System.Windows.Forms.ComboBox
        Me.DataGridViewTextBoxColumn1 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DataGridViewTextBoxColumn2 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.gpbNuevo.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        CType(Me.dgEquipos, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'gpbNuevo
        '
        Me.gpbNuevo.Controls.Add(Me.cmbTorneo)
        Me.gpbNuevo.Controls.Add(Me.lblTorneo)
        Me.gpbNuevo.Controls.Add(Me.txtObservaciones)
        Me.gpbNuevo.Controls.Add(Me.txtAcuerdo)
        Me.gpbNuevo.Controls.Add(Me.lblObservaciones)
        Me.gpbNuevo.Controls.Add(Me.lblAcuerdos)
        Me.gpbNuevo.Controls.Add(Me.dtpFecha)
        Me.gpbNuevo.Controls.Add(Me.lblFecha)
        Me.gpbNuevo.Location = New System.Drawing.Point(12, 13)
        Me.gpbNuevo.Name = "gpbNuevo"
        Me.gpbNuevo.Size = New System.Drawing.Size(545, 173)
        Me.gpbNuevo.TabIndex = 0
        Me.gpbNuevo.TabStop = False
        '
        'cmbTorneo
        '
        Me.cmbTorneo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbTorneo.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.cmbTorneo.FormattingEnabled = True
        Me.cmbTorneo.Location = New System.Drawing.Point(57, 15)
        Me.cmbTorneo.Name = "cmbTorneo"
        Me.cmbTorneo.Size = New System.Drawing.Size(212, 28)
        Me.cmbTorneo.TabIndex = 9
        '
        'lblTorneo
        '
        Me.lblTorneo.AutoSize = True
        Me.lblTorneo.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.lblTorneo.Location = New System.Drawing.Point(6, 17)
        Me.lblTorneo.Name = "lblTorneo"
        Me.lblTorneo.Size = New System.Drawing.Size(53, 20)
        Me.lblTorneo.TabIndex = 8
        Me.lblTorneo.Text = "Torneo:"
        '
        'txtObservaciones
        '
        Me.txtObservaciones.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.txtObservaciones.Location = New System.Drawing.Point(278, 66)
        Me.txtObservaciones.MaxLength = 500
        Me.txtObservaciones.Multiline = True
        Me.txtObservaciones.Name = "txtObservaciones"
        Me.txtObservaciones.Size = New System.Drawing.Size(260, 100)
        Me.txtObservaciones.TabIndex = 7
        '
        'txtAcuerdo
        '
        Me.txtAcuerdo.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.txtAcuerdo.Location = New System.Drawing.Point(9, 66)
        Me.txtAcuerdo.MaxLength = 500
        Me.txtAcuerdo.Multiline = True
        Me.txtAcuerdo.Name = "txtAcuerdo"
        Me.txtAcuerdo.Size = New System.Drawing.Size(260, 100)
        Me.txtAcuerdo.TabIndex = 6
        '
        'lblObservaciones
        '
        Me.lblObservaciones.AutoSize = True
        Me.lblObservaciones.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.lblObservaciones.Location = New System.Drawing.Point(276, 46)
        Me.lblObservaciones.Name = "lblObservaciones"
        Me.lblObservaciones.Size = New System.Drawing.Size(95, 20)
        Me.lblObservaciones.TabIndex = 5
        Me.lblObservaciones.Text = "Observaciones:"
        '
        'lblAcuerdos
        '
        Me.lblAcuerdos.AutoSize = True
        Me.lblAcuerdos.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.lblAcuerdos.Location = New System.Drawing.Point(6, 46)
        Me.lblAcuerdos.Name = "lblAcuerdos"
        Me.lblAcuerdos.Size = New System.Drawing.Size(64, 20)
        Me.lblAcuerdos.TabIndex = 4
        Me.lblAcuerdos.Text = "Acuerdos:"
        '
        'dtpFecha
        '
        Me.dtpFecha.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.dtpFecha.Location = New System.Drawing.Point(322, 15)
        Me.dtpFecha.Name = "dtpFecha"
        Me.dtpFecha.Size = New System.Drawing.Size(200, 25)
        Me.dtpFecha.TabIndex = 3
        '
        'lblFecha
        '
        Me.lblFecha.AutoSize = True
        Me.lblFecha.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.lblFecha.Location = New System.Drawing.Point(276, 17)
        Me.lblFecha.Name = "lblFecha"
        Me.lblFecha.Size = New System.Drawing.Size(48, 20)
        Me.lblFecha.TabIndex = 2
        Me.lblFecha.Text = "Fecha:"
        '
        'btnGuardar
        '
        Me.btnGuardar.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.btnGuardar.Image = CType(resources.GetObject("btnGuardar.Image"), System.Drawing.Image)
        Me.btnGuardar.Location = New System.Drawing.Point(403, 191)
        Me.btnGuardar.Name = "btnGuardar"
        Me.btnGuardar.Size = New System.Drawing.Size(74, 32)
        Me.btnGuardar.TabIndex = 1
        Me.btnGuardar.UseVisualStyleBackColor = True
        '
        'btnCancelar
        '
        Me.btnCancelar.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.btnCancelar.Image = CType(resources.GetObject("btnCancelar.Image"), System.Drawing.Image)
        Me.btnCancelar.Location = New System.Drawing.Point(483, 191)
        Me.btnCancelar.Name = "btnCancelar"
        Me.btnCancelar.Size = New System.Drawing.Size(74, 32)
        Me.btnCancelar.TabIndex = 2
        Me.btnCancelar.UseVisualStyleBackColor = True
        '
        'chkPasarLista
        '
        Me.chkPasarLista.AutoSize = True
        Me.chkPasarLista.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.chkPasarLista.Location = New System.Drawing.Point(22, 196)
        Me.chkPasarLista.Name = "chkPasarLista"
        Me.chkPasarLista.Size = New System.Drawing.Size(161, 24)
        Me.chkPasarLista.TabIndex = 3
        Me.chkPasarLista.Text = "Corresponde a Jornada "
        Me.chkPasarLista.UseVisualStyleBackColor = True
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.dgEquipos)
        Me.GroupBox1.Location = New System.Drawing.Point(12, 229)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(545, 363)
        Me.GroupBox1.TabIndex = 4
        Me.GroupBox1.TabStop = False
        '
        'dgEquipos
        '
        Me.dgEquipos.AccessibleDescription = ""
        Me.dgEquipos.AllowUserToAddRows = False
        Me.dgEquipos.AllowUserToDeleteRows = False
        Me.dgEquipos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgEquipos.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.idEquipo, Me.Equipos, Me.Asistio})
        Me.dgEquipos.Location = New System.Drawing.Point(6, 24)
        Me.dgEquipos.Name = "dgEquipos"
        Me.dgEquipos.RowHeadersVisible = False
        Me.dgEquipos.Size = New System.Drawing.Size(532, 324)
        Me.dgEquipos.TabIndex = 1
        '
        'idEquipo
        '
        DataGridViewCellStyle1.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.idEquipo.DefaultCellStyle = DataGridViewCellStyle1
        Me.idEquipo.HeaderText = "idEquipo"
        Me.idEquipo.Name = "idEquipo"
        Me.idEquipo.Visible = False
        '
        'Equipos
        '
        DataGridViewCellStyle2.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.Equipos.DefaultCellStyle = DataGridViewCellStyle2
        Me.Equipos.HeaderText = "Equipo"
        Me.Equipos.Name = "Equipos"
        Me.Equipos.Width = 412
        '
        'Asistio
        '
        DataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter
        DataGridViewCellStyle3.NullValue = "0"
        Me.Asistio.DefaultCellStyle = DataGridViewCellStyle3
        Me.Asistio.FalseValue = "0"
        Me.Asistio.HeaderText = "Asistio"
        Me.Asistio.Name = "Asistio"
        Me.Asistio.TrueValue = "1"
        '
        'cmbJornada
        '
        Me.cmbJornada.Enabled = False
        Me.cmbJornada.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.cmbJornada.FormattingEnabled = True
        Me.cmbJornada.Location = New System.Drawing.Point(189, 194)
        Me.cmbJornada.Name = "cmbJornada"
        Me.cmbJornada.Size = New System.Drawing.Size(193, 28)
        Me.cmbJornada.TabIndex = 5
        '
        'DataGridViewTextBoxColumn1
        '
        DataGridViewCellStyle4.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.DataGridViewTextBoxColumn1.DefaultCellStyle = DataGridViewCellStyle4
        Me.DataGridViewTextBoxColumn1.HeaderText = "Equipo"
        Me.DataGridViewTextBoxColumn1.Name = "DataGridViewTextBoxColumn1"
        Me.DataGridViewTextBoxColumn1.Visible = False
        Me.DataGridViewTextBoxColumn1.Width = 432
        '
        'DataGridViewTextBoxColumn2
        '
        DataGridViewCellStyle5.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.DataGridViewTextBoxColumn2.DefaultCellStyle = DataGridViewCellStyle5
        Me.DataGridViewTextBoxColumn2.HeaderText = "Equipo"
        Me.DataGridViewTextBoxColumn2.Name = "DataGridViewTextBoxColumn2"
        Me.DataGridViewTextBoxColumn2.Width = 413
        '
        'FrmNuevaJunta
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.LightSteelBlue
        Me.ClientSize = New System.Drawing.Size(569, 228)
        Me.Controls.Add(Me.cmbJornada)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.chkPasarLista)
        Me.Controls.Add(Me.btnCancelar)
        Me.Controls.Add(Me.btnGuardar)
        Me.Controls.Add(Me.gpbNuevo)
        Me.Font = New System.Drawing.Font("Tahoma", 8.25!)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.MinimumSize = New System.Drawing.Size(585, 265)
        Me.Name = "FrmNuevaJunta"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Nueva Junta"
        Me.gpbNuevo.ResumeLayout(False)
        Me.gpbNuevo.PerformLayout()
        Me.GroupBox1.ResumeLayout(False)
        CType(Me.dgEquipos, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents gpbNuevo As System.Windows.Forms.GroupBox
    Friend WithEvents btnGuardar As System.Windows.Forms.Button
    Friend WithEvents btnCancelar As System.Windows.Forms.Button
    Friend WithEvents lblFecha As System.Windows.Forms.Label
    Friend WithEvents txtAcuerdo As System.Windows.Forms.TextBox
    Friend WithEvents lblObservaciones As System.Windows.Forms.Label
    Friend WithEvents lblAcuerdos As System.Windows.Forms.Label
    Friend WithEvents dtpFecha As System.Windows.Forms.DateTimePicker
    Friend WithEvents txtObservaciones As System.Windows.Forms.TextBox
    Friend WithEvents lblTorneo As System.Windows.Forms.Label
    Friend WithEvents cmbTorneo As System.Windows.Forms.ComboBox
    Friend WithEvents chkPasarLista As System.Windows.Forms.CheckBox
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents dgEquipos As System.Windows.Forms.DataGridView
    Friend WithEvents DataGridViewTextBoxColumn1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn2 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents idEquipo As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Equipos As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Asistio As System.Windows.Forms.DataGridViewCheckBoxColumn
    Friend WithEvents cmbJornada As System.Windows.Forms.ComboBox
End Class
