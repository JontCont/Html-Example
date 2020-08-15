<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Web_Community.aspx.vb" Inherits="WebApplication1.Web_Community" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Delight-Community</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="style_data\Web_Community_Style.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
       <style>
         html,body,h1,h2,h3,h4 {font-family:"Lato", sans-serif}
         .mySlides {display:none}
         .w3-tag, .fa {cursor:pointer}
         .w3-tag {height:15px;width:15px;padding:0;margin-top:6px}
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
           </div><!--auto-style4-->
        </div> <!--col-md-12-->
    </div><!--row-->
                                               <!-----end--menu------->

<!---------------------------------------------- Second Container ---------------------------------------------->

       <asp:Panel ID="Panel2" runat="server" >
            <div class="container-fluid bg-2 text-center">
                <h3 class="margin">歡迎來到 Delight 社群</h3><br />
                <p>登入 Delight 以尋找更多可瀏覽的社群中心。<br/>社群動態 - Delight 上所有遊戲與軟體的內容。<a href="#">點此了解更多。</a></p><br />
                <asp:button ID="Button8" runat="server" type="button" class="btn btn-primary btn-sm" style="font-size:15px;" Text="登入" PostBackUrl="~/Index_meun/WebSign_in.aspx"/>&nbsp;或
                <asp:button ID="Button9" runat="server" type="button" class="btn btn-primary btn-sm" style="font-size:15px;" Text="註冊" PostBackUrl="~/Index_meun/Web_register.aspx"/>    
            </div>
         </asp:Panel>
    <!--end-Second Container -->

<!---------------------------content-content----------------------->
            
            <!-- Content -->
            <div class="container-fluid bg-3 text-center" >
            
                     <div class="w3-panel">
                       <h1><b>社群動態</b></h1><br />
                     </div>

                 <div class="col-lg-2 col-md-2 col-sm-2"></div>
                   <!-- Slideshow -->
                   <div class="col-lg-10 col-md-10 col-sm-10"  style="width:70%; height:50%; ">
                     <div class="w3-display-container mySlides">
                       <img src="https://steamcdn-a.akamaihd.net/steamcommunity/public/images/clans/27766192/83197c982872dae93a656a588cb41b83ef7759ae.gif" style="width:100%;height:500px;"/>
                 </div>

                 <div class="w3-display-container mySlides">
                   <img src="http://3.bp.blogspot.com/-Rrg7dlAYVKo/VMREdkoE6GI/AAAAAAAEMTk/0SLHrGcQwOo/s1600/Screenshot_-_2015_1_25___%E4%B8%8A%E5%8D%88_08_55_21.png" style="width:100%;height:500px;"/>
                 </div>

                 <div class="w3-display-container mySlides">
                   <img src="https://2.bp.blogspot.com/--wl67nZHt3Y/XEylJOBAQyI/AAAAAAAASOI/VPDzNAV_buUxoz3brr6JUZt3TeyB-nYGQCLcBGAs/s1600/games2gether-free-endless-space.PNG" style="width:100%;height:500px;"/>
                 </div>
                 
                     <!-- Slideshow next/previous buttons -->
                     <div class="w3-container w3-dark-grey w3-padding w3-xlarge">
                       <div class="w3-left" onclick="plusDivs(-1)"><i class="fa fa-arrow-circle-left w3-hover-text-teal"></i></div>
                       <div class="w3-right" onclick="plusDivs(1)"><i class="fa fa-arrow-circle-right w3-hover-text-teal"></i></div>
                     
                       <div class="w3-center">
                         <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
                         <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
                         <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
                       </div>
                     </div>
                   </div>
            </div><!-- container-fluid bg-3 text-center -->    
            <script>
            // Slideshow
            var slideIndex = 1;
            showDivs(slideIndex);
            
            function plusDivs(n) {
              showDivs(slideIndex += n);
            }
            
            function currentDiv(n) {
              showDivs(slideIndex = n);
            }
            
            function showDivs(n) {
              var i;
              var x = document.getElementsByClassName("mySlides");
              var dots = document.getElementsByClassName("demodots");
              if (n > x.length) {slideIndex = 1}    
              if (n < 1) {slideIndex = x.length} ;
              for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";  
              }
              for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" w3-white", "");
              }
              x[slideIndex-1].style.display = "block";  
              dots[slideIndex-1].className += " w3-white";
            }
            </script>
            <br />

            <div class="container">
            <!-- Third Container (Grid) -->
                <div class="container-fluid bg-3 text-center">                
                    <h3>影片</h3><br />
                  <div class="row">
                    <div class="col-sm-4">
                        <div class="embed-responsive embed-responsive-4by3">
                          <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/NREo4k3MHow"></iframe>
                        </div>
                    </div>

                    <div class="col-sm-4"> 
                        <div class="embed-responsive embed-responsive-4by3">
                          <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/Hu1FkdAOws0"></iframe>
                        </div>                    </div>
                    <div class="col-sm-4"> 
                        <div class="embed-responsive embed-responsive-4by3">
                          <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/Gy_q5XvPnCA"></iframe>
                        </div>                    </div>
                  </div>
                </div>
            </div>


<!----------------------end---content-content----------------------->

<!-----------------------------footer-------------------->
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
<!----------------------------end--footer ---------------------------->
        </div><!--container end-->
    </form>
</body>
</html>

