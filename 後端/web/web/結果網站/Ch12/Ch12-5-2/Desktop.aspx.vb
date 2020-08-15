
Partial Class Desktop
    Inherits System.Web.UI.Page

    Protected Sub Button1_Command(sender As Object, e As CommandEventArgs)
        Response.Redirect(e.CommandArgument.ToString())
    End Sub
End Class
