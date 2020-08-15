
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If rdbRare.Checked Then
            lblOutput.Text = "三分熟"
        End If
        If rdbMedium.Checked Then
            lblOutput.Text = "五分熟"
        End If
        If rdbMedWell.Checked Then
            lblOutput.Text = "七分熟"
        End If
        If rdbWellDone.Checked Then
            lblOutput.Text = "全熟"
        End If
    End Sub
End Class
