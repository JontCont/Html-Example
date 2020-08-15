
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Wizard1.Visible = True ' 顯示Wizard控制項
    End Sub

    Protected Sub Wizard1_FinishButtonClick(sender As Object, e As WizardNavigationEventArgs) Handles Wizard1.FinishButtonClick
        lblOutput.Text = "使用者名稱: " & txtUser.Text & "<br/>"
        lblOutput.Text &= "使用者姓名: " & txtName.Text & "<br/>"
        lblOutput.Text &= "使用者密碼: " & txtPass.Text & "<br/>"
        Wizard1.Visible = False ' 隱藏Wizard控制項
    End Sub
End Class
