
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim total As Integer = 0
        Dim count As Integer = 0
        Dim rate As Double
        ' 計算總價
        For i = 0 To chkiPhones.Items.Count - 1
            If chkiPhones.Items(i).Selected Then
                total += CInt(chkiPhones.Items(i).Value)
                count += 1
            End If
        Next i
        ' 計算手續費
        If rdbShipment.SelectedIndex > -1 Then
            rate = CInt(rdbShipment.SelectedItem.Value) / 100
            lblOutput.Text = "總價： $" & (total * (1 + rate)) & "-" & count
        End If
    End Sub
End Class
