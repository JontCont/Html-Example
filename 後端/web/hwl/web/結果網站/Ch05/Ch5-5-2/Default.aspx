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
            <asp:TextBox ID="txtInput" runat="server" Width="224px" AutoPostBack="True"></asp:TextBox>
            <br />
            <asp:Label ID="lblOutput" runat="server" BorderStyle="Solid" ForeColor="Red" Height="36px" Width="217px"></asp:Label>
        </div>
    
    </div>
    </form>
</body>
</html>
