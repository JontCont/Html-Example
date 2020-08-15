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
            <table class="style1">
                <tr>
                    <td align="center">
                        <asp:Button ID="Button1" runat="server" Text="取得學生姓名" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:TextBox ID="txtOutput" runat="server" Height="142px" ReadOnly="True" TextMode="MultiLine" Width="281px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
