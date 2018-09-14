<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Servicios
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
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

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.lvwServicios = New System.Windows.Forms.ListView()
        Me.id = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.nombre = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.descripcion = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.cantCasas = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.btnRefresh = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'lvwServicios
        '
        Me.lvwServicios.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.id, Me.nombre, Me.descripcion, Me.cantCasas})
        Me.lvwServicios.FullRowSelect = True
        Me.lvwServicios.Location = New System.Drawing.Point(12, 57)
        Me.lvwServicios.Name = "lvwServicios"
        Me.lvwServicios.Size = New System.Drawing.Size(776, 381)
        Me.lvwServicios.TabIndex = 0
        Me.lvwServicios.UseCompatibleStateImageBehavior = False
        Me.lvwServicios.View = System.Windows.Forms.View.Details
        '
        'id
        '
        Me.id.Text = "#"
        '
        'nombre
        '
        Me.nombre.Text = "Nombre"
        Me.nombre.Width = 216
        '
        'descripcion
        '
        Me.descripcion.Text = "Descripción"
        Me.descripcion.Width = 350
        '
        'cantCasas
        '
        Me.cantCasas.Text = "# casas"
        '
        'btnRefresh
        '
        Me.btnRefresh.Location = New System.Drawing.Point(752, 28)
        Me.btnRefresh.Name = "btnRefresh"
        Me.btnRefresh.Size = New System.Drawing.Size(36, 23)
        Me.btnRefresh.TabIndex = 1
        Me.btnRefresh.Text = "F5"
        Me.btnRefresh.UseVisualStyleBackColor = True
        '
        'Servicios
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(800, 450)
        Me.Controls.Add(Me.btnRefresh)
        Me.Controls.Add(Me.lvwServicios)
        Me.Name = "Servicios"
        Me.Text = "Servicios"
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents lvwServicios As ListView
    Friend WithEvents id As ColumnHeader
    Friend WithEvents nombre As ColumnHeader
    Friend WithEvents descripcion As ColumnHeader
    Friend WithEvents cantCasas As ColumnHeader
    Friend WithEvents btnRefresh As Button
End Class
