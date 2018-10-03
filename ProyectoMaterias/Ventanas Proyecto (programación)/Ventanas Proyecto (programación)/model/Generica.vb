Imports System.Data.SqlClient

Public Class Generica

    ' Public: Todos tienen acceso
    ' Protected: Acceso desde clase y herencia
    ' Private: Acceso solo desde la clase
    Protected nomTabla As String


    Public Overridable Function obtenerListado() As SqlDataReader
        Return DBConn.Instance.SelectStatement("SELECT * FROM " + nomTabla)
    End Function

    Protected atributosInsert() As String

    Function insertar() As Integer

    End Function
End Class
