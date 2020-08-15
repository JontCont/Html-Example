Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim school As New SchoolEntities()
        Dim sb As New StringBuilder()
        For Each std In school.Students
            sb.Append("<b>" & std.name & "</b><br/>")
            For Each c In std.Classes
                sb.Append(c.c_no & "--" & c.grade & "<br/>")
            Next
            sb.Append("<hr/>")
        Next
        lblOutput.Text = sb.ToString()
    End Sub
End Class
