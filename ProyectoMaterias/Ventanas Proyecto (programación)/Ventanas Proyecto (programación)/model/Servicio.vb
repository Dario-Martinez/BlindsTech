Public Class Servicio
    Inherits Generica ' en esta línea le digo a Servicio que es hija de genérica

    Private _Id As Integer
    Private _CantCasas As Integer
    Private _Nombre As String
    Private _Descripcion As String

    Public Sub New(Id As Integer, CantCasas As Integer, Nombre As String, Descripcion As String, id As Integer, cantCasas As Integer, nombre As String, descripcion As String)
        _Id = Id
        _CantCasas = CantCasas
        _Nombre = Nombre
        _Descripcion = Descripcion
        Me.Id = Id
        Me.CantCasas = CantCasas
        Me.Nombre = Nombre
        Me.Descripcion = Descripcion

    End Sub

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

    'Los atributos instert se deben llamar en las clases igual que en las tablas de la bd.'
    'Se debe tomar en cuenta las mayusculas ya que visual basic es key sensitive, pero sql Server no lo es.'
    'Poner parametros para no ejecutar comandos en el SQL Server.'
    ''

    Public Sub New()
        Me.nomTabla = "Servicios"
        Me.atributosInsert = {"nombre", "descripcion", "precio"}
    End Sub
End Class
