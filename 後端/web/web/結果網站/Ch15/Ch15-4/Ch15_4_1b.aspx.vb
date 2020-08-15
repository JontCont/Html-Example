Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim school As New SchoolEntities()
        Dim matches = From c In school.Courses
                      Where c.credits >= 4
                      Select c
        GridView1.DataSource = matches.ToList()
        GridView1.DataBind()
    End Sub
End Class
