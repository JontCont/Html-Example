
Partial Class Ch7_3_2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim h, w As Double
            Dim txt As TextBox
            txt = PreviousPage.FindControl("txtWeight")
            w = CDbl(txt.Text)
            txt = PreviousPage.FindControl("txtHeight")
            h = CDbl(txt.Text) / 100.0
            lblOutput.Text = "BMI:" & (w / h / h)
        End If
    End Sub
End Class
