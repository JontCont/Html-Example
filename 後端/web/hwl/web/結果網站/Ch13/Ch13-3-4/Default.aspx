<%@ Page Title="" Language="VB" MasterPageFile="~/Member.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:LoginStatus ID="LoginStatus1" runat="server" LoginText="登入網站" LogoutAction="Redirect" LogoutPageUrl="~/Default.aspx" LogoutText="登出網站" />
    <br />
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            使用者尚未登入網站
        </AnonymousTemplate>
        <LoggedInTemplate>
            歡迎使用者進入網站....<br />
            <br />
            <asp:LoginName ID="LoginName1" runat="server" />
        </LoggedInTemplate>
        <RoleGroups>
            <asp:RoleGroup Roles="Admin">
                <ContentTemplate>
                    歡迎Admin角色使用者進入網站....<br />
                    <br />
                    <asp:LoginName ID="LoginName2" runat="server" />
                </ContentTemplate>
            </asp:RoleGroup>
            <asp:RoleGroup Roles="Member">
                <ContentTemplate>
                    歡迎Member角色使用者進入網站....<br />
                    <br />
                    <asp:LoginName ID="LoginName3" runat="server" />
                </ContentTemplate>
            </asp:RoleGroup>
        </RoleGroups>
    </asp:LoginView>
</asp:Content>


