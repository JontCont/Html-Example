
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack Then
            ' 表單欄位處理
            If txtName.Text <> "" Then
                lblOutput.Text = txtName.Text & "歡迎進入網頁!"
            End If
        Else  ' 第一次載入網頁 - 設定欄位初值
            txtName.Text = "江小魚"
        End If
    End Sub
End Class
