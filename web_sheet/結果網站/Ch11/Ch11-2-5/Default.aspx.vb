
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        Page.MasterPageFile = "Frame.master"
        Page.Title = "動態載入主版頁面"
    End Sub
End Class
