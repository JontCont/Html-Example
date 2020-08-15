<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Web_Customer_Service.aspx.vb" Inherits="WebApplication1.Web_Customer_Service" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Delight-Customer Service</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="style_data\Customer_Service_Style.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
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
<!-- Second Container -->
<asp:Panel ID="Panel2" runat="server" >
<div class="container-fluid bg-2 text-center">
  <h3 class="margin"> Delight 客服</h3><br />
  <p>您需要什麼協助？ <br/>登入您的 Delight 帳戶來檢視購買與帳戶狀態，並獲取個人化的幫助。</p><br/>
      <asp:button ID="Button8" runat="server" type="button" class="btn btn-primary btn-sm" style="font-size:15px;" Text="登入" PostBackUrl="~/Index_meun/WebSign_in.aspx"/>&nbsp;&nbsp;&nbsp;
       <asp:button ID="Button9" runat="server" type="button" class="btn btn-primary btn-sm" style="font-size:15px;" Text="無法登入/其他登入"/>    
</div>
</asp:Panel>




<div class="container-fluid bg-3 text-center">    
  <div class="row">
      <h3 class="margin">主選單</h3><br/>
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
        <button type="button" class="btn btn-primary btn-block" style="text-align:center;">遊戲、軟體等</button><br/>
        <button type="button" class="btn btn-primary btn-block"style="text-align:center;">購買消費</button><br/>
        <button type="button" class="btn btn-primary btn-block"style="text-align:center;">我的帳戶</button><br/>
        <button type="button" class="btn btn-primary btn-block"style="text-align:center;">社群、市集、贈禮</button><br/>
        <button type="button" class="btn btn-primary btn-block"style="text-align:center;">我有來自 Steam 的不明扣款</button>
    </div>

  </div>
</div>

 <!--******************content-content******************-->
        <!-- Second Container -->
        <div class="container-fluid bg-2 text-center">
          <h3 class="margin">搜尋功能、遊戲或是相關問題</h3><br />
          <asp:TextBox ID="Search_other" runat="server" ForeColor="Black" style="width:50%; padding:5px; height:40px;" ></asp:TextBox>&nbsp;&nbsp;
            <a href="#" class="btn btn-default btn-lg">
            <span class="glyphicon glyphicon-search"></span> Search
          </a>
        </div>
        <!--end Second Container -->

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