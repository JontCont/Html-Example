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
                    <td>
                        <asp:Panel ID="Panel1" runat="server" GroupingText="iPhone產品" Width="357px">
                            <asp:CheckBoxList ID="chkiPhones" runat="server">
                                <asp:ListItem Value="12500">iPhone 3G $12500</asp:ListItem>
                                <asp:ListItem Value="18000">iPhone 4 $18000</asp:ListItem>
                                <asp:ListItem Value="20500">iPhone 4S $20500</asp:ListItem>
                                <asp:ListItem Value="23500">iPhone 5 $23500</asp:ListItem>
                            </asp:CheckBoxList>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel2" runat="server" GroupingText="運送手續費" Width="357px">
                            <asp:RadioButtonList ID="rdbShipment" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True" Value="5">快遞 5%</asp:ListItem>
                                <asp:ListItem Value="10">貨到付款 10%</asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblOutput" runat="server" Font-Size="Larger" ForeColor="Blue" Width="260px"></asp:Label>
                        　　<asp:Button ID="Button1" runat="server" Height="32px" onclick="Button1_Click" Text="計算" Width="63px" />
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
