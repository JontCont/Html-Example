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
    
        <asp:Panel ID="pnlSwitch" runat="server" GroupingText="圖書資料">
            <asp:Label ID="Label1" runat="server" Text="ASP.NET網頁設計"></asp:Label>
        </asp:Panel>
        <br />
        <asp:Button ID="Button1" runat="server" Text="切換顯示" />
    
    </div>
    </form>
</body>
</html>
