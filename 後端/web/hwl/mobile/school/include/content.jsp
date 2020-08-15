<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="right">
<a accesskey="C" title="內容區" href="#content_access" id="content_access">:::</a> 
                <!--新增修改banner套件 modify by pekey 20190625 start-->
                <!--輪播-->
  <div class="banner">
       <div class="swiper-container swiper-container_pc">
              <%for (TableRecord ap : links) {%>
             <div class="swiper-wrapper">
                <div class="swiper-slide">
				
					<a href="<%=ap.getString("ap_url")%>" target="<%=ap.getString("ap_target")%>" title="<%=show_str.get("go."+lang) %><%=ap.getString("ap_title")%>">
                    <img src="<%=app_fetchpath + "/banner/" + lang + "/" + ap.getString("ap_image")%> alt="<%=ap.getString("ap_alt")%>" title="<%=ap.getString("ap_alt")%>" />
                	</a>
                </div>
             </div>
              <%}%>      
                        
         <div class="swiper-button-prev"></div>
         <div class="swiper-button-next"></div>      
        </div>
   </div>

                <!--新增大banner套件 modify by pekey 20190625 start-->
                <!--輪播特效 第二塊 開始-->
                <script type="text/javascript" src="../js/swiper-master/js/swiper.min.js"></script>
                <script>
                    var swiper = new Swiper('.swiper-container_pc', {
                        
                        //輪播一次顯示幾張
                        slidesPerView: 1,
                        
                        //輪播位置啟始值為置中
                        centeredSlides: true,
                        
                        //自動輪播
                        autoplay: {
                            delay: 5000,
                            disableOnInteraction: false,
                        },
                        
                        //無限循環
                        loop: true,
                        
                        //輪播點點顯示
                        //pagination: {
        //						el: '.swiper-container .swiper-pagination',
        //						clickable: true,
        //					},
                        
                        //左右按鍵點擊效果
                        navigation: {
                            nextEl: '.swiper-button-next',
                            prevEl: '.swiper-button-prev',
                        },
                    });
                </script>
                <!--輪播特效 第二塊 結束-->
                <!--新增大banner套件 modify by pekey 20190625 end-->
                
     <!--首頁最新消息-->           
     <div class="indexNewsArea courseNewsArea">           
                   <div class="indexNews_tit">
                        <div class="iNT_tw">最新消息</div>
                        <div class="iNT_en">NEWS</div>
                        <div class="iNT_more">
                        	<a href="#" title="觀看更多最新消息">More...</a>
                        </div>
                    </div>                
                
           <div class="indexNewsListArea">
				<%for (TableRecord np : np0) {%>
					<div class="indexNewsList">
						<div class="iNL_tit">
							<a href="<%=np.getString("np_mobile")%>" target="<%=np.getString("np_target")%>" title="<%=AppConfig.getProperty("openLink." + lang)%><%=np.getString("np_title")%>">
								<p><%=np.getString("np_title")%></p></a>
                         </div>
						<div class="iNL_time"><%=np.getString("np_emitdate")%></div>
					</div>
				<%}%>
			</div>
			
			<div class="indexNews_more">
                <a href="#" title="查看更多最新消息">
                   <span></span> 更多訊息...
                </a>
            </div>
	</div>		
	<!--首頁最新消息 end-->			
	
     <!--首頁 國際證照消息-->           
     <div class="indexNewsArea courseNewsArea">           
         <div class="indexNews_tit">
             <div class="iNT_tw"> 國際證照消息</div>
             <div class="iNT_en"> NEWS</div>
             <div class="iNT_more">
                 <a href="#" title="觀看更多最新消息">More...</a>
             </div>
         </div>           
                
          <div class="indexNewsListArea">
			<%for (TableRecord np : np0) {%>
				<div class="indexNewsList">
					<div class="iNL_tit">
						<a href="<%=np.getString("np_mobile")%>" target="<%=np.getString("np_target")%>" title="<%=AppConfig.getProperty("openLink." + lang)%><%=np.getString("np_title")%>">
							<p><%=np.getString("np_title")%></p></a>
                        </div>
					<div class="iNL_time"><%=np.getString("np_emitdate")%></div>
				</div>
			<%}%>
		</div>
			
		<div class="indexNews_more">
             <a href="#" title="查看更多最新消息">
                <span></span> 更多訊息...
             </a>
         </div>
	</div>		
	<!--首頁 國際證照消息 end-->			
	
	<!--首頁_廣告連結_輪播區塊-->
	<div class="index_adBg"> 
 		<div class="indexNews_tit">
          <div class="iNT_tw">友善連結</div>
          <div class="iNT_en">LINK</div>
      	</div>
	
	<div class="indexAd_listArea">
				<div class="device device4"> 
		            <a class="ad_left" href="javascript: void(0);">
		                <img src="../index/images/left_arrow.png" width="37" alt="left_arrow" title="left_arrow" />
		            </a> 
		            <a class="ad_right" href="javascript: void(0);">
		                <img src="../index/images/right_arrow.png" width="37" alt="right_arrow" title="right_arrow" />
		            </a>
				           <div class="swiper-container swiper-container_ad">
				           	<div class="swiper-wrapper">
				           		 <%for(TableRecord ap : aps) { %>
								<div class="swiper-slide">
						            <div class="indexAd_list">
											<a href="<%=ap.getString("ap_url")%>" target="<%=ap.getString("ap_target")%>" title="<%=show_str.get("go."+lang) %><%=ap.getString("ap_title")%>">
						                    <img src="<%=app_fetchpath + "/school_banner/" + lang + "/" + ap.getString("ap_image")%> alt="<%=ap.getString("ap_alt")%>" title="<%=ap.getString("ap_alt")%>" />
						                </a>
						            </div>
								</div>
								<%}%>
				           	</div>
				           </div>
		            <div class="pagination"></div>
				</div>
	</div>
	
    <!--輪播特效 第二塊 開始-->
      <script src="../js/swiper/idangerous.swiper.min.js"></script>
      <script type="text/javascript">
          //廣告連結區塊 列表 用
          var windowWidth = $(window).width();
          var mySwiper4;
          
          //說明資料API http://swiper2.swiper.com.cn/api/index.html
          $(function(){
              if ( windowWidth >= 641 ) {
                  //$("#additional").attr("src","../js/additional_pc.js");
                  mySwiper4 = new Swiper('.swiper-container_ad',{							
                      simulateTouch: true,                       //默認為true，swiper接受鼠標點擊、拖動。設置為false時無法拖動
                      loop:true,                                 //设置为true 则开启loop模式。loop模式：会在wrapper前后生成若干个slides让slides看起来是衔接的，用于无限循环切换
                      grabCursor: true,                          //设置为true时，鼠标覆盖Swiper时指针会变成抓手形状
                      autoplay : 5000,                           //自动切换的时间间隔（单位ms），不设定该参数slide不会自动切换
                      calculateHeight : true,                    //当值为true时，Swiper根据slides内容计算容器高度
                      autoplayDisableOnInteraction : false,      //用户操作swiper之后，是否禁止autoplay。默认为true：停止。 如果设置为false，用户操作swiper之后自动切换不会停止，每次都会重新启动autoplay
                      slidesPerView : 4,   	                   //设置slider容器能够同时显示的slides数量(carousel模式)。另外，支持'auto'值，会根据容器container的宽度调整slides数目。'auto'不兼容loop模式，除非你设置了loopedSlides。
                      resizeReInit : true,
                      loopedSlides :1,                         //在loop模式下使用slidesPerview:'auto',还需使用该参数设置所要用到的loop个数。
                  })
                  
                  $('.ad_left').click(function(){
                      mySwiper4.swipePrev(); 
                  });
                  $('.ad_right').click(function(){
                      mySwiper4.swipeNext(); 
                  });
              }if ( windowWidth < 641 ) {
                  //$("#additional").attr("src","../js/additional_mobile.js");
                  mySwiper4 = new Swiper('.swiper-container_ad',{							
                      simulateTouch: true,                       //默認為true，swiper接受鼠標點擊、拖動。設置為false時無法拖動
                      loop:true,                                 //设置为true 则开启loop模式。loop模式：会在wrapper前后生成若干个slides让slides看起来是衔接的，用于无限循环切换
                      grabCursor: true,                          //设置为true时，鼠标覆盖Swiper时指针会变成抓手形状
                      autoplay : 5000,                           //自动切换的时间间隔（单位ms），不设定该参数slide不会自动切换
                      calculateHeight : true,                    //当值为true时，Swiper根据slides内容计算容器高度
                      autoplayDisableOnInteraction : false,      //用户操作swiper之后，是否禁止autoplay。默认为true：停止。 如果设置为false，用户操作swiper之后自动切换不会停止，每次都会重新启动autoplay
                      slidesPerView : 2,   	                   //设置slider容器能够同时显示的slides数量(carousel模式)。另外，支持'auto'值，会根据容器container的宽度调整slides数目。'auto'不兼容loop模式，除非你设置了loopedSlides。
                      resizeReInit : true,
                      loopedSlides :1,                         //在loop模式下使用slidesPerview:'auto',还需使用该参数设置所要用到的loop个数。
                  })
                  
                  $('.ad_left').click(function(){
                      mySwiper4.swipePrev(); 
                  });
                  $('.ad_right').click(function(){
                      mySwiper4.swipeNext(); 
                  });
              }
          })
          
          //廣告連結區塊 列表 重置顯示數量用
          function additional() {
              var win_W = $(window).width();
              if ( win_W >= 641 ) {
                  mySwiper4.params.slidesPerView=4;
              }if ( win_W < 641 ) {
                  mySwiper4.params.slidesPerView=2;
              }
          }
          
          $(window).resize(function(e) {
              additional();
              mySwiper4.reInit();
          });
      </script>
      <!--<script type="text/javascript" id="additional"></script>-->
      <!--輪播特效 第二塊 結束-->
	</div><!--首頁_廣告連結_輪播區塊-->
	
	
</div>