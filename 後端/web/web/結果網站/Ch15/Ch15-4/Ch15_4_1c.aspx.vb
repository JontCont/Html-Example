Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim school As New SchoolEntities()
        Dim matches = From i In school.Instructors
                      Where i.department = "CS"
                      Select i
        GridView1.DataSource = matches.ToList()
        GridView1.DataBind()
    End Sub
End Class
