
Partial Class Member_Ch13_4_3
    Inherits System.Web.UI.Page
    
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            lblID.Text = Profile.Student.StudentId
            lblName.Text = Profile.Student.Name
            lblGrade.Text = Profile.Student.Grade
        End If
    End Sub
End Class
