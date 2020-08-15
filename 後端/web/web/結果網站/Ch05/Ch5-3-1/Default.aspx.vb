
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim total As Integer = 0
        Dim quantity As Integer
        quantity = CInt(txtQuantity.Text)
        If chkOriginal.Checked Then
            total += 250 * quantity
        End If
        If chkBeef.Checked Then
            total += 275 * quantity
        End If
        If chkSeaFood.Checked Then
            total += 350 * quantity
        End If
        lblOutput.Text = total.ToString("C")
    End Sub
End Class
