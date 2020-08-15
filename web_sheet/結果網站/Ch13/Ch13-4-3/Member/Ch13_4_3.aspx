<%@ Page Title="" Language="VB" MasterPageFile="~/Member.master" AutoEventWireup="false" CodeFile="Ch13_4_3.aspx.vb" Inherits="Member_Ch13_4_3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td style="color: #0000FF">姓名:</td>
        <td>
            <asp:Label ID="lblOutput" runat="server" ForeColor="#0066FF"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" PostBackUrl="Default.aspx" Text="上一步" />
        </td>
    </tr>
</table>
</asp:Content>

