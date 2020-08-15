
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim name As String = "楊過"
        Dim nick As String = "神鵰大俠"
        If IsPostBack Then   ' 是否是表單送回
            Dim myName As String = ""
            If ViewState("NickName") IsNot Nothing Then
                myName = ViewState("NickName")
            End If
            lblOutput.Text = myName & "/" & txtName.Text
        Else
            txtName.Text = name
            ' 指定StateBag物件的變數
            ViewState("NickName") = nick
        End If
    End Sub
End Class
