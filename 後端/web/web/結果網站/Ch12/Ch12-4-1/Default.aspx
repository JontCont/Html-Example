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
    
        <asp:TreeView ID="TreeView1" runat="server" ImageSet="XPFileExplorer" NodeIndent="15">
            <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
            <Nodes>
                <asp:TreeNode NavigateUrl="~/Default.aspx" Text="首頁" Value="首頁">
                    <asp:TreeNode NavigateUrl="~/Mp3.aspx" Text="MP3播放器" Value="MP3播放器">
                        <asp:TreeNode NavigateUrl="~/iPodClass.aspx" Text="iPod Class" Value="iPod Class"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/iPodNano.aspx" Text="iPod Nano" Value="iPod Nano"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/iPodShuffle.aspx" Text="iPod Shuffle" Value="iPod Shuffle"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/Computers.aspx" Text="電腦" Value="電腦">
                        <asp:TreeNode NavigateUrl="~/Desktop.aspx" Text="桌上型電腦" Value="桌上型電腦"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Notebook.aspx" Text="筆記型電腦" Value="筆記型電腦"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Pad.aspx" Text="平板電腦" Value="平板電腦"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="2px" NodeSpacing="0px" VerticalPadding="2px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    
    </div>
    </form>
</body>
</html>
