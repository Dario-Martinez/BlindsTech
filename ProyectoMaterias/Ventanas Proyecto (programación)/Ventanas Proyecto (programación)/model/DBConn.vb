Imports System.Data.SqlClient

Public NotInheritable Class DBConn

    Private myCon As SqlConnection
    Private myCmd As SqlCommand

    Private myReader As SqlDataReader

    Private Shared ReadOnly _instance As New Lazy(Of DBConn) _
        (Function() New DBConn(), Threading.LazyThreadSafetyMode.ExecutionAndPublication)

    Private Sub New()
        myCon = New SqlConnection("Server=federico-rey-ti\SQLEXPRESS;Database=blindstech;Trusted_Connection=true;")
    End Sub

    Public Shared ReadOnly Property Instance() As DBConn
        Get
            Return _instance.Value

        End Get
    End Property

    Public Function SelectStatement(sql As String) As SqlDataReader
        myCmd = myCon.CreateCommand
        myCmd.CommandText = sql

        myCon.Open()

        Dim sqlResut As SqlDataReader = myCmd.ExecuteReader()

        myCmd = Nothing

        Return sqlResut

    End Function

    Function InsertStatement(sqlCmd As SqlCommand) As Integer

    End Function
End Class
