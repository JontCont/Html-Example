
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ' 第一次載入網頁
            Dim names As ArrayList = New ArrayList()
            names.Add("陳會安")
            names.Add("江小魚")
            names.Add("張無忌")
            names.Add("陳允傑")
            ' 指定資料來源
            lstNames.DataSource = names
            lstNames.DataBind() ' 建立資料繫結
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If lstNames.SelectedIndex > -1 Then
            lblOutput.Text = "選擇的姓名: " & _
                    lstNames.SelectedItem.Text()
        End If
    End Sub
End Class
