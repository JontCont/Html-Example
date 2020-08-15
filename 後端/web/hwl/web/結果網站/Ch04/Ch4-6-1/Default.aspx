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
                    <asp:Button ID="Button1" runat="server" Text="顯示小豬" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="顯示老鼠" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Image ID="imgOutput" runat="server" BorderStyle="Inset" Height="160px" Width="246px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
