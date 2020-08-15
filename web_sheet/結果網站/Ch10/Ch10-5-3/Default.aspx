<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="sid" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="254px">
            <EditItemTemplate>
                學號:
                <asp:Label ID="sidLabel1" runat="server" Text='<%# Eval("sid") %>' />
                <br />
                姓名:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                主修:
                <asp:TextBox ID="majorTextBox" runat="server" Text='<%# Bind("major") %>' />
                <br />
                電話:
                <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
                <br />
                生日:
                <asp:TextBox ID="birthdayTextBox" runat="server" Text='<%# Bind("birthday") %>' />
                <br />
                租金:
                <asp:TextBox ID="rentTextBox" runat="server" Text='<%# Bind("rent") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <InsertItemTemplate>
                學號:
                <asp:TextBox ID="sidTextBox" runat="server" Text='<%# Bind("sid") %>' />
                <br />
                姓名:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                主修:
                <asp:TextBox ID="majorTextBox" runat="server" Text='<%# Bind("major") %>' />
                <br />
                電話:
                <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
                <br />
                生日:
                <asp:TextBox ID="birthdayTextBox" runat="server" Text='<%# Bind("birthday") %>' />
                <br />
                租金:
                <asp:TextBox ID="rentTextBox" runat="server" Text='<%# Bind("rent") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                學號:
                <asp:Label ID="sidLabel" runat="server" Text='<%# Eval("sid") %>' />
                <br />
                姓名:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                <br />
                主修:
                <asp:Label ID="majorLabel" runat="server" Text='<%# Bind("major") %>' />
                <br />
                電話:
                <asp:Label ID="telLabel" runat="server" Text='<%# Bind("tel") %>' />
                <br />
                生日:
                <asp:Label ID="birthdayLabel" runat="server" Text='<%# Bind("birthday", "{0:d}") %>' />
                <br />
                租金:
                <asp:Label ID="rentLabel" runat="server" Text='<%# Bind("rent", "{0:C}") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
            </ItemTemplate>
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [sid] = @sid" InsertCommand="INSERT INTO [Students] ([sid], [name], [major], [tel], [birthday], [rent]) VALUES (@sid, @name, @major, @tel, @birthday, @rent)" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [name] = @name, [major] = @major, [tel] = @tel, [birthday] = @birthday, [rent] = @rent WHERE [sid] = @sid">
            <DeleteParameters>
                <asp:Parameter Name="sid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="sid" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="birthday" Type="DateTime" />
                <asp:Parameter Name="rent" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="birthday" Type="DateTime" />
                <asp:Parameter Name="rent" Type="Decimal" />
                <asp:Parameter Name="sid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
