
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        imgOutput.ImageUrl = "pig.jpg"
        imgOutput.AlternateText = "小豬"
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        imgOutput.ImageUrl = "mouse.gif"
        imgOutput.AlternateText = "老鼠"
    End Sub
End Class
