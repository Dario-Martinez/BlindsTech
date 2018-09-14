Imports System.Data.SqlClient

Public Class Servicios
    Private Sub Servicios_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        RecargarListado()
    End Sub

    Private Sub RecargarListado()
        Dim oServicio As New Servicio()

        Dim listado As SqlDataReader = oServicio.obtenerListado()

        If listado.HasRows Then
            While listado.Read
                Dim lvItem As ListViewItem = lvwServicios.Items.Add(listado("id").ToString)
                lvItem.SubItems.Add(listado("nombre").ToString)
                lvItem.SubItems.Add(listado("descripcion").ToString)
                lvItem.SubItems.Add(listado("cant_casas").ToString)
            End While
        End If


    End Sub

    Private Sub btnRefresh_Click(sender As Object, e As EventArgs) Handles btnRefresh.Click
        RecargarListado()
    End Sub
End Class