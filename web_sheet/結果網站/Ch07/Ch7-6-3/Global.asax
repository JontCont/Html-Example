<%@ Application Language="VB" %>

<script runat="server">

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        Application("msg") = "Application開始 ==><br/>"
    End Sub
    
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        Application("msg") &= "Application結束 <==<br/>"
    End Sub
        
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when an unhandled error occurs
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        Application("msg") &= "Session開始 ==><br/>"
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        Application("msg") &= "Session結束 <==<br/>"
    End Sub
       
</script>