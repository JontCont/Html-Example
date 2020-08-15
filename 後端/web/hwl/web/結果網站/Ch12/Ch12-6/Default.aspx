<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="XmlDataSource1">
            <DataBindings>
                <asp:TreeNodeBinding DataMember="id" TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="title" TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="author" TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="price" TextField="#InnerText" />
            </DataBindings>
        </asp:TreeView>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Ch12-6.xml"></asp:XmlDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>
