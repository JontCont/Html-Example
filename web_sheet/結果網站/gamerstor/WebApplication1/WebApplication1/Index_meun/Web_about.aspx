<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Web_about.aspx.vb" Inherits="WebApplication1.Web_about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Delight-Customer Service</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="style_data\Web_about_Style.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script></head>

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
            <!--******************content*****************-->
         <div class="row" style="background-color: #858282;">
           <div class="jumbotron text-center">
                <h1>Delight</h1> 
                <p> 遊玩、討論，唯一一個地方達成所有事優質選擇。</p> 
                <hr style="text-align:center;width:100%;"/>
                <br />
               <img src="https://cdn4.iconfinder.com/data/icons/computers-it/48/computer-02-512.png" alt="Avatar" class="avatar"/>&nbsp;&nbsp;&nbsp;&nbsp;
               <img src="http://cdn.onlinewebfonts.com/svg/img_311846.png" alt="Avatar" class="avatar" />&nbsp;&nbsp;&nbsp;&nbsp;
               <img src="https://cdn1.iconfinder.com/data/icons/gamepad/100/gamepad-go-08-512.png" alt="Avatar" class="avatar"/>&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="http://www.metistream.com/wp-content/uploads/2018/01/Customer-Service-Icon.png" alt="Avatar" class="avatar"/>
           </div>
         </div>

            <!--******************content-end*****************-->
            <!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>立即體驗</h2><br/>
      <h4>我們擁有近 3 萬款遊戲，從 AAA 強檔大作到獨立製作，無所不包。享受獨家優惠、自動遊戲更新，以及其它的特惠。</h4><br/>
      <br/>
        <asp:Button ID="Button8" runat="server" class="btn btn-default btn-lg" Text="預覽商店" PostBackUrl="~/Index_meun/Web_buyStore.aspx"/>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-warning-sign logo slideanim" style="left:50px;"></span>
    </div>
    <div class="col-sm-8" style="right:30px;">
      <h2 >加入社群、便捷的消費方式、支援控制器</h2>&nbsp;<br/>
      <h4><strong>加入社群:</strong> 認識新朋友、加入群組、建立戰隊、在遊戲中聊天等等！</h4><br/>
      <h4><strong>便捷的消費方式:</strong> 我們的商店支援 100 多種付款方式，提供您多樣的付費選擇。</h4><br/>
      <h4><strong>支援控制器:</strong> Delight 為遊戲提供控制器支援，包含 PlayStation、Xbox 控制器。</h4><br/>
    </div>
  </div>
</div>

<div class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>優秀的客戶服務</h2><br/>
      <h4>需要協助嗎？我們的客戶體驗專家會為您提供任何需要的支援。</h4><br/>

        <!--***********accordion***************-->
    <div class="panel-group" id="accordion">

    <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Q 1:我可以退回透過 Delight 購買的遊戲嗎？</a>
                </h4>
            </div>
            <div id="collapse1" class="panel-collapse collapse">
              <div class="panel-body">如果您完全不喜歡已經買入的遊戲，我們也會讓您滿意 - 所以我們提供了「優質遊戲保證」。<br />
                  您可以完整退回在 Delight 已購買的下載版（PC 或 Mac），獲得全額退款。<br />
                  相關完整詳細資訊，請查看優質遊戲保證資訊頁面。
              </div>
            </div>
    </div>

    <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Q 2:我可以在多台電腦上使用 Delight 嗎？</a>
                </h4>
            </div>
            <div id="collapse2" class="panel-collapse collapse">
              <div class="panel-body">
                  雖然 Delight 同一時間內只能在一台電腦上執行，但您可從任何電腦存取您的 帳號，即使在 PC 和 Mac 間切換也沒有問題。<br />
                  您也可從任何與原始存檔相同平台 (PC/Mac) 的電腦，存取您的雲端存檔。
              </div>
            </div>
    </div>

    <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Q 3:我可以將 Delight 上的某個遊戲當作禮物送人嗎？</a>
                </h4>
            </div>
            <div id="collapse3" class="panel-collapse collapse">
              <div class="panel-body">
                  當然可以。您可以將最棒的遊戲傳送給附近或遠方的朋友。<br />
                  只需挑選您想要送給朋友的任何遊戲，Delight 就會負責保證遊戲正確出現在他們的遊戲庫中。<br />
              </div>
            </div>
    </div>
  </div> <!--panel-group-end-->
         <!--***********accordion end******************-->
      <br/>
        <asp:Button ID="Button9" runat="server" class="btn btn-default btn-lg" Text="更多資訊"/>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-comment logo"></span>
    </div>
  </div>
    </div>
             <!-- Container (About Section) end -->
<!--******************box*****************-->
<div class="sidebar"></div>   
        <div class="box"></div>
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