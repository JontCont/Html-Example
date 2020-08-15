
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub rdbRare_CheckedChanged(sender As Object, e As EventArgs) Handles rdbRare.CheckedChanged
        lblOutput.Text = rdbRare.Text
    End Sub

    Protected Sub rdbMedium_CheckedChanged(sender As Object, e As EventArgs) Handles rdbMedium.CheckedChanged
        lblOutput.Text = rdbMedium.Text
    End Sub

    Protected Sub rdbMedWell_CheckedChanged(sender As Object, e As EventArgs) Handles rdbMedWell.CheckedChanged
        lblOutput.Text = rdbMedWell.Text
    End Sub

    Protected Sub rdbWellDone_CheckedChanged(sender As Object, e As EventArgs) Handles rdbWellDone.CheckedChanged
        lblOutput.Text = rdbWellDone.Text
    End Sub
End Class
