<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

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
            <table class="style1">
                <tr>
                    <td colspan="2"><span>訂單付款方式:</span></td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlPayment" runat="server">
                            <asp:ListItem Value="Card">信用卡</asp:ListItem>
                            <asp:ListItem Value="Cash">現金</asp:ListItem>
                            <asp:ListItem Value="Transfer">轉帳</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="選擇" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblOutput" runat="server" BorderStyle="Ridge" Font-Size="Larger" Height="30px" Width="260px"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
