
Partial Class Member_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            txtID.Text = Profile.Student.StudentId
            txtName.Text = Profile.Student.Name
            txtGrade.Text = Profile.Student.Grade
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If txtID.Text <> "" Then
            Profile.Student.StudentId = txtID.Text
        End If
        If txtName.Text <> "" Then
            Profile.Student.Name = txtName.Text
        End If
        If txtGrade.Text <> "" Then
            Profile.Student.Grade = txtGrade.Text
        End If
        Response.Redirect("Ch13_4_4.aspx")
    End Sub
End Class
