<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .docStyle {
            color: #008000;
            background-color: #FFFF00;
        }
        
    </style>
    <link href="main.css" rel="stylesheet" type="text/css" />
</head>
<body class="docStyle">
    <form id="form1" runat="server">
    <div>
    
        <div class="docStyle">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="txtStyle">測試ASP.NET網頁樣式</asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="lblStyle"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btnStyle" />
        </div>
    
    </div>
    </form>
</body>
</html>
