
Partial Class Ch7_3_1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim Username, Password As String
        ' 取得URL參數值
        Username = Server.UrlDecode(Request.QueryString("User"))
        Password = Request.QueryString("Pass")
        ' 顯示取得的參數值
        lblOutput.Text = "名稱: " & Username & "<br/>"
        lblOutput.Text &= "密碼: " & Password & "<br/>"
    End Sub
End Class
