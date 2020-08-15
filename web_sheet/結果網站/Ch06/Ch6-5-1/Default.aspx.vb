
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim array(2) As Integer
        Dim x As Integer = 10
        array(x) = 100  ' 測試的錯誤程式碼
        lblOutput.Text = array(x)
    End Sub
End Class
