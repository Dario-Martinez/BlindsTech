Public Class Login
    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click

        MsgBox("¿Desea recordar la contraseña?", MsgBoxStyle.YesNo)

        Me.Hide()
        MenuPrincipal.Show()
    End Sub


End Class
