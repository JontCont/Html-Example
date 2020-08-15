
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click, Button2.Click
        Dim Card(1) As Integer
        Randomize()            ' 初始亂數
        ' 取得亂數
        Card(0) = Int(Rnd(10) * 12) + 1
        Card(1) = Int(Rnd(10) * 12) + 1
        Dim btnButton As Button
        btnButton = CType(sender, Button)
        If btnButton.ID = "Button1" Then
            Button1.Text = "* " & Card(0) & "點"
            Button2.Text = Card(1) & "點"
        End If
        If btnButton.ID = "Button2" Then
            Button1.Text = Card(0) & "點"
            Button2.Text = "* " & Card(1) & "點"
        End If
    End Sub
End Class
