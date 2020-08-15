
Partial Class _Default
    Inherits System.Web.UI.Page
    ' Page物件的Load事件
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Page.Title = "Ch4-2"
        showEvent("Page_Load事件觸發...<br/>")
    End Sub
    ' Page物件的PreInit事件
    Protected Sub Page_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        showEvent("Page_PreInit事件觸發...<br/>")
    End Sub
    ' Page物件的PreRender事件
    Protected Sub Page_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender
        showEvent("Page_PreRender事件觸發...<br/>")
    End Sub
    ' Page物件的UnLoad事件
    Protected Sub Page_Unload(sender As Object, e As EventArgs) Handles Me.Unload
        showEvent("Page_UnLoad事件觸發...<br/>")
    End Sub
    ' 顯示事件的執行過程
    Sub showEvent(str As String)
        lblOutput.Text &= str
    End Sub
End Class
