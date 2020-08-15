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
            Server變數:
            <asp:TextBox ID="txtServer" runat="server" Width="183px"></asp:TextBox>
            &nbsp;<asp:Button ID="Button1" runat="server" Text="查詢" />
            　<asp:Button ID="Button2" runat="server" Text="瀏覽器" />
            <hr />
            <br />
            <asp:Label ID="lblOutput" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
