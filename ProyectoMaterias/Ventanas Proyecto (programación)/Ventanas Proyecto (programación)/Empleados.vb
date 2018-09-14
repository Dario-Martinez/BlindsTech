Public Class Empleados
    Private Sub btn1_Click(sender As Object, e As EventArgs) Handles btn1.Click
        Me.Hide()
        MenuPrincipal.Show()
    End Sub

    Private Sub btn2_Click(sender As Object, e As EventArgs) Handles btn2.Click
        MsgBox("¿Desea modificar un empleado?", MsgBoxStyle.YesNo, "Alerta")
    End Sub

    Private Sub bnt3_Click(sender As Object, e As EventArgs) Handles bnt3.Click
        MsgBox("¿Desea agregar un nuevo empleado?", MsgBoxStyle.YesNo, "Alerta")
    End Sub

    Private Sub bnt4_Click(sender As Object, e As EventArgs) Handles bnt4.Click
        MsgBox("Desea agregar un nuevo empleado?", MsgBoxStyle.YesNo, "Alerta")
    End Sub
End Class