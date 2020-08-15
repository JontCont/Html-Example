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
        .auto-style1 {
            width: 120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="style1">
                <tr>
                    <td colspan="2">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="lblOutput2" runat="server" BackColor="Blue" BorderStyle="Solid" ForeColor="White" Height="32px" Width="175px"></asp:Label>
                                <asp:Button ID="Button2" runat="server" Text="Ajax更新時間" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td>
                        <asp:Label ID="lblOutput1" runat="server" BackColor="Yellow" BorderColor="Black" BorderStyle="Solid" ForeColor="Blue" Height="32px" Width="175px"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="更新時間" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
