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
                    <td><span>使用者密碼1:</span></td>
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
                        <asp:CompareValidator ID="validComp" runat="server" ErrorMessage="兩次輸入的密碼不同!" ForeColor="Red" ControlToCompare="txtPass1" ControlToValidate="txtPass2"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>購買數量:</td>
                    <td>
                        <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                        <br />
                        <asp:CompareValidator ID="validConstant" runat="server" Display="Dynamic" ErrorMessage="購買數量需要大於等於1!" ForeColor="Red" ControlToValidate="txtQuantity" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="1"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="送出" />
                    </td>
                    <td>&nbsp;</td>
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
