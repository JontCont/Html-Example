<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
           <HeaderTemplate>
             <table border="1">
               <tr style="background-color: orange">
                 <th>學號</th><th>姓名</th><th>租金</th>
               </tr>
           </HeaderTemplate>
           <ItemTemplate>
             <tr>
               <td><%# Eval("sid")%></td>
               <td><%# Eval("name")%></td>
               <td><%# Eval("rent", "{0:c}")%></td>
             </tr>
           </ItemTemplate>
           <AlternatingItemTemplate>
             <tr style="background-color : yellow">
               <td><%# Eval("sid")%></td>
               <td><%# Eval("name")%></td>
               <td><%# Eval("rent", "{0:c}")%></td>
               </tr>
           </AlternatingItemTemplate>
           <FooterTemplate>
             </table>
           </FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
