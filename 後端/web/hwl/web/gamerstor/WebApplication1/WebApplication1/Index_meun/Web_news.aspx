<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Web_news.aspx.vb" Inherits="WebApplication1.Web_news" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Delight-NEWS</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="style_data\WebStore_Style.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style>
            body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
            body {font-size: 16px;}
            img {margin-bottom: -8px;}
            .mySlides {display: none;}
            </style> 

</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
<!-----------------------------header---------------------------->
      
    <div class="row">
        <div class="col-md-12">
           <div class ="auto-style4">                     
             <asp:Panel ID="Panel1" runat="server" style="position: relative; float: right; ">
               <asp:Panel ID="userpanel" runat="server">
                    <i class="fa fa-user fa-fw"></i><asp:Label ID="Viewname" runat="server" Text=""  ForeColor="White"/>
                    <a class="btn btn-default btn-sm" href="#"><i class="fa fa-cog"></i> Settings</a>
                    <asp:Label ID="Label1" runat="server" Font-Size="Large" style="float: none; top: -15px; left: -16px; height: 30px; width: 19px; bottom: 15px" Text="|" ForeColor="White"></asp:Label>
                    <asp:Button ID="SignOutButton" runat="server" style="float: none; bottom: -19px;height: 15px; right: 214px" Text="登出" BackColor="#3C3C3C" BorderStyle="None" ForeColor="White" Font-Size="12px"  />
               </asp:Panel>
                 <asp:Button ID="SignInButton" runat="server" style="float: none; text-align: center; right: 315px; bottom: -19px; " Text="登入" BackColor="#3C3C3C" BorderStyle="None" ForeColor="White" Font-Size="12px" PostBackUrl="~/Index_meun/WebSign_in.aspx"/>
             </asp:Panel>
                 <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/logo_01.jpg" CssClass="auto-style3" Height="58px" Width="224px" PostBackUrl="~/Index_meun/WebStore.aspx" />  
                         <!-----end--header------->

<!-------------------------------menu-------------------------------------------------->
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
<!--******************box*****************-->
<div class="sidebar"></div>   
        <div class="box"></div>
 <!--******************content-content******************-->
<div class="container">
    <!-- The App Section -->
    <div class="w3-padding-64 w3-white">
      <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-lg-6">
          <h1 class="w3-jumbo"><b>The Delight</b></h1>
          <h1 class="w3-xxxlarge w3-text-green"><b>Why Download it?</b></h1>
          <p style="color:black;"><span class="w3-xlarge">Our security philosophy</span> <br />
              We recognize how important it is to help protect privacy and security. 
              We understand that secure products and services are critical in establishing and maintaining trust with our users.
              We strive to consistently deliver secure and enjoyable experiences in all of our products and services.</p>
          <button class="w3-button w3-light-green w3-padding-large w3-section w3-hide-small" onclick="document.getElementById('download').style.display='block'">
            <i class="fa fa-download"></i> Download Delight
          </button>
          <p style="color:black;">Available for &nbsp;<i class="fa fa-apple w3-xlarge"></i> &nbsp;<i class="fa fa-windows w3-xlarge w3-text-blue"></i></pstyle="color:black;>
        </div>
        <div class="w3-col l4 m6">
          <img src="https://www.apple.com/newsroom/images/product/app-store/Apple_App_Store_10th_anniversary_07102018_big.gif.large.gif" class="w3-image w3-right w3-hide-small" width="335" height="471"/>
          <div class="w3-center w3-hide-large w3-hide-medium">
            <button class="w3-button w3-block w3-padding-large" onclick="document.getElementById('download').style.display='block'">
              <i class="fa fa-download"></i> Download Application
            </button>
            <img src="https://www.w3schools.com/w3images/img_app.jpg" class="w3-image w3-margin-top" width="335" height="471">
          </div>
        </div>
      </div>
    </div>

 </div>

        <!-- Features Section -->
        <div class="w3-container w3-padding-64 w3-dark-grey w3-center">
          <h1 class="w3-jumbo"><b>Features</b></h1>
          <p>This app is just so lorem ipsum.</p>
        
          <div class="w3-row" style="margin-top:64px">
            <div class="w3-col s3">
              <i class="fa fa-bolt w3-text-orange w3-jumbo"></i>
              <p>Fast</p>
            </div>
            <div class="w3-col s3">
              <i class="fa fa-heart w3-text-red w3-jumbo"></i>
              <p>Loved</p>
            </div>
            <div class="w3-col s3">
              <i class="fa fa-camera w3-text-yellow w3-jumbo"></i>
              <p>Clarity</p>
            </div>
            <div class="w3-col s3">
              <i class="fa fa-battery-full w3-text-green w3-jumbo"></i>
              <p>Power</p>
            </div>
          </div><br /><br />
        
          <div class="w3-row" style="margin-top:64px">
            <div class="w3-col s3">
              <i class="fa fa-diamond w3-text-white w3-jumbo"></i>
              <p>Sharp</p>
            </div>
            <div class="w3-col s3">
              <i class="fa fa-cloud w3-text-blue w3-jumbo"></i>
              <p>Cloud</p>
            </div>
            <div class="w3-col s3">
              <i class="fa fa-globe w3-text-amber w3-jumbo"></i>
              <p>Global</p>
            </div>
            <div class="w3-col s3">
              <i class="fa fa-hdd-o w3-text-cyan w3-jumbo"></i>
              <p>Storage</p>
            </div>
          </div><br /><br />
          
          <div class="w3-row" style="margin-top:64px">
            <div class="w3-col s3">
              <i class="fa fa-user w3-text-sand w3-jumbo"></i>
              <p>Safe</p>
            </div>
            <div class="w3-col s3">
              <i class="fa fa-shield w3-text-orange w3-jumbo"></i>
              <p>Stabile</p>
            </div>
            <div class="w3-col s3">
              <i class="fa fa-wifi w3-text-grey w3-jumbo"></i>
              <p>Connected</p>
            </div>
            <div class="w3-col s3">
              <i class="fa fa-image w3-text-pink w3-jumbo"></i>
              <p>HD</p>
            </div>
          </div><br /><br />
        </div>


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