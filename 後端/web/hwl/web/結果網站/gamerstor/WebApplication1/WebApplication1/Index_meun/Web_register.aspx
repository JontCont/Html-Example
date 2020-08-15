<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Web_register.aspx.vb" Inherits="WebApplication1.Web_register" ValidateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Register</title>
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="style_data/Sign_in_Style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"  />
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <header>
                 <div class ="auto-style4">                     
                     <asp:Panel ID="Panel1" runat="server" style="position: relative; float: right; ">
                         <asp:Button ID="Button3" runat="server" style="float: none; text-align: center; right: 315px; bottom: -19px; " Text="登入" BackColor="#3C3C3C" BorderStyle="None" ForeColor="White" Font-Size="12px" PostBackUrl="~/Index_meun/WebSign_in.aspx" CausesValidation="False" />
                         <asp:Label ID="Label1" runat="server" Font-Size="Large" style="float: none; top: -15px; left: -16px; height: 30px; width: 19px; bottom: 15px" Text="|" ForeColor="White"></asp:Label>
                         <asp:Button ID="Button2" runat="server" style="float: none; bottom: -19px;height: 15px; right: 214px" Text="註冊" BackColor="#3C3C3C" BorderStyle="None" ForeColor="White" Font-Size="12px" PostBackUrl="~/Index_meun/Web_register.aspx" CausesValidation="False" />
                     </asp:Panel>
                    
                         <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/logo_01.jpg" CssClass="auto-style3" Height="58px" Width="224px" PostBackUrl="~/Index_meun/WebStore.aspx" href="WebStore.aspx" CausesValidation="False" />
          
                </div>
            </header>
    <div class="loginbox" style="height:900px; " >
        <img src="../images/github.png"class="avatar" />
        <h1>註冊</h1>
        <div class="nav-bax" >            
            <p>姓名</p>
                <asp:TextBox  ID="txtName"     type="name"     runat="server" name="" placeholder="輸入姓名"></asp:TextBox>
            
            <p>使用者名稱</p>
                <asp:TextBox  ID="txtUsername" type="text"     runat="server" name="" placeholder="輸入匿名"></asp:TextBox>
            
            <p>密碼</p>
                <asp:TextBox  ID ="password1"  type="password" runat="server" name="" placeholder="輸入密碼"></asp:TextBox>

            <p>電子信箱</p>
                <asp:TextBox  ID ="txtEmail"   type="text"     runat="server" name="" placeholder="輸入電子信箱" ControlToValidate="txtEmail" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="validRegxemail" runat="server" ErrorMessage="電子信箱格式錯誤" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="validEmail" runat="server" ErrorMessage="必須輸入電子信箱" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>

            <p>生日</p>
                <asp:TextBox ID="txtbirthday"  type="birthday" runat="server" name="" placeholder="輸入生日"></asp:TextBox>

            <p>性別</p><br />
                <asp:DropDownList ID="txtsex" type="sex" runat="server" style="font-size:15px; width:80px;">
                <asp:ListItem Value="BH">男生</asp:ListItem>
                <asp:ListItem Value="SH">女生</asp:ListItem>
                </asp:DropDownList><br /><br />
                <asp:Button ID="Button5" type="submit" runat="server" name=""  Valen="done" Text="註冊"/>
                <br />
            <asp:Label ID="lblOutput" runat="server" Text="" ForeColor="Red"></asp:Label><br /><br />
            <a href="WebSign_in.aspx" style="text-align:center;">返回</a>
            
        </div>
    </div>    
    </div>
    </form>
    
</body>
</html>
