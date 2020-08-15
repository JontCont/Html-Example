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
        .style2
        {
            width: 139px;
        }
        .style3
        {
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="style1">
                <tr>
                    <td class="style2"><span class="style3">讀幾字元或幾行</span>：</td>
                    <td>
                        <asp:TextBox ID="txtCount" runat="server">2</asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="讀取字元" Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Button ID="Button2" runat="server" Text="讀取幾行" Width="80px" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="讀取至檔尾" Width="80px" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" Text="讀取整個檔案" Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:TextBox ID="txtOutput" runat="server" Height="107px" ReadOnly="True" TextMode="MultiLine" Width="397px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
