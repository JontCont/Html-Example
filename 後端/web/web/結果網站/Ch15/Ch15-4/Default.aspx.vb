Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim school As New SchoolEntities()
        GridView1.DataSource = school.Students.ToList()
        GridView1.DataBind()
    End Sub
End Class
