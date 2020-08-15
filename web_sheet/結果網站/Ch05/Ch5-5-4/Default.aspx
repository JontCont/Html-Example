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
        .style3
        {
            height: 26px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div>
            <table class="style1">
                <tr>
                    <td><span>選擇使用者名稱:</span></td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:DropDownList ID="ddlNames" runat="server" Height="20px" Width="130px" AutoPostBack="True">
                            <asp:ListItem Value="001">陳會安</asp:ListItem>
                            <asp:ListItem Value="002">江小魚</asp:ListItem>
                            <asp:ListItem Value="003">陳允傑</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblOutput" runat="server" BorderStyle="Ridge" Font-Size="Larger" ForeColor="Red" Height="25px" Width="260px"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
