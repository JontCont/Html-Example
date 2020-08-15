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
        .style5
        {
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="style1">
                <tr>
                    <td class="style5">郵件地址:</td>
                    <td>
                        <asp:TextBox ID="txtMailTo" runat="server" Width="283px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style5">郵件主旨:</td>
                    <td>
                        <asp:TextBox ID="txtSubject" runat="server" Width="282px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4" valign="top"><span class="style5">郵件內容:</span><asp:CheckBox ID="chkFormat" runat="server" ForeColor="Blue" Text="HTML" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtBody" runat="server" Height="101px" TextMode="MultiLine" Width="287px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4" colspan="2" valign="top">
                        <asp:FileUpload ID="fupFile" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="style3" colspan="2">&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="寄出" Width="109px" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
