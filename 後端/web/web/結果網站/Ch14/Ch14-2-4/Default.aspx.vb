
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim path As String = "~/images/"
        If upImage.HasFile Then
            path &= upImage.FileName
            upImage.SaveAs(Server.MapPath(path))
            lblOutput.Text = "檔案: " & upImage.FileName &
                             "上傳成功!"
        End If
    End Sub
End Class
