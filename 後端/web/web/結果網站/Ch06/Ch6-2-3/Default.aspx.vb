
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Page.IsValid Then
            ' 驗證成功顯示控制項的值
            lblOutput.Text = "成績: " & txtGrade.Text
        End If
    End Sub
End Class
