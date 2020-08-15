
Partial Class Ch7_5_2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim name, password As String
        If Session("UserName") IsNot Nothing Then
            ' 取得Session變數值
            name = Session("UserName")
            password = Session("UserPassword")
        End If
        ' 顯示取得的Session變數值
        lblOutput.Text = "Session ID:" & Session.SessionID & "<br/>"
        lblOutput.Text &= "名稱: " & name & "<br/>"
        lblOutput.Text &= "密碼: " & password & "<br/>"
        Session.Abandon()  ' 放棄Session
    End Sub
End Class
