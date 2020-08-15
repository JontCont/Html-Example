<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="WebSign_in.aspx.vb" Inherits="WebApplication1.WebSign_in" ValidateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WebSign in</title>
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="style_data/Sign_in_Style.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
          <header>
                 <div class ="auto-style4">                     
                     <asp:Panel ID="Panel1" runat="server" style="position: relative; float: right; ">
                         <asp:Button ID="Button3" runat="server" style="float: none; text-align: center; right: 315px; bottom: -19px; height: 15px;" Text="登入" BackColor="#3C3C3C" BorderStyle="None" ForeColor="White" Font-Size="12px" PostBackUrl="~/Index_meun/WebSign_in.aspx" CausesValidation="False" />
                         &nbsp;
                         <asp:Button ID="Button2" runat="server" style="float: none; bottom: -19px;height: 15px; right: 214px" Text="註冊" BackColor="#3C3C3C" BorderStyle="None" ForeColor="White" Font-Size="12px" PostBackUrl="~/Index_meun/Web_register.aspx" CausesValidation="False" />
                     </asp:Panel>
                    
                         <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/logo_01.jpg" CssClass="auto-style3" Height="58px" Width="224px" PostBackUrl="~/Index_meun/WebStore.aspx" ValidateRequestMode="Disabled" CausesValidation="False" />
                </div>
            </header>
    <div class="loginbox" >
        <img src="../images/github.png"class="avatar" />
        <h1>登入</h1>
        <div class="nav-bax" >
           
            <p>使用者帳號</p>
                <asp:TextBox ID="txtUsername" type="text" runat="server" name="" placeholder="輸入使用者帳號"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="必須輸入使用者帳號" ControlToValidate="txtUsername" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
            
            <p>密碼</p>
                <asp:TextBox ID="txtPassword" type="password" runat="server" name="" placeholder="輸入密碼"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="必須輸入密碼" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
            
            <asp:Button ID="Button4" type="submit" runat="server" name=""  Valen="Login" Text="登入"/>
            <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
        <br />
            <a href="#">忘記密碼?</a><br/>
            <a href="Web_register.aspx">註冊帳號</a>
        </div>
    </div>
    </form>
</body>
</html>

