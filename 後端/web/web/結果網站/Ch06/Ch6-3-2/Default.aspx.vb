
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub validCustom_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles validCustom.ServerValidate
        ' 是否符合使用者名稱的格式, 不可是"_"開頭
        If args.Value.StartsWith("_") Then
            args.IsValid = False
        Else
            args.IsValid = True
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Page.IsValid Then
            ' 驗證成功顯示控制項的值
            lblOutput.Text = "使用者名稱: " & txtName.Text
        End If
    End Sub
End Class
