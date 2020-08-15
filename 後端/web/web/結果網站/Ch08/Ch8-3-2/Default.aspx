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
            SQL 指令:
            <asp:TextBox ID="txtSQL" runat="server" Width="230px">SELECT * FROM Students</asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="查詢單一欄位值" />
            &nbsp;<br />
            <asp:Label ID="lblOutput" runat="server" ForeColor="Blue"></asp:Label>
        </div>
    
    </div>
    </form>
</body>
</html>
