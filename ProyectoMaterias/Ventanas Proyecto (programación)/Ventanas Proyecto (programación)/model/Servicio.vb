Public Class Servicio
    Inherits Generica ' en esta línea le digo a Servicio que es hija de genérica

    Private _id As Integer
    Private _cantCasas As Integer
    Private _nombre As String
    Private _descripcion As String


    Public Property Id As Integer
        Get
            Return _id
        End Get
        Set(value As Integer)
            _id = value
        End Set
    End Property
    Public Property CantCasas As Integer
        Get
            Return _cantCasas
        End Get
        Set(value As Integer)
            _cantCasas = value
        End Set
    End Property
    Public Property Nombre As String
        Get
            Return _nombre
        End Get
        Set(value As String)
            _nombre = value
        End Set
    End Property
    Public Property Descripcion As String
        Get
            Return _descripcion
        End Get
        Set(value As String)
            _descripcion = value
        End Set
    End Property

    'Public Sub New()
    '    MyBase.nomTabla = "servicios"
    'End Sub

    Public Sub New()
        Me.nomTabla = "Servicios"
        Me.atributosInsert = {"nombre", "descripcion", "precio"}
    End Sub
End Class
