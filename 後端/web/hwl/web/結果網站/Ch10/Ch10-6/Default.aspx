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
    
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="sid" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    </td>
                    <td>
                        <asp:Label ID="sidLabel" runat="server" Text='<%# Eval("sid") %>' />
                    </td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="majorLabel" runat="server" Text='<%# Eval("major") %>' />
                    </td>
                    <td>
                        <asp:Label ID="telLabel" runat="server" Text='<%# Eval("tel") %>' />
                    </td>
                    <td>
                        <asp:Label ID="birthdayLabel" runat="server" Text='<%# Eval("birthday") %>' />
                    </td>
                    <td>
                        <asp:Label ID="rentLabel" runat="server" Text='<%# Eval("rent") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </td>
                    <td>
                        <asp:Label ID="sidLabel1" runat="server" Text='<%# Eval("sid") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="majorTextBox" runat="server" Text='<%# Bind("major") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="birthdayTextBox" runat="server" Text='<%# Bind("birthday") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="rentTextBox" runat="server" Text='<%# Bind("rent") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>未傳回資料。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    </td>
                    <td>
                        <asp:TextBox ID="sidTextBox" runat="server" Text='<%# Bind("sid") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="majorTextBox" runat="server" Text='<%# Bind("major") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="birthdayTextBox" runat="server" Text='<%# Bind("birthday") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="rentTextBox" runat="server" Text='<%# Bind("rent") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    </td>
                    <td>
                        <asp:Label ID="sidLabel" runat="server" Text='<%# Eval("sid") %>' />
                    </td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="majorLabel" runat="server" Text='<%# Eval("major") %>' />
                    </td>
                    <td>
                        <asp:Label ID="telLabel" runat="server" Text='<%# Eval("tel") %>' />
                    </td>
                    <td>
                        <asp:Label ID="birthdayLabel" runat="server" Text='<%# Eval("birthday") %>' />
                    </td>
                    <td>
                        <asp:Label ID="rentLabel" runat="server" Text='<%# Eval("rent") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server"></th>
                                    <th runat="server">sid</th>
                                    <th runat="server">name</th>
                                    <th runat="server">major</th>
                                    <th runat="server">tel</th>
                                    <th runat="server">birthday</th>
                                    <th runat="server">rent</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    </td>
                    <td>
                        <asp:Label ID="sidLabel" runat="server" Text='<%# Eval("sid") %>' />
                    </td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="majorLabel" runat="server" Text='<%# Eval("major") %>' />
                    </td>
                    <td>
                        <asp:Label ID="telLabel" runat="server" Text='<%# Eval("tel") %>' />
                    </td>
                    <td>
                        <asp:Label ID="birthdayLabel" runat="server" Text='<%# Eval("birthday") %>' />
                    </td>
                    <td>
                        <asp:Label ID="rentLabel" runat="server" Text='<%# Eval("rent") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
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
