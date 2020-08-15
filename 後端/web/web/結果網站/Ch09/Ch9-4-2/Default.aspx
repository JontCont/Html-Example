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
                    <td>學號: </td>
                    <td>
                        <asp:TextBox ID="txtID" runat="server" Width="72px">S006</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>姓名:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Width="99px">周傑倫</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>電話:</td>
                    <td>
                        <asp:TextBox ID="txtTel" runat="server" Width="100px">07-77777777</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>生日:</td>
                    <td>
                        <asp:TextBox ID="txtBirthday" runat="server" Width="92px">1985/03/01</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="Button1" runat="server" style="text-align: center" Text="新增學生" Width="87px" />
                    </td>
                </tr>
            </table>
            &nbsp;<asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
        </div>
    
    </div>
    </form>
</body>
</html>
