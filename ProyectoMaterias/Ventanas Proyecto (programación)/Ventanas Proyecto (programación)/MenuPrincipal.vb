Public Class MenuPrincipal
    Private Sub ListaDeClientesToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ListaDeClientesToolStripMenuItem.Click
        Me.Hide()
        ListaClientes.Show()
    End Sub

    Private Sub AgregarClientesToolStripMenuItem_Click(sender As Object, e As EventArgs)
        Me.Hide()
        AgregarCliente.Show()
    End Sub

    Private Sub ContratosToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles ContratosToolStripMenuItem1.Click
        Me.Hide()
        Contratos.Show()
    End Sub

    Private Sub Btn1_Click(sender As Object, e As EventArgs) Handles btn1.Click


        MsgBox("¿Desea cerrar sesión?", MsgBoxStyle.YesNo, "Alerta")

        Me.Hide()
        Login.Show()


    End Sub

    Private Sub InformaciónToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles InformaciónToolStripMenuItem.Click
        Me.Hide()
        InfoPersianas.Show()
    End Sub

    Private Sub ReportesToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles ReportesToolStripMenuItem1.Click
        Me.Hide()
        Reportes.Show()
    End Sub

    Private Sub InformaciónToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles InformaciónToolStripMenuItem1.Click
        Me.Hide()
        InformaciónRPIs.Show()
    End Sub
End Class