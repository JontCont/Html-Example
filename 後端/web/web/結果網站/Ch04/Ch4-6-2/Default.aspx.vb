
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Page.Title = "Ch4-6-2"
        lnkFlag.Text = "旗標出版"
        lnkFlag.NavigateUrl = "http://www.flag.com.tw"
    End Sub
End Class
