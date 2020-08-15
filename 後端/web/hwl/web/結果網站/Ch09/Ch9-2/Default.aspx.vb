
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        lblOutput.Text = "0"
        SqlDataSource1.SelectCommand = txtSQL.Text
        GridView1.DataBind()
        Dim count As Integer
        count = CInt(lblOutput.Text) / 2
        lblOutput.Text = count.ToString()
    End Sub

    Protected Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim count As Integer
            count = CInt(lblOutput.Text) + 1   ' 記錄數加一
            lblOutput.Text = count.ToString()
        End If
    End Sub

End Class
