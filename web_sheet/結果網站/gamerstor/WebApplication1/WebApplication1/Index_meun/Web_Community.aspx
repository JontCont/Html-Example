<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Web_Community.aspx.vb" Inherits="WebApplication1.Web_Community" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Delight-Customer Service</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="style_data\Web_Community_Style.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
        <!--******************頭頂內容*****************-->
        <div class="row">
            <div class="col-md-12">
                   <div class ="auto-style4">                     
                     <asp:Panel ID="Panel1" runat="server" style="position: relative; float: right; ">
                         <asp:Button ID="Button3" runat="server" style="float: none; text-align: center; right: 315px; bottom: -19px; " Text="登入" BackColor="#3C3C3C" BorderStyle="None" ForeColor="White" Font-Size="12px" PostBackUrl="~/Index_meun/WebSign_in.aspx"/>
                         <asp:Label ID="Label1" runat="server" Font-Size="Large" style="float: none; top: -15px; left: -16px; height: 30px; width: 19px; bottom: 15px" Text="|" ForeColor="White"></asp:Label>
                         <asp:Button ID="Button2" runat="server" style="float: none; bottom: -19px;height: 15px; right: 214px" Text="註冊" BackColor="#3C3C3C" BorderStyle="None" ForeColor="White" Font-Size="12px" PostBackUrl="~/Index_meun/Web_register.aspx" />
                     </asp:Panel>
                    
                         <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/logo_01.jpg" CssClass="auto-style3" Height="58px" Width="224px" PostBackUrl="~/Index_meun/WebStore.aspx" />        
<!--******************menu*****************-->
                <nav class ="navbar">
                    <div class="dropdown" id="dropdownMenuLink" >
                        <asp:button ID="Button4" runat="server" class="dropbtn"  PostBackUrl="~/Index_meun/WebStore.aspx" Text="商店"/>
                            <div class="dropdown-content">
                                <a href="#">精選</a>
                                <a href="#">新推出</a>
                                <a href="#">促銷商品</a>
                            </div>
                    </div>
                                  
                    <div class="dropdown">
                        <asp:button ID="Button5" runat="server" class="dropbtn"  PostBackUrl="~/Index_meun/Web_Community.aspx" Text="社群"/>
                            <div class="dropdown-content">
                                <a href="#">討論區</a>
                                <a href="#">市集</a>
                                <a href="Web_news.aspx">新聞</a>
                            </div>
                    </div>

                        <asp:button ID="Button6" runat="server" class="dropbtn" PostBackUrl="~/Index_meun/Web_about.aspx" Text="關於"/>
                        <asp:button ID="Button7" runat="server" class="dropbtn" PostBackUrl="~/Index_meun/Web_Customer_Service.aspx" Text="客服中心"/>
                </nav>
        </div> 
<!--******************menu-end*****************-->
            </div> <!--col-md-12-->
        </div><!--row-->

<!-- Second Container -->
<div class="container-fluid bg-2 text-center">
  <h3 class="margin">歡迎來到 Delight 社群</h3><br />
  <p>登入 Delight 以尋找更多可瀏覽的社群中心。<br/>社群動態 - Delight 上所有遊戲與軟體的內容。<a href="#">點此了解更多。</a></p>
    <br />
        <asp:button ID="Button8" runat="server" type="button" class="btn btn-primary btn-sm" style="font-size:15px;" Text="登入" PostBackUrl="~/Index_meun/WebSign_in.aspx"/>&nbsp;或
        <asp:button ID="Button9" runat="server" type="button" class="btn btn-primary btn-sm" style="font-size:15px;" Text="註冊" PostBackUrl="~/Index_meun/Web_register.aspx"/>    
</div>





<div class="container-fluid bg-3 text-center">    
  <h3 class="margin">Coming soon</h3><br/>
  <div class="row">
    <div class="col-sm-4">
    </div>
    <div class="col-sm-4"> 
    </div>
    <div class="col-sm-4"> 
    </div>
  </div>
</div>

            <!--******************content-content******************-->
        <!--******************footer-content******************-->
        <section id="footer">
                <div class="container">
                    <div class="row text-center text-xs-center text-sm-left text-md-left">
                        <div class="col-sm-4 col-md-4">
                            <h4>主頁</h4>
                            <ul class="list-unstyled quick-links">
                                <li><a href="WebStore.aspx"><i class="fa fa-angle-double-right"></i>首頁</a></li>
                                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>商店</a></li>
                                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>搜尋</a></li>
                                <li><a href="WebSign_in.aspx"><i class="fa fa-angle-double-right"></i>登入/註冊</a></li>
                            </ul>
                        </div>
                        <div class=" col-sm-4 col-md-4">
                            <h4>資訊</h4>
                            <ul class="list-unstyled quick-links">
                                <li><a href="Web_news.aspx"><i class="fa fa-angle-double-right"></i>新聞</a></li>
                                <li><a href="Web_about.aspx"><i class="fa fa-angle-double-right"></i>關於</a></li>
                                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>公告</a></li>
                                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>加入我們</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-4 col-md-4">
                            <h4>客服中心</h4>
                            <ul class="list-unstyled quick-links">
                                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
                                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>回報紀錄</a></li>
                                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>服務條款</a></li>
                                <li><a href="Customer Service/Privacy_Policy.aspx"><i class="fa fa-angle-double-right"></i>隱私條款</a></li>

                            </ul>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class=" col-sm-12 col-md-12 mt-2 mt-sm-5">
                            <ul class="list-unstyled list-inline social text-center">
                                <li class="list-inline-item"><a href="https://www.facebook.com/Steam/"><i class="fab fa-facebook-f"></i></a></li>
                                <li class="list-inline-item"><a href="https://twitter.com/steam_games"><i class="fab fa-twitter"></i></a></li>
                                <li class="list-inline-item"><a href="https://www.instagram.com/d4gstore/"><i class="fab fa-instagram"></i></a></li>
                                <li class="list-inline-item"><a href="https://mail.google.com/mail/u/0/#inbox" target="_blank"><i class="far fa-envelope"></i></a></li>
                            </ul>
                        </div>
                        <hr/>
                    </div>	
                    <br />
                    <div class="row">
                        <div class="col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
                            <p><u></u>臺北城市科技大學-資工系 版權所有</p>
                            <p class="h6">&copy  Copyright 2011 Taipei City University of Science and Technology.All right Reversed.</p>
                        </div>
                        <hr/>
                    </div>	
                </div>
            </section>
        <!--******************footer end******************-->

        </div><!--container end-->
    </form>
</body>
</html>

