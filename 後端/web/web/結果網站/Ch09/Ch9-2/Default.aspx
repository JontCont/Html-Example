<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .style2
        {
            width: 100%;
        }
        .style1
        {
            color: #0000FF;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div>
            <table class="style2">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" style="color: #0000FF" Text="SQL指令:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSQL" runat="server" Height="65px" TextMode="MultiLine" Width="324px">SELECT * FROM Students</asp:TextBox>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Height="23px" onclick="Button1_Click" Text="查詢" Width="56px" />
            &nbsp;<hr />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None" onrowdatabound="GridView1_RowDataBound">
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
            <hr />
            <span class="style1">記錄數:</span>
            <asp:Label ID="lblOutput" runat="server" ForeColor="Blue" Text="0"></asp:Label>
        </div>
    
    </div>
    </form>
</body>
</html>
