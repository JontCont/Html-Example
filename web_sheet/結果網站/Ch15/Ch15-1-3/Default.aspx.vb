
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If IsPostBack Then
            MultiView1.ActiveViewIndex = -1
        Else
            MultiView1.ActiveViewIndex = 0
        End If
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        lblOutput.Text = "使用者名稱: " & txtUser.Text & "<br/>"
        lblOutput.Text &= "使用者姓名: " & txtName.Text & "<br/>"
        lblOutput.Text &= "使用者密碼: " & txtPass.Text & "<br/>"
    End Sub
End Class
