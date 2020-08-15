
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' 建立集合物件
        Dim Students As New List(Of Student)()
        ' 新增集合物件的元素
        Students.Add(New Student(1, "陳會安", "02-22222222", 91.5))
        Students.Add(New Student(2, "陳允傑", "03-33333333", 76.2))
        Students.Add(New Student(3, "江小魚", "04-44444444", 57.5))
        Students.Add(New Student(4, "陳允如", "05-55555555", 85.2))
        ' LINQ運算式
        Dim matchs = From student In Students
                     Where student.Grade >= 70.0 And
                           student.Grade <= 90.0
                     Select student
        ' 建立資料繫結
        GridView1.DataSource = matchs
        GridView1.DataBind()
    End Sub
End Class
