Public Class ListaClientes
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.Hide()
        MenuPrincipal.Show()
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        MsgBox("¿Desea Modificar usuarios", MsgBoxStyle.YesNo, "Alerta")
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        MsgBox("¿Desea agregar un nuevo usuario?", MsgBoxStyle.YesNo, "Alerta")
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        MsgBox("¿Desea eliminar usuarios", MsgBoxStyle.YesNo, "Alarta")
    End Sub


End Class