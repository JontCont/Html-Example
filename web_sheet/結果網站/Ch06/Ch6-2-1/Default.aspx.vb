
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Page.IsValid Then
            ' 驗證成功顯示輸入的資料
            lblOutput.Text = "名稱: " & txtName.Text & "<br/>" & _
                             "密碼: " & txtPass.Text
        End If
    End Sub
End Class
