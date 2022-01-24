<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FrmCapturaResultado
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmCapturaResultado))
        Me.lblVs = New System.Windows.Forms.Label
        Me.txtGolesEquipo1 = New System.Windows.Forms.TextBox
        Me.txtGolesEquipo2 = New System.Windows.Forms.TextBox
        Me.txtEquipo1 = New System.Windows.Forms.TextBox
        Me.txtEquipo2 = New System.Windows.Forms.TextBox
        Me.chkAmarillaEquipo1 = New System.Windows.Forms.CheckBox
        Me.chkRojaEquipo1 = New System.Windows.Forms.CheckBox
        Me.chkRojaEquipo2 = New System.Windows.Forms.CheckBox
        Me.chkAmarillaEquipo2 = New System.Windows.Forms.CheckBox
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.DataGridView1 = New System.Windows.Forms.DataGridView
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.DataGridView2 = New System.Windows.Forms.DataGridView
        Me.gbDatos = New System.Windows.Forms.GroupBox
        Me.chkGanaEnPenales2 = New System.Windows.Forms.CheckBox
        Me.chkGanaEnPenales1 = New System.Windows.Forms.CheckBox
        Me.dtpHora = New System.Windows.Forms.DateTimePicker
        Me.lblHora = New System.Windows.Forms.Label
        Me.PictureBox3 = New System.Windows.Forms.PictureBox
        Me.PictureBox2 = New System.Windows.Forms.PictureBox
        Me.PictureBox4 = New System.Windows.Forms.PictureBox
        Me.PictureBox1 = New System.Windows.Forms.PictureBox
        Me.lblTarjetasEquipo2 = New System.Windows.Forms.Label
        Me.lblTarjetasEquipo1 = New System.Windows.Forms.Label
        Me.lblFechaPartido = New System.Windows.Forms.Label
        Me.cmbArbitros = New System.Windows.Forms.ComboBox
        Me.dtpFechaJuego = New System.Windows.Forms.DateTimePicker
        Me.lblArbitro = New System.Windows.Forms.Label
        Me.GroupBox4 = New System.Windows.Forms.GroupBox
        Me.lblTorneo = New System.Windows.Forms.Label
        Me.cmbTorneo = New System.Windows.Forms.ComboBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.cmbJornadas = New System.Windows.Forms.ComboBox
        Me.lblDescansa = New System.Windows.Forms.Label
        Me.GroupBox5 = New System.Windows.Forms.GroupBox
        Me.lblPartidos = New System.Windows.Forms.Label
        Me.DataGridView3 = New System.Windows.Forms.DataGridView
        Me.btnGuardar = New System.Windows.Forms.Button
        Me.btnCancelar = New System.Windows.Forms.Button
        Me.lblEquipoDescansa = New System.Windows.Forms.Label
        Me.btnObservaciones = New System.Windows.Forms.Button
        Me.GroupBox1.SuspendLayout()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox2.SuspendLayout()
        CType(Me.DataGridView2, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.gbDatos.SuspendLayout()
        CType(Me.PictureBox3, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PictureBox2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PictureBox4, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox4.SuspendLayout()
        Me.GroupBox5.SuspendLayout()
        CType(Me.DataGridView3, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'lblVs
        '
        Me.lblVs.AutoSize = True
        Me.lblVs.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblVs.Location = New System.Drawing.Point(431, 59)
        Me.lblVs.Name = "lblVs"
        Me.lblVs.Size = New System.Drawing.Size(31, 17)
        Me.lblVs.TabIndex = 1
        Me.lblVs.Text = "Vs."
        Me.lblVs.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'txtGolesEquipo1
        '
        Me.txtGolesEquipo1.Font = New System.Drawing.Font("Arial", 11.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtGolesEquipo1.Location = New System.Drawing.Point(377, 55)
        Me.txtGolesEquipo1.MaxLength = 2
        Me.txtGolesEquipo1.Name = "txtGolesEquipo1"
        Me.txtGolesEquipo1.ReadOnly = True
        Me.txtGolesEquipo1.Size = New System.Drawing.Size(36, 24)
        Me.txtGolesEquipo1.TabIndex = 2
        Me.txtGolesEquipo1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'txtGolesEquipo2
        '
        Me.txtGolesEquipo2.Font = New System.Drawing.Font("Arial", 11.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtGolesEquipo2.Location = New System.Drawing.Point(480, 55)
        Me.txtGolesEquipo2.MaxLength = 2
        Me.txtGolesEquipo2.Name = "txtGolesEquipo2"
        Me.txtGolesEquipo2.ReadOnly = True
        Me.txtGolesEquipo2.Size = New System.Drawing.Size(36, 24)
        Me.txtGolesEquipo2.TabIndex = 3
        Me.txtGolesEquipo2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'txtEquipo1
        '
        Me.txtEquipo1.Font = New System.Drawing.Font("Arial", 11.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtEquipo1.Location = New System.Drawing.Point(81, 55)
        Me.txtEquipo1.Name = "txtEquipo1"
        Me.txtEquipo1.ReadOnly = True
        Me.txtEquipo1.Size = New System.Drawing.Size(290, 24)
        Me.txtEquipo1.TabIndex = 4
        Me.txtEquipo1.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
        '
        'txtEquipo2
        '
        Me.txtEquipo2.Font = New System.Drawing.Font("Arial", 11.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtEquipo2.Location = New System.Drawing.Point(522, 55)
        Me.txtEquipo2.Name = "txtEquipo2"
        Me.txtEquipo2.ReadOnly = True
        Me.txtEquipo2.Size = New System.Drawing.Size(290, 24)
        Me.txtEquipo2.TabIndex = 4
        '
        'chkAmarillaEquipo1
        '
        Me.chkAmarillaEquipo1.AutoSize = True
        Me.chkAmarillaEquipo1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.chkAmarillaEquipo1.Enabled = False
        Me.chkAmarillaEquipo1.Font = New System.Drawing.Font("Arial", 11.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.chkAmarillaEquipo1.Location = New System.Drawing.Point(191, 90)
        Me.chkAmarillaEquipo1.Name = "chkAmarillaEquipo1"
        Me.chkAmarillaEquipo1.Size = New System.Drawing.Size(15, 14)
        Me.chkAmarillaEquipo1.TabIndex = 5
        Me.chkAmarillaEquipo1.UseVisualStyleBackColor = True
        '
        'chkRojaEquipo1
        '
        Me.chkRojaEquipo1.AutoSize = True
        Me.chkRojaEquipo1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.chkRojaEquipo1.Enabled = False
        Me.chkRojaEquipo1.Font = New System.Drawing.Font("Arial", 11.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.chkRojaEquipo1.Location = New System.Drawing.Point(256, 90)
        Me.chkRojaEquipo1.Name = "chkRojaEquipo1"
        Me.chkRojaEquipo1.Size = New System.Drawing.Size(15, 14)
        Me.chkRojaEquipo1.TabIndex = 6
        Me.chkRojaEquipo1.UseVisualStyleBackColor = True
        '
        'chkRojaEquipo2
        '
        Me.chkRojaEquipo2.AutoSize = True
        Me.chkRojaEquipo2.Enabled = False
        Me.chkRojaEquipo2.Font = New System.Drawing.Font("Arial", 11.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.chkRojaEquipo2.Location = New System.Drawing.Point(757, 90)
        Me.chkRojaEquipo2.Name = "chkRojaEquipo2"
        Me.chkRojaEquipo2.Size = New System.Drawing.Size(15, 14)
        Me.chkRojaEquipo2.TabIndex = 7
        Me.chkRojaEquipo2.UseVisualStyleBackColor = True
        '
        'chkAmarillaEquipo2
        '
        Me.chkAmarillaEquipo2.AutoSize = True
        Me.chkAmarillaEquipo2.Enabled = False
        Me.chkAmarillaEquipo2.Font = New System.Drawing.Font("Arial", 11.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.chkAmarillaEquipo2.Location = New System.Drawing.Point(692, 90)
        Me.chkAmarillaEquipo2.Name = "chkAmarillaEquipo2"
        Me.chkAmarillaEquipo2.Size = New System.Drawing.Size(15, 14)
        Me.chkAmarillaEquipo2.TabIndex = 8
        Me.chkAmarillaEquipo2.UseVisualStyleBackColor = True
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.DataGridView1)
        Me.GroupBox1.Font = New System.Drawing.Font("Arial", 11.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox1.Location = New System.Drawing.Point(10, 116)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(422, 429)
        Me.GroupBox1.TabIndex = 9
        Me.GroupBox1.TabStop = False
        '
        'DataGridView1
        '
        Me.DataGridView1.AllowUserToAddRows = False
        Me.DataGridView1.AllowUserToDeleteRows = False
        Me.DataGridView1.BackgroundColor = System.Drawing.Color.LightSteelBlue
        Me.DataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView1.Location = New System.Drawing.Point(6, 15)
        Me.DataGridView1.Name = "DataGridView1"
        Me.DataGridView1.RowHeadersVisible = False
        Me.DataGridView1.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.DataGridView1.Size = New System.Drawing.Size(409, 409)
        Me.DataGridView1.TabIndex = 0
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.DataGridView2)
        Me.GroupBox2.Font = New System.Drawing.Font("Arial", 11.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox2.Location = New System.Drawing.Point(447, 116)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(422, 429)
        Me.GroupBox2.TabIndex = 10
        Me.GroupBox2.TabStop = False
        '
        'DataGridView2
        '
        Me.DataGridView2.AllowUserToAddRows = False
        Me.DataGridView2.AllowUserToDeleteRows = False
        Me.DataGridView2.BackgroundColor = System.Drawing.Color.LightSteelBlue
        Me.DataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView2.Location = New System.Drawing.Point(7, 14)
        Me.DataGridView2.Name = "DataGridView2"
        Me.DataGridView2.RowHeadersVisible = False
        Me.DataGridView2.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.DataGridView2.Size = New System.Drawing.Size(409, 409)
        Me.DataGridView2.TabIndex = 0
        '
        'gbDatos
        '
        Me.gbDatos.Controls.Add(Me.chkGanaEnPenales2)
        Me.gbDatos.Controls.Add(Me.chkGanaEnPenales1)
        Me.gbDatos.Controls.Add(Me.dtpHora)
        Me.gbDatos.Controls.Add(Me.lblHora)
        Me.gbDatos.Controls.Add(Me.PictureBox3)
        Me.gbDatos.Controls.Add(Me.PictureBox2)
        Me.gbDatos.Controls.Add(Me.PictureBox4)
        Me.gbDatos.Controls.Add(Me.PictureBox1)
        Me.gbDatos.Controls.Add(Me.lblTarjetasEquipo2)
        Me.gbDatos.Controls.Add(Me.lblTarjetasEquipo1)
        Me.gbDatos.Controls.Add(Me.lblFechaPartido)
        Me.gbDatos.Controls.Add(Me.cmbArbitros)
        Me.gbDatos.Controls.Add(Me.dtpFechaJuego)
        Me.gbDatos.Controls.Add(Me.lblArbitro)
        Me.gbDatos.Controls.Add(Me.GroupBox2)
        Me.gbDatos.Controls.Add(Me.lblVs)
        Me.gbDatos.Controls.Add(Me.GroupBox1)
        Me.gbDatos.Controls.Add(Me.txtGolesEquipo1)
        Me.gbDatos.Controls.Add(Me.chkAmarillaEquipo2)
        Me.gbDatos.Controls.Add(Me.txtGolesEquipo2)
        Me.gbDatos.Controls.Add(Me.chkRojaEquipo2)
        Me.gbDatos.Controls.Add(Me.txtEquipo1)
        Me.gbDatos.Controls.Add(Me.chkRojaEquipo1)
        Me.gbDatos.Controls.Add(Me.txtEquipo2)
        Me.gbDatos.Controls.Add(Me.chkAmarillaEquipo1)
        Me.gbDatos.Location = New System.Drawing.Point(349, 12)
        Me.gbDatos.Name = "gbDatos"
        Me.gbDatos.Size = New System.Drawing.Size(881, 551)
        Me.gbDatos.TabIndex = 11
        Me.gbDatos.TabStop = False
        '
        'chkGanaEnPenales2
        '
        Me.chkGanaEnPenales2.AutoSize = True
        Me.chkGanaEnPenales2.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.chkGanaEnPenales2.Location = New System.Drawing.Point(454, 90)
        Me.chkGanaEnPenales2.Name = "chkGanaEnPenales2"
        Me.chkGanaEnPenales2.Size = New System.Drawing.Size(124, 24)
        Me.chkGanaEnPenales2.TabIndex = 26
        Me.chkGanaEnPenales2.Text = "Gana en Penales"
        Me.chkGanaEnPenales2.UseVisualStyleBackColor = True
        '
        'chkGanaEnPenales1
        '
        Me.chkGanaEnPenales1.AutoSize = True
        Me.chkGanaEnPenales1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.chkGanaEnPenales1.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.chkGanaEnPenales1.Location = New System.Drawing.Point(301, 90)
        Me.chkGanaEnPenales1.Name = "chkGanaEnPenales1"
        Me.chkGanaEnPenales1.Size = New System.Drawing.Size(124, 24)
        Me.chkGanaEnPenales1.TabIndex = 25
        Me.chkGanaEnPenales1.Text = "Gana en Penales"
        Me.chkGanaEnPenales1.UseVisualStyleBackColor = True
        '
        'dtpHora
        '
        Me.dtpHora.CustomFormat = "HH : mm   tt"
        Me.dtpHora.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtpHora.Location = New System.Drawing.Point(742, 23)
        Me.dtpHora.Name = "dtpHora"
        Me.dtpHora.ShowUpDown = True
        Me.dtpHora.Size = New System.Drawing.Size(99, 25)
        Me.dtpHora.TabIndex = 24
        '
        'lblHora
        '
        Me.lblHora.AutoSize = True
        Me.lblHora.Location = New System.Drawing.Point(697, 25)
        Me.lblHora.Name = "lblHora"
        Me.lblHora.Size = New System.Drawing.Size(39, 20)
        Me.lblHora.TabIndex = 23
        Me.lblHora.Text = "Hora:"
        '
        'PictureBox3
        '
        Me.PictureBox3.Image = Global.TorneoDeacero.My.Resources.Resources.soccer_card_red
        Me.PictureBox3.InitialImage = Global.TorneoDeacero.My.Resources.Resources.soccer_card_red
        Me.PictureBox3.Location = New System.Drawing.Point(713, 85)
        Me.PictureBox3.Name = "PictureBox3"
        Me.PictureBox3.Size = New System.Drawing.Size(38, 32)
        Me.PictureBox3.TabIndex = 22
        Me.PictureBox3.TabStop = False
        '
        'PictureBox2
        '
        Me.PictureBox2.Image = Global.TorneoDeacero.My.Resources.Resources.soccer_card_red
        Me.PictureBox2.InitialImage = Global.TorneoDeacero.My.Resources.Resources.soccer_card_red
        Me.PictureBox2.Location = New System.Drawing.Point(212, 85)
        Me.PictureBox2.Name = "PictureBox2"
        Me.PictureBox2.Size = New System.Drawing.Size(38, 32)
        Me.PictureBox2.TabIndex = 20
        Me.PictureBox2.TabStop = False
        '
        'PictureBox4
        '
        Me.PictureBox4.Image = Global.TorneoDeacero.My.Resources.Resources.soccer_card_yellow
        Me.PictureBox4.InitialImage = Global.TorneoDeacero.My.Resources.Resources.soccer_card_yellow
        Me.PictureBox4.Location = New System.Drawing.Point(648, 85)
        Me.PictureBox4.Name = "PictureBox4"
        Me.PictureBox4.Size = New System.Drawing.Size(38, 34)
        Me.PictureBox4.TabIndex = 21
        Me.PictureBox4.TabStop = False
        '
        'PictureBox1
        '
        Me.PictureBox1.Image = Global.TorneoDeacero.My.Resources.Resources.soccer_card_yellow
        Me.PictureBox1.InitialImage = Global.TorneoDeacero.My.Resources.Resources.soccer_card_yellow
        Me.PictureBox1.Location = New System.Drawing.Point(147, 85)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(38, 34)
        Me.PictureBox1.TabIndex = 19
        Me.PictureBox1.TabStop = False
        '
        'lblTarjetasEquipo2
        '
        Me.lblTarjetasEquipo2.AutoSize = True
        Me.lblTarjetasEquipo2.Location = New System.Drawing.Point(584, 90)
        Me.lblTarjetasEquipo2.Name = "lblTarjetasEquipo2"
        Me.lblTarjetasEquipo2.Size = New System.Drawing.Size(58, 20)
        Me.lblTarjetasEquipo2.TabIndex = 18
        Me.lblTarjetasEquipo2.Text = "Tarjetas:"
        '
        'lblTarjetasEquipo1
        '
        Me.lblTarjetasEquipo1.AutoSize = True
        Me.lblTarjetasEquipo1.Location = New System.Drawing.Point(83, 90)
        Me.lblTarjetasEquipo1.Name = "lblTarjetasEquipo1"
        Me.lblTarjetasEquipo1.Size = New System.Drawing.Size(58, 20)
        Me.lblTarjetasEquipo1.TabIndex = 17
        Me.lblTarjetasEquipo1.Text = "Tarjetas:"
        '
        'lblFechaPartido
        '
        Me.lblFechaPartido.AutoSize = True
        Me.lblFechaPartido.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblFechaPartido.Location = New System.Drawing.Point(458, 25)
        Me.lblFechaPartido.Name = "lblFechaPartido"
        Me.lblFechaPartido.Size = New System.Drawing.Size(90, 20)
        Me.lblFechaPartido.TabIndex = 16
        Me.lblFechaPartido.Text = "Fecha Partido:"
        '
        'cmbArbitros
        '
        Me.cmbArbitros.FormattingEnabled = True
        Me.cmbArbitros.Location = New System.Drawing.Point(75, 22)
        Me.cmbArbitros.Name = "cmbArbitros"
        Me.cmbArbitros.Size = New System.Drawing.Size(273, 28)
        Me.cmbArbitros.TabIndex = 15
        '
        'dtpFechaJuego
        '
        Me.dtpFechaJuego.CalendarFont = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.dtpFechaJuego.CustomFormat = "dd / MMM / yyyy"
        Me.dtpFechaJuego.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.dtpFechaJuego.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtpFechaJuego.Location = New System.Drawing.Point(554, 23)
        Me.dtpFechaJuego.Name = "dtpFechaJuego"
        Me.dtpFechaJuego.Size = New System.Drawing.Size(112, 25)
        Me.dtpFechaJuego.TabIndex = 14
        '
        'lblArbitro
        '
        Me.lblArbitro.AutoSize = True
        Me.lblArbitro.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblArbitro.Location = New System.Drawing.Point(22, 27)
        Me.lblArbitro.Name = "lblArbitro"
        Me.lblArbitro.Size = New System.Drawing.Size(47, 20)
        Me.lblArbitro.TabIndex = 11
        Me.lblArbitro.Text = "Arbitro:"
        '
        'GroupBox4
        '
        Me.GroupBox4.Controls.Add(Me.lblTorneo)
        Me.GroupBox4.Controls.Add(Me.cmbTorneo)
        Me.GroupBox4.Controls.Add(Me.Label1)
        Me.GroupBox4.Controls.Add(Me.cmbJornadas)
        Me.GroupBox4.Location = New System.Drawing.Point(12, 12)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(331, 104)
        Me.GroupBox4.TabIndex = 15
        Me.GroupBox4.TabStop = False
        '
        'lblTorneo
        '
        Me.lblTorneo.AutoSize = True
        Me.lblTorneo.Location = New System.Drawing.Point(5, 22)
        Me.lblTorneo.Name = "lblTorneo"
        Me.lblTorneo.Size = New System.Drawing.Size(53, 20)
        Me.lblTorneo.TabIndex = 3
        Me.lblTorneo.Text = "Torneo:"
        '
        'cmbTorneo
        '
        Me.cmbTorneo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbTorneo.FormattingEnabled = True
        Me.cmbTorneo.Location = New System.Drawing.Point(64, 19)
        Me.cmbTorneo.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.cmbTorneo.Name = "cmbTorneo"
        Me.cmbTorneo.Size = New System.Drawing.Size(252, 28)
        Me.cmbTorneo.TabIndex = 0
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(5, 58)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(57, 20)
        Me.Label1.TabIndex = 4
        Me.Label1.Text = "Jornada:"
        '
        'cmbJornadas
        '
        Me.cmbJornadas.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbJornadas.FormattingEnabled = True
        Me.cmbJornadas.Location = New System.Drawing.Point(64, 55)
        Me.cmbJornadas.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.cmbJornadas.Name = "cmbJornadas"
        Me.cmbJornadas.Size = New System.Drawing.Size(157, 28)
        Me.cmbJornadas.TabIndex = 1
        '
        'lblDescansa
        '
        Me.lblDescansa.AutoSize = True
        Me.lblDescansa.Location = New System.Drawing.Point(8, 442)
        Me.lblDescansa.Name = "lblDescansa"
        Me.lblDescansa.Size = New System.Drawing.Size(71, 20)
        Me.lblDescansa.TabIndex = 13
        Me.lblDescansa.Text = "Descansa: "
        Me.lblDescansa.Visible = False
        '
        'GroupBox5
        '
        Me.GroupBox5.Controls.Add(Me.lblPartidos)
        Me.GroupBox5.Controls.Add(Me.DataGridView3)
        Me.GroupBox5.Location = New System.Drawing.Point(12, 124)
        Me.GroupBox5.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox5.Name = "GroupBox5"
        Me.GroupBox5.Padding = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.GroupBox5.Size = New System.Drawing.Size(331, 305)
        Me.GroupBox5.TabIndex = 12
        Me.GroupBox5.TabStop = False
        '
        'lblPartidos
        '
        Me.lblPartidos.AutoSize = True
        Me.lblPartidos.Location = New System.Drawing.Point(12, 24)
        Me.lblPartidos.Name = "lblPartidos"
        Me.lblPartidos.Size = New System.Drawing.Size(57, 20)
        Me.lblPartidos.TabIndex = 4
        Me.lblPartidos.Text = "Partidos:"
        '
        'DataGridView3
        '
        Me.DataGridView3.AllowUserToAddRows = False
        Me.DataGridView3.AllowUserToDeleteRows = False
        Me.DataGridView3.AllowUserToResizeColumns = False
        Me.DataGridView3.AllowUserToResizeRows = False
        Me.DataGridView3.BackgroundColor = System.Drawing.Color.LightSteelBlue
        Me.DataGridView3.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView3.ColumnHeadersVisible = False
        Me.DataGridView3.Location = New System.Drawing.Point(14, 59)
        Me.DataGridView3.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.DataGridView3.Name = "DataGridView3"
        Me.DataGridView3.ReadOnly = True
        Me.DataGridView3.RowHeadersVisible = False
        Me.DataGridView3.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.DataGridView3.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.DataGridView3.Size = New System.Drawing.Size(302, 223)
        Me.DataGridView3.TabIndex = 3
        '
        'btnGuardar
        '
        Me.btnGuardar.BackColor = System.Drawing.SystemColors.Control
        Me.btnGuardar.Image = CType(resources.GetObject("btnGuardar.Image"), System.Drawing.Image)
        Me.btnGuardar.Location = New System.Drawing.Point(189, 524)
        Me.btnGuardar.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.btnGuardar.Name = "btnGuardar"
        Me.btnGuardar.Size = New System.Drawing.Size(74, 32)
        Me.btnGuardar.TabIndex = 17
        Me.btnGuardar.UseVisualStyleBackColor = False
        '
        'btnCancelar
        '
        Me.btnCancelar.BackColor = System.Drawing.SystemColors.Control
        Me.btnCancelar.Image = CType(resources.GetObject("btnCancelar.Image"), System.Drawing.Image)
        Me.btnCancelar.Location = New System.Drawing.Point(269, 525)
        Me.btnCancelar.Margin = New System.Windows.Forms.Padding(3, 5, 3, 5)
        Me.btnCancelar.Name = "btnCancelar"
        Me.btnCancelar.Size = New System.Drawing.Size(74, 32)
        Me.btnCancelar.TabIndex = 16
        Me.btnCancelar.UseVisualStyleBackColor = False
        '
        'lblEquipoDescansa
        '
        Me.lblEquipoDescansa.AutoSize = True
        Me.lblEquipoDescansa.Font = New System.Drawing.Font("Arial Narrow", 11.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblEquipoDescansa.Location = New System.Drawing.Point(85, 442)
        Me.lblEquipoDescansa.Name = "lblEquipoDescansa"
        Me.lblEquipoDescansa.Size = New System.Drawing.Size(0, 20)
        Me.lblEquipoDescansa.TabIndex = 18
        Me.lblEquipoDescansa.Visible = False
        '
        'btnObservaciones
        '
        Me.btnObservaciones.Image = Global.TorneoDeacero.My.Resources.Resources.edit1
        Me.btnObservaciones.ImageAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.btnObservaciones.Location = New System.Drawing.Point(12, 523)
        Me.btnObservaciones.Name = "btnObservaciones"
        Me.btnObservaciones.Size = New System.Drawing.Size(160, 34)
        Me.btnObservaciones.TabIndex = 19
        Me.btnObservaciones.Text = "Observaciones Arbitro"
        Me.btnObservaciones.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnObservaciones.UseVisualStyleBackColor = True
        '
        'FrmCapturaResultado
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.LightSteelBlue
        Me.ClientSize = New System.Drawing.Size(1237, 566)
        Me.Controls.Add(Me.btnObservaciones)
        Me.Controls.Add(Me.lblEquipoDescansa)
        Me.Controls.Add(Me.btnGuardar)
        Me.Controls.Add(Me.btnCancelar)
        Me.Controls.Add(Me.GroupBox4)
        Me.Controls.Add(Me.lblDescansa)
        Me.Controls.Add(Me.GroupBox5)
        Me.Controls.Add(Me.gbDatos)
        Me.Font = New System.Drawing.Font("Arial Narrow", 11.25!)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "FrmCapturaResultado"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Capturar Resultado Partido"
        Me.GroupBox1.ResumeLayout(False)
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox2.ResumeLayout(False)
        CType(Me.DataGridView2, System.ComponentModel.ISupportInitialize).EndInit()
        Me.gbDatos.ResumeLayout(False)
        Me.gbDatos.PerformLayout()
        CType(Me.PictureBox3, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PictureBox2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PictureBox4, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox4.ResumeLayout(False)
        Me.GroupBox4.PerformLayout()
        Me.GroupBox5.ResumeLayout(False)
        Me.GroupBox5.PerformLayout()
        CType(Me.DataGridView3, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents lblVs As System.Windows.Forms.Label
    Friend WithEvents txtGolesEquipo1 As System.Windows.Forms.TextBox
    Friend WithEvents txtGolesEquipo2 As System.Windows.Forms.TextBox
    Friend WithEvents txtEquipo1 As System.Windows.Forms.TextBox
    Friend WithEvents txtEquipo2 As System.Windows.Forms.TextBox
    Friend WithEvents chkAmarillaEquipo1 As System.Windows.Forms.CheckBox
    Friend WithEvents chkRojaEquipo1 As System.Windows.Forms.CheckBox
    Friend WithEvents chkRojaEquipo2 As System.Windows.Forms.CheckBox
    Friend WithEvents chkAmarillaEquipo2 As System.Windows.Forms.CheckBox
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents DataGridView1 As System.Windows.Forms.DataGridView
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents DataGridView2 As System.Windows.Forms.DataGridView
    Friend WithEvents gbDatos As System.Windows.Forms.GroupBox
    Friend WithEvents lblArbitro As System.Windows.Forms.Label
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents lblTorneo As System.Windows.Forms.Label
    Friend WithEvents cmbTorneo As System.Windows.Forms.ComboBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents cmbJornadas As System.Windows.Forms.ComboBox
    Friend WithEvents lblDescansa As System.Windows.Forms.Label
    Friend WithEvents GroupBox5 As System.Windows.Forms.GroupBox
    Friend WithEvents DataGridView3 As System.Windows.Forms.DataGridView
    Friend WithEvents cmbArbitros As System.Windows.Forms.ComboBox
    Friend WithEvents dtpFechaJuego As System.Windows.Forms.DateTimePicker
    Friend WithEvents lblFechaPartido As System.Windows.Forms.Label
    Friend WithEvents btnGuardar As System.Windows.Forms.Button
    Friend WithEvents btnCancelar As System.Windows.Forms.Button
    Friend WithEvents lblTarjetasEquipo2 As System.Windows.Forms.Label
    Friend WithEvents lblTarjetasEquipo1 As System.Windows.Forms.Label
    Friend WithEvents lblEquipoDescansa As System.Windows.Forms.Label
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents PictureBox3 As System.Windows.Forms.PictureBox
    Friend WithEvents PictureBox2 As System.Windows.Forms.PictureBox
    Friend WithEvents PictureBox4 As System.Windows.Forms.PictureBox
    Friend WithEvents lblPartidos As System.Windows.Forms.Label
    Friend WithEvents dtpHora As System.Windows.Forms.DateTimePicker
    Friend WithEvents lblHora As System.Windows.Forms.Label
    Friend WithEvents btnObservaciones As System.Windows.Forms.Button
    Friend WithEvents chkGanaEnPenales1 As System.Windows.Forms.CheckBox
    Friend WithEvents chkGanaEnPenales2 As System.Windows.Forms.CheckBox
End Class
