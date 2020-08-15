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
            <table class="style1">
                <tr>
                    <td>
                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Ch15_1_2.xml" KeywordFilter="Concept" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
