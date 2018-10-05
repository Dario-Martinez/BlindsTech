Imports System.Data.SqlClient
Imports System.Reflection

Public Class Generica

    ' Public: Todos tienen acceso
    ' Protected: Acceso desde clase y herencia
    ' Private: Acceso solo desde la clase
    Protected nomTabla As String
    Protected atributosInsert() As String

    Public Overridable Function obtenerListado() As SqlDataReader
        Return DBConn.Instance.SelectStatement("SELECT * FROM " + nomTabla)
    End Function


    Function insertar() As Integer
        Dim insert As String = "INSERT INTO " & nomTabla & "( " & String.Join(",", atributosInsert) & ")_
        VALUES (@" & String.Join("@,", atributosInsert) & " ) "
        Dim comando As New SqlCommand(insert)
        For Each atributo In atributosInsert
            Dim propInfo As PropertyInfo = Me.GetType.GetProperty(atributo, BindingFlags.Public Or BindingFlags.Instance Or BindingFlags.IgnoreCase)
            comando.Parameters.AddWithValue("@" & atributo, propInfo)
        Next

        'If (insert.ExecuteNonQuery().Equals(1)) Then
        'MsgBox("ya esta en la db")
        'Else
        '    MsgBox("No esta que lo inserte")

        'End If

        Return True
    End Function
End Class
