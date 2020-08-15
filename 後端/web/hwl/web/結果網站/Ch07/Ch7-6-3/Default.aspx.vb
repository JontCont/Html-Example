
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim output As String = Application("msg")
        lblOutput.Text = output
        Application("msg") = ""   ' 清除Application變數
        lblOutput.Text &= "載入網頁...<br/>顯示網頁內容..."
        If Session.IsNewSession = True Then
            lblOutput.Text &= "<b>新的Session</b><br/>"
        Else
            lblOutput.Text &= "<b>同一個Session</b><br/>"
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Session.Abandon()  ' 結束Session
        ' 轉址至自已
        Response.Redirect("Default.aspx")
    End Sub
End Class
