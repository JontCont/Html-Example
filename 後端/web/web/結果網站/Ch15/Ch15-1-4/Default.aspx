<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .style1
        {
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Height="108px" Width="290px" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" HeaderText="輸入登入資訊">
             <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
             <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
             <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
             <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
             <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
             <WizardSteps>
                 <asp:WizardStep runat="server" title="Step 1">
                     <table class="style1">
                         <tr>
                             <td class="style1">使用者名稱:</td>
                             <td>
                                 <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                             </td>
                         </tr>
                     </table>
                 </asp:WizardStep>
                 <asp:WizardStep runat="server" title="Step 2">
                     <table>
                          <tr>
                             <td class="style1">
                                姓名:</td>
                             <td>
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                             </td>
                          </tr>
                     </table>
                 </asp:WizardStep>
                 <asp:WizardStep runat="server" Title="Step 3">
                     <table>
                         <tr>
                             <td class="style1">密碼:</td>
                             <td>
                                 <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                             </td>
                         </tr>
                     </table>
                 </asp:WizardStep>
             </WizardSteps>
         </asp:Wizard>
         <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
    </div>
    </form>
</body>
</html>
