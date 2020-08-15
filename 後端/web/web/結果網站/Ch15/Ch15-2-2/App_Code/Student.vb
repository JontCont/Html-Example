Imports Microsoft.VisualBasic

Public Class Student
    Public Property StdID() As Integer
    Public Property Name() As String
    Public Property Tel() As String
    Public Property Grade As Double
    Public Sub New(StdID As Integer, Name As String, Tel As String, Grade As Double)
        Me.StdID = StdID
        Me.Name = Name
        Me.Tel = Tel
        Me.Grade = Grade
    End Sub
End Class
