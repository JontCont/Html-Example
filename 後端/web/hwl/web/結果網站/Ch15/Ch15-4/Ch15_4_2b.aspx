<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Ch15_4_2b.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 38%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <br />
            <table class="style1">
                <tr>
                    <td>課程編號:</td>
                    <td>
                        <asp:TextBox ID="txtNo" runat="server" Height="19px" Width="80px">CS205</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>課程名稱:</td>
                    <td>
                        <asp:TextBox ID="txtTitle" runat="server">Web Programming</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>學分數:</td>
                    <td>
                        <asp:TextBox ID="txtCredit" runat="server" Width="80px">4</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="新增課程" Width="79px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="255px">
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
