
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ' 變數的宣告和指定初值
        Dim grade As Integer = 85
        ' If條件指令
        If grade >= 60 Then
            lblOutput.Text = "陳會安成績及格<br/>"
        End If
        If grade >= 60 Then lblOutput.Text &=
                            "陳小安及格<br/>"
        ' If/Else條件指令
        If grade >= 60 Then
            lblOutput.Text &= "江小魚成績及格<br/>"
        Else
            lblOutput.Text &= "江小魚成績不及格<br/>"
        End If
    End Sub
End Class
