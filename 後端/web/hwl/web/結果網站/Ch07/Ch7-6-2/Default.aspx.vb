
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' 初始Application變數
        If Application("Page_Counter") Is Nothing Then
            Application.Lock()
            ' 初始進入次數
            Application("Page_Counter") = 0
            Application.UnLock()
        End If
        Application.Lock()
        ' 進入網頁的次數加一
        Application("Page_Counter") =
                       Application("Page_Counter") + 1
        Application.UnLock()
        lblOutput.Text = "所有使用者進入網頁的總次數: " &
                          Application("Page_Counter")
    End Sub
End Class
