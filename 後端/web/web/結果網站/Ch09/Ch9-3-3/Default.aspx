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
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div>
            <table class="style1">
                <tr>
                    <td class="style2">課程名稱:</td>
                    <td>
                        <asp:TextBox ID="txtTitle" runat="server" Width="216px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="查詢" Width="113px" />
                        &nbsp;&nbsp; </td>
                </tr>
                </table>
        </div>
    
    </div>
    </form>
</body>
</html>
