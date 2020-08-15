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
                    <td><span>使用者名稱:</span></td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="validName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="必須輸入使用者名稱!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><span>使用者密碼1: </span></td>
                    <td>
                        <asp:TextBox ID="txtPass1" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><span>使用者密碼2: </span></td>
                    <td>
                        <asp:TextBox ID="txtPass2" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:CompareValidator ID="validComp" runat="server" ControlToCompare="txtPass1" ControlToValidate="txtPass2" Display="Dynamic" ErrorMessage="兩次輸入的密碼不同!" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="註冊" />
                    </td>
                    <td>
                        <asp:ValidationSummary ID="validSummary" runat="server" ForeColor="Red" DisplayMode="List" HeaderText="驗證的錯誤資料:" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblOutput" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
