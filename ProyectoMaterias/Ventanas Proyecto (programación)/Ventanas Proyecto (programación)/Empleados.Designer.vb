<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Empleados
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
        Me.btn1 = New System.Windows.Forms.Button()
        Me.btn2 = New System.Windows.Forms.Button()
        Me.bnt3 = New System.Windows.Forms.Button()
        Me.bnt4 = New System.Windows.Forms.Button()
        Me.ListView1 = New System.Windows.Forms.ListView()
        Me.User = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.Nombre = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.Apellido = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.SuspendLayout()
        '
        'btn1
        '
        Me.btn1.Location = New System.Drawing.Point(31, 28)
        Me.btn1.Name = "btn1"
        Me.btn1.Size = New System.Drawing.Size(75, 23)
        Me.btn1.TabIndex = 0
        Me.btn1.Text = "Regresar "
        Me.btn1.UseVisualStyleBackColor = True
        '
        'btn2
        '
        Me.btn2.Location = New System.Drawing.Point(491, 28)
        Me.btn2.Name = "btn2"
        Me.btn2.Size = New System.Drawing.Size(75, 23)
        Me.btn2.TabIndex = 1
        Me.btn2.Text = "Modificar"
        Me.btn2.UseVisualStyleBackColor = True
        '
        'bnt3
        '
        Me.bnt3.Location = New System.Drawing.Point(606, 28)
        Me.bnt3.Name = "bnt3"
        Me.bnt3.Size = New System.Drawing.Size(75, 23)
        Me.bnt3.TabIndex = 2
        Me.bnt3.Text = "Agregar"
        Me.bnt3.UseVisualStyleBackColor = True
        '
        'bnt4
        '
        Me.bnt4.Location = New System.Drawing.Point(713, 28)
        Me.bnt4.Name = "bnt4"
        Me.bnt4.Size = New System.Drawing.Size(75, 23)
        Me.bnt4.TabIndex = 3
        Me.bnt4.Text = "Elimnar"
        Me.bnt4.UseVisualStyleBackColor = True
        '
        'ListView1
        '
        Me.ListView1.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.User, Me.Nombre, Me.Apellido})
        Me.ListView1.Location = New System.Drawing.Point(31, 67)
        Me.ListView1.Name = "ListView1"
        Me.ListView1.Size = New System.Drawing.Size(757, 297)
        Me.ListView1.TabIndex = 4
        Me.ListView1.UseCompatibleStateImageBehavior = False
        Me.ListView1.View = System.Windows.Forms.View.Details
        '
        'User
        '
        Me.User.Text = "User"
        '
        'Nombre
        '
        Me.Nombre.Text = "Nombre"
        '
        'Apellido
        '
        Me.Apellido.Text = "Apellio"
        '
        'Empleados
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(800, 450)
        Me.Controls.Add(Me.ListView1)
        Me.Controls.Add(Me.bnt4)
        Me.Controls.Add(Me.bnt3)
        Me.Controls.Add(Me.btn2)
        Me.Controls.Add(Me.btn1)
        Me.Name = "Empleados"
        Me.Text = "Empleados"
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents btn1 As Button
    Friend WithEvents btn2 As Button
    Friend WithEvents bnt3 As Button
    Friend WithEvents bnt4 As Button
    Friend WithEvents ListView1 As ListView
    Friend WithEvents User As ColumnHeader
    Friend WithEvents Nombre As ColumnHeader
    Friend WithEvents Apellido As ColumnHeader
End Class
