<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Privacy_Policy.aspx.vb" Inherits="WebApplication1.Privacy_Policy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Delight-隱私條款</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="style\PrivacyStyle.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" />
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
<!------------------------------menu--------------------------------------->
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
                </div> <!--auto-style4-->
            </div> <!--col-md-12-->
        </div><!--row-->
<!----------------------------------content---------------------------------->
            <div class="row" >
                    <div class="col-xs-12 col-sm-6 col-md-8" style="width:100%;padding: 1em 1.5em 2em; margin:1.5em;">
                        <h1 style="float:left;">Delight 隱私政策</h1><br /><br />
                        <div class="col-lg-8 col-md-8 col-sm-8" style="width:100%;">
                        <p style="color:black;">
                            <span>
                                 Delight 尊重您在隱私方面的顧慮。我們想讓您了解我們所收集的信息類型、我們如何使用和保護這些信息，以及我們是否會共享這些信息。
                                 您使用我們的網站、遊戲、遊戲引擎和應用程序，即表明您同意我們按照本政策所述收集、使用、披露和傳輸信息，因此請仔細閱讀本政策。
                                 <br /><br />
                                 如果您有任何疑問，請聯繫我們。<br /><br /><br />
                            </span></p>

                            <h2 style="float:left;">我們收集或接收的信息</h2><br /><br />
                            <p style="color:black;"><span>
                                我們僅會在有適當依據的情況下收集、使用、共享、存儲或以其他方式處理您的個人信息。
                                例如，在根據您已接受的條款（如我們的最終用戶許可協議或服務條款和條件）向您提供服務時，我們可能會根據需要處理您的個人信息。
                                我們可能會為了遵守法律義務或提供服務、解決遊戲性能問題、修復錯誤、執行內部分析、以及為防止對我們服務的濫用和欺詐行為而對您使用我們服務的情況進行合理監控等追求合法利益的目的，在不侵犯您權利的適當情況下處理您的個人信息。
                                此外，某些情況下，在對您的個人信息進行某些處理之前，我們可能會徵求您的同意。<br /><br />

                                我們通常通過三種方式收集或接收信息：<br />
                                （1）您在創建帳戶、進行購買或註冊電子郵件通知時自願向我們提供信息；<br />
                                （2）我們通過Cookie或我們的遊戲和其他軟件等自動收集信息；<br />
                                （3）社交網絡等其他方可能會向我們提供信息。下面將更詳細地描述每種方式。<br /><br /><br />
                            </span></p>

                            <h3 style="float:left;">（1）您自願選擇提供的信息</h3><br /><br />
                            <p style="color:black;"><span> 
                                當您選擇使用我們的網站、遊戲、遊戲引擎或應用程序時，您可能會向我們提供您的個人信息。
                                由於我們會不時更改產品和功能，因此您向我們提供信息的選擇也可能會發生變化。
                                以下列舉了您可能會向我們提供信息的情形：<br />
                                一、創建帳戶以使用我們的網站、在線服務、軟件或應用程序；<br />
                                二、許可和下載我們的遊戲或遊戲引擎；<br />
                                三、使用我們的遊戲或應用程序的社交功能；<br />
                                四、向我們購買東西或通過其他方式與我們進行交易；<br /><br />
                                我們向您收集的個人信息因您使用的服務、您訪問的網站以及您訪問這些服務和網站的方式而異。
                                您提供給我們的信息可包括您的姓名、您的顯示名以及您的電子郵件地址。
                                如果您選擇進行購買，我們將收集支付卡信息，例如您支付卡的支付賬號和到期日期。
                                有時我們會要求您提供電話號碼、郵寄地址、賬單地址、出生日期和性別信息。<br /><br />
                                我們的一些網站還提供求職申請功能。
                                在此情況下，我們還會要求您提供簡歷、姓名和電子郵件地址。
                                我們使用這些信息來評估您是否有資格申請您所申請的職位，或者聯繫您進行面試。<br /><br /><br />
                            </span></p>

                            <h3 style="float:left;">（2）您使用我們的網站、遊戲和應用程序時自動收集的信息</h3><br /><br />
                            <p style="color:black;"><span> 
                                當您訪問我們的網站或使用我們的遊戲、遊戲引擎和應用程序時，我們會自動收集一些信息。
                                如果我們收集的信息合併後能夠識別您這個人，則我們會將合併後的信息視為個人信息。
                                我們通常會將我們自動收集的數據進行匯總，並以統計的形式用於確定用戶群體的趨勢，而不會用它來識別個人。<br />
                                我們通過網頁瀏覽器、Cookie、日誌文件、網站信標等技術自動收集信息，而我們的後端服務器收集通過我們的遊戲和其他軟件傳輸的使用數據。
                                我們將這些信息用於修改或優化功能、管理廣告、解決技術問題、防止欺詐或濫用我們的服務、進行數據分析等目的。我們自動收集的信息類型可能會發生變化，但通常包括：<br />
                                有關您用於訪問互聯網或我們的服務的計算機、設備、硬件或軟件的技術信息；<br />
                                有關您與我們的網站、遊戲、遊戲引擎和應用程序進行交互的使用信息和統計數據；<br />
                                有助於提供更加安全、更加個性化體驗的信息；<br />
                                您設備的位置，例如可通過您設備的IP地址確定。<br /><br />
                                請注意，如果我們網站上的某些功能是由第三方提供的，那麼這些第三方也可能會使用自動收集數據的方式，並且可能會記錄您在一段時間內對我們網站或其他網站的使用情況。這些功能受第三方隱私聲明和政策的約束。<br /><br />
                                <br />
                            </span></p>

                            <h3 style="float:left;">（3）我們從其他方接收的信息</h3><br /><br />
                            <p style="color:black;"><span>
                                在某些情況下，其他方會向我們提供有關您的信息，或者允許我們收集有關您的信息。
                                我們通常通過四種方式向其他方收集或接收信息：<br />
                                （1）您通過並非由我們控制的網站或設備；<br />
                                （2）您選擇使用我們遊戲或應用程序的社交功能；<br />
                                （3）您向其他方購買我們的遊戲或應用程序；<br />
                                （4）您使用我們的遊戲包含或需要其他方提供的反作弊服務。<br /><br />
                                某些情況下，我們無法控制社交網絡等其他方提供給我們的信息的數量和類型。
                                在這些情況下，我們僅使用我們需要的數據，以提供我們認為我們的用戶想要和期望的服務類型。
                                雖然我們無法控制您在這些網站上的隱私設置，也無法控制其他方如何保護您的隱私，但一旦我們通過這些網站收到有關您的信息，我們將按照本政策對待這些信息。<br /><br />
                                <br />
                            </span></p>

                            <h2 style="float:left;">我們如何使用和共享信息</h2><br /><br />
                            <p style="color:black;"><span>
                                一般來說，我們將您的信息用於提供您請求的服務、體驗、商品或信息。我們也可能會將您的信息用於以下目的。
                                為了維護我們的合法利益，且在不違反您權利和偏好的情況下，我們使用個人數據：<br /><br />
                                與您進行溝通，回复您的請求，或者向您提供更新和信息；
                                更好地了解我們的用戶及其興趣偏好；
                                為您提供個性化的體驗，保存您的偏好，對我們的用戶進行驗證，以及提供類似用戶體驗功能；
                                開發、提供和優化我們的產品、服務等；
                                管理和定制廣告或促銷優惠；
                                確保安全；
                                執行審計和數據分析等內部目的。
                                根據您已接受的條款提供服務，。
                                當我們想要為了與本政策不一致的目的處理您的個人信息時，我們會在徵得您同意的情況下使用您的信息。
                                遵守法律義務。
                                我們僅會在實現收集個人信息目所需的合理期限內存儲個人信息。<br /><br />
                                
                                如果您在商店中購買了遊戲，我們可能會將您的信息共享給遊戲的開發商或發行商，以便他們為您提供與遊戲體驗相關的支持以及為其他合理目的聯繫您。例如，我們將把您的信息共享給遊戲的開發商或發行商，這樣他們就能夠與您進行與遊戲交易相關事務的溝通。
                                在取得您同意的情況下，或者在開發商或發行商的隱私義務範圍內，他們也可能會向您發送進行他們旗下其他遊戲或產品的信息，對此您可以隨時取消訂閱。
                                此外，我們可能會向開發商或發行商提供必要的信息用以支持遊戲體驗、多人遊戲模式或遊戲內社交功能。<br /><br />
                                <br />
                            </span></p>

                            <h2 style="float:left;">您的選擇</h2><br /><br />
                            <p style="color:black;"><span>
                                您可以選擇是否向我們提供個人信息以及是否共享個人信息。
                                任何同意的撤回均不具有追溯效力，不會影響我們依賴於您的同意所進行的處理。
                                通常，我們只會要求您提供履行您所要求服務所必需的個人信息。
                                如本政策中“您自願選擇提供的信息”部分所述，您可以選擇不向我們提供我們要求提供的個人信息。
                                但是，某些情況下，如果您決定不提供我們要求提供的個人信息，我們將無法提供您請求的遊戲、應用程序、服務、信息或功能。
                                您的其他選擇包括：

                                您無需提供任何個人信息即可瀏覽我們的網站。如上所述，我們可能會自動收集一些有限的信息。
                                您可以使用郵件中提供的退出機制隨時選擇不接收我們的郵件。
                                您可以在其他方的網站（例如社交網絡）上更改您的隱私設置，停止或限制我們接收來自這些其他網站的信息。您也可以選擇不使用我們提供的社交功能。如果您選擇使用這些功能，則您應避免發布對其他人可見的個人信息，例如在論壇上或聊天過程中提及您的電子郵件地址。
                                您可以更改瀏覽器設置或採取其他措施來阻止、管理或刪除Cookie。我們所有的網站和在線服務目前並非都能夠對瀏覽器的“請勿追?”信號做出響應，因此您需要使用瀏覽器設置來有效管理Cookie。某些情況下，阻止或禁用Cookie可能會導致我們的網站、遊戲和應用程序無法按照預期運行，並且某些功能可能無法使用。
                                如果您未滿18歲，並且擁有我們網站、移動應用程序、遊戲引擎、遊戲或其他在線服務的帳戶，則您可以要求我們刪除您提供的某些內容，例如刪除或編輯您發布的評論。您也可以按照本政策中“如何?系我們”部分所述的方式聯繫我們，要求我們協助刪除您發布的內容或對其進行匿名處理。請注意，採取這些措施可能無法確保完全刪除在我們網站、在線服務、應用程序或遊戲上發布的內容或信息。如果法律要求我們保留您發布的內容，或者其他方已經將內容轉發到並非由我們擁有或控制的網站、應用、遊戲或其他在線服務上，我們也可能無法刪除您發布的內容。
                                您也可以通過下方“如何?系我們”部分所述的地址向我們發送電子郵件，行使和修改您的選擇。<br /><br />
                                <br />
                            </span></p>

                            <h2 style="float:left;">訪問和更正</h2><br /><br />
                            <p style="color:black;"><span>
                                您可以要求訪問和更正您的個人信息。您可以通過我們的網站隨時更新您的帳戶信息。
                                如果您希望訪問或更正您的個人信息，請發送電子郵件至下方“如何?系我們”部分所述地址提交您的請求。
                                請在請求中註明您的姓名、電子郵件地址和郵寄地址，並具體描述您希望訪問或更正的信息，
                                以便我們能夠及時、恰當地做出回應。<br /><br /><br />
                            </span></p>
        
                            <h2 style="float:left;">我們如何保護個人信息</h2><br /><br />
                            <p style="color:black;"><span>
                                我們採取了適當的管理、技術和物理安全措施來保護您的個人信息免遭意外、非法或未經授權的銷毀、丟失、篡改、訪問、披露、使用以及其他非法形式的處理。某些情況下，您登錄我們提供的某項功能後，即可訪問您的信息。
                                在此情況下，您需要保護您的用戶證書和密碼的機密性和安全性，以保護您的信息。<br /><br /><br />
                            </span></p>

                           <h2 style="float:left;">兒童隱私</h2><br /><br />
                            <p style="color:black;"><span>
                                網站、遊戲、遊戲引擎和應用程序並不針對兒童提供。我們也不會通過我們的網站、遊戲、遊戲引擎或應用程序有意向兒童收集個人信息。
                                如果您是某位兒童的家長或監護人，並且您認為我們無意中收到了該兒童的個人信息，我們將從我們的記錄中刪除這些信息。<br /><br />
                                <br />
                            </span></p>

                            <h2 style="float:left;">信息傳輸</h2><br /><br />
                            <p style="color:black;"><span>
                                作為我們國際業務的一部分，我們可能會將您的信息傳輸到我們業務所在的任何司法轄區。
                                一旦您使用我們的網站、遊戲、遊戲引擎或應用程序，即表明您承認我們可能會按照本政策所述傳輸您的信息。
                                我們將會出於本政策所述任何目的，將您的個人信息傳輸到可能位於您所在司法管轄區以外的我們的子公司、關聯公司、服務提供商和業務合作夥伴。
                                這些司法管轄區的法律可能無法提供與您所在國家/地區的法律同等水平的數據保護。
                                但是，我們會按照本政策中所述的保護條款處理您的個人信息。
                                當我們從歐盟向我們組織位於歐盟以外的實體傳輸個人信息時，我們將根據歐盟委員會採用的標準合同條款來幫助制定充分的保護措施。<br /><br />
                                <br />
                            </span></p>

                            
                            <h2 style="float:left;">其他隱私權和義務</h2><br /><br />
                            <p style="color:black;"><span>
                                本部分載明的權利處理的個人信息或者位於個人數據以及我們對其個人信息的義務。
                                同樣，實體處理您的個人信息，則您可以要求訪問、更正或刪除您的個人信息。
                                如果您擁有我們的帳戶，則您可以通過我們的網站登錄您的帳戶，隨時訪問和更新您的帳戶信息。
                                您也可以要求我們向您提供一份您的個人信息，或者代您更新或刪除您的個人信息。您要求訪問、更正或刪除您個人信息的權利有時會有所限制。
                                <br /><br />
                            </span></p>

                           <h2 style="float:left;">隱私政策更新</h2><br /><br />
                            <p style="color:black;"><span>
                                本政策可能會根據我們個人信息慣例或相關法律的變化定期更新。
                                我們會在本政策頂部註明本政策的最後更新日期。
                                每次訪問或使用我們的網站、遊戲引擎、遊戲或應用程序時，請仔細閱讀本政策，確保您已了解最新版本。<br /><br />
                            </span></p>

                        </div>
                    </div>
                

            </div>
<!----------------------------------footer---------------------------------->
        <section id="footer">
                <div class="container">
                    <div class="row text-center text-xs-center text-sm-left text-md-left">
                        <div class="col-sm-4 col-md-4">
                            <h4>主頁</h4>
                            <ul class="list-unstyled quick-links">
                                <li><a href="Index_meun/WebStore.aspx"><i class="fa fa-angle-double-right"></i>首頁</a></li>
                                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>商店</a></li>
                                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>搜尋</a></li>
                                <li><a href="../Index_meun/WebSign_in.aspx"><i class="fa fa-angle-double-right"></i>登入/註冊</a></li>
                            </ul>
                        </div>
                        <div class=" col-sm-4 col-md-4">
                            <h4>資訊</h4>
                            <ul class="list-unstyled quick-links">
                                <li><a href="Index_meun/Web_news.aspx"><i class="fa fa-angle-double-right"></i>新聞</a></li>
                                <li><a href="Index_meun/Web_about.aspx"><i class="fa fa-angle-double-right"></i>關於</a></li>
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
                                <li><a href="#"><i class="fa fa-angle-double-right"></i>隱私條款</a></li>

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
<!--******************footer end******************-->

        </div><!--container end-->
    </form>
</body>
</html>
