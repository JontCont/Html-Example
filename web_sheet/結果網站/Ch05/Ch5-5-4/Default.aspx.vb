
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub ddlNames_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlNames.SelectedIndexChanged
        ' 顯示選擇的使用者名稱
        lblOutput.Text = ddlNames.SelectedItem.Text
    End Sub
End Class
