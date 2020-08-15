<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div>
            URL網址:
            <asp:TextBox ID="txtURL" runat="server" Width="183px"></asp:TextBox>
            &nbsp;<asp:Button ID="Button1" runat="server" Text="轉址" />
        </div>
    
    </div>
    </form>
</body>
</html>
