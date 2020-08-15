
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Cookies("User")("Name") = "陳會安"
        Response.Cookies("User")("ID") = "1234"
        Response.Cookies("User").Expires = DateAdd("D", 10, Today)
        lblOutput.Text = "成功建立多鍵Cookie!"
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim name, no As String
        If Request.Cookies("User") IsNot Nothing Then
            name = Request.Cookies("User")("Name")
            no = Request.Cookies("User")("ID")
            lblOutput.Text = "名稱:" & name & "<br/>"
            lblOutput.Text &= "學號:" & no & "<br/>"
        Else
            lblOutput.Text = "多鍵Cookie不存在!"
        End If
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim dtDay As Date = DateAdd("D", -365, Today)
        Response.Cookies("User").Expires = dtDay
        lblOutput.Text = "成功刪除多鍵Cookie!"
    End Sub
End Class
