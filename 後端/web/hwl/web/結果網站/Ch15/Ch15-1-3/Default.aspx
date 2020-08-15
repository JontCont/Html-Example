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
        .style1
        {
            width: 100%;
        }
        .auto-style2 {
        height: 23px;
    }
        .style2
        {
            color: blue;
        }
        .style3
        {
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:MultiView ID="MultiView1" runat="server">
             <table class="auto-style1">
                 <tr>
                     <td>
                         <asp:View ID="View1" runat="server">
                             <table class="style1">
                                 <tr>
                                     <td class="auto-style1">使用者名稱:</td>
                                     <td class="auto-style2">
                                         <asp:TextBox ID="txtUser" runat="server" CssClass="style2"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <asp:Button ID="Button1" runat="server" CommandArgument="View2" CommandName="SwitchViewByID" Text="下一步" />
                                     </td>
                                     <td>&nbsp;</td>
                                 </tr>
                             </table>
                         </asp:View>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:View ID="View2" runat="server">
                             <table class="style1">
                                 <tr>
                                     <td class="style2">姓名:</td>
                                     <td>
                                         <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="style3">
                                         <asp:Button ID="Button2" runat="server" CommandArgument="View1" CommandName="SwitchViewByID" Text="前一步" />
                                     </td>
                                     <td class="style3">
                                         <asp:Button ID="Button3" runat="server" CommandArgument="View3" CommandName="SwitchViewByID" Text="下一步" />
                                     </td>
                                 </tr>
                             </table>
                         </asp:View>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:View ID="View3" runat="server">
                             <table class="style1">
                                 <tr>
                                     <td class="style2">密碼:</td>
                                     <td>
                                         <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <asp:Button ID="Button4" runat="server" CommandArgument="View2" CommandName="SwitchViewByID" Text="前一步" />
                                     </td>
                                     <td>
                                         <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="送出" Width="70px" />
                                     </td>
                                 </tr>
                             </table>
                         </asp:View>
                     </td>
                 </tr>
             </table>
         </asp:MultiView>
         <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
    </div>
    </form>
</body>
</html>
