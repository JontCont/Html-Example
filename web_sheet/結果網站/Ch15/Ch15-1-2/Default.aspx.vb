
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub AdRotator1_AdCreated(sender As Object, e As AdCreatedEventArgs) Handles AdRotator1.AdCreated
        lblOutput.Text = e.AdProperties("Caption")
        lblOutput.Text &= "連結網址: " & e.NavigateUrl
    End Sub
End Class
