<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" Theme="MyTheme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div>
            <asp:Label ID="Label1" runat="server" BackColor="Green" ForeColor="Yellow" Text="我的ASP.NET網站"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="我的ASP.NET網站" SkinID="BlueLabel"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="我的ASP.NET網站" SkinID="GreenLabel"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="我的ASP.NET網站" SkinID="RedLabel"></asp:Label>
        </div>
    
    </div>
    </form>
</body>
</html>
