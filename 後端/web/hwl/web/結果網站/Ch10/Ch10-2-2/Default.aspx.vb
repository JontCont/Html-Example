
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridView1.RowCommand
        Dim pos As Integer
        Dim no As String
        If e.CommandName = "Select" Then
            ' 哪一列課程
            pos = CInt(e.CommandArgument)
            no = GridView1.DataKeys(pos).Value.ToString()
            lblOutput.Text = "課程編號: " & no
        End If
    End Sub
End Class
