<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="顯示使用者" />
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server">顯示使用者</asp:LinkButton>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="41px" ImageUrl="~/button.jpg" Width="72px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
