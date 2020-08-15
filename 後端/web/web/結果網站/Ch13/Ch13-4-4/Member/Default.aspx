<%@ Page Title="" Language="VB" MasterPageFile="~/Member.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Member_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <p>歡迎進入會員首頁</p>
<p>
    <table style="width: 100%">
        <tr>
            <td style="color: #0000FF">學號:</td>
            <td>
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #0000FF">姓名:</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #0000FF">成績:</td>
            <td>
                <asp:TextBox ID="txtGrade" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="更改Profile物件" />
            </td>
        </tr>
    </table>
</p>
</asp:Content>

