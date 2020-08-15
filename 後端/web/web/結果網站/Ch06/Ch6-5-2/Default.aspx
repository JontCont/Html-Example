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
                        <asp:TextBox ID="txtOp1" runat="server" Width="99px"></asp:TextBox>
                        &nbsp;/&nbsp;
                        <asp:TextBox ID="txtOp2" runat="server" Width="100px"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="計算" Width="72px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblOutput" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
