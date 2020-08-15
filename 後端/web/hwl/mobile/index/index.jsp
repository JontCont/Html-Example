<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//讀取輪播資料6筆
	Vector<TableRecord> aps = app_sm.selectAll(tblap,
			"ap_lang=? and ap_code=? AND (? BETWEEN DATE_FORMAT(ap_emitdate,'%Y/%m/%d') and DATE_FORMAT(ap_restdate,'%Y/%m/%d'))",
			new Object[]{lang, "banner", app_today}, "ap_showseq ASC , ap_createdate DESC limit 5");

	//讀取連結資料
	Vector<TableRecord> links = app_sm.selectAll(tblap, 
			"ap_lang=? and ap_code=?AND (? BETWEEN DATE_FORMAT(ap_emitdate,'%Y/%m/%d') and DATE_FORMAT(ap_restdate,'%Y/%m/%d'))",
			new Object[]{lang, "banner", app_today},"ap_showseq ASC , ap_createdate DESC limit 7"	);

	//第一筆最新消息
	TableRecord np0 = app_sm.select(tblnp,
			"np_code=? AND np_lang=? AND (? BETWEEN DATE_FORMAT(np_emitdate,'%Y/%m/%d') and DATE_FORMAT(np_restdate,'%Y/%m/%d'))",
			new Object[]{"news", lang, app_today},
			"np_showseq ASC , np_emitdate DESC , np_modifydate DESC , np_createdate DESC limit 0,1");

	//其餘8筆最新消息
	Vector<TableRecord> nps = app_sm.selectAll(tblnp,
			"np_code=? AND np_lang=? AND (? BETWEEN DATE_FORMAT(np_emitdate,'%Y/%m/%d') and DATE_FORMAT(np_restdate,'%Y/%m/%d'))",
			new Object[]{"news", lang, app_today},
			"np_showseq ASC , np_emitdate DESC , np_modifydate DESC , np_createdate DESC limit 0,8");

	//Youtube影片資料1筆
	TableRecord video = app_sm.select(tblap, "ap_code=? AND ap_lang=?", new Object[]{"video", lang});
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="htmlFontSize100">
<%--class內預設為100 會依照字級特效改變--%>
<head>
<%-- 共用設定 --%>
<%@include file="../include/head.jsp"%>
<%-- SEO 讀取關鍵字設定值 (讀取首頁共用值) --%>
<meta name="Robots" content="<%=SiteSetup.getText("seo.robots." + lang)%>" />
<meta name="revisit-after" content="<%=SiteSetup.getText("seo.revisit_after." + lang)%> days" />
<meta name="keywords" content="<%=SiteSetup.getText("seo.keywords." + lang)%>" />
<meta name="copyright" content="<%=SiteSetup.getText("seo.copyright." + lang)%>" />
<meta name="description" content="<%=SiteSetup.getText("seo.description." + lang)%>" />
<%-- SEO --%>
<%-- 追蹤碼 --%><%=SiteSetup.getText("seo.track." + lang)%><%-- 追蹤碼 --%>
</head>

<body>

	<%--版頭--%>
	<%@include file="../include/top_menu.jsp"%>

	<%--main--%>
	<div class="main">
 <div class="wrap">
		<div class="banner">

			<div class="device">
				<div class="swiper-container swiper-container_mobile">
					<div class="swiper-wrapper">

						<%
							for (TableRecord ap : aps) {
						%>
						<div class="swiper-slide">
							<%
								if (!ap.getString("ap_target").equals("none")) {
							%>
							<a href="<%=ap.getString("ap_mobileurl")%>" target="<%=ap.getString("ap_target")%>" title="<%=AppConfig.getProperty("openLink." + lang)%><%=ap.getString("ap_title")%>">
								<%
									} else {
								%>
								<a>
									<%
										}
									%>
									<img src="<%=app_fetchpath + "/banner/" + lang + "/" + ap.getString("ap_image")%>" width="640" height="580" alt="<%=ap.getString("ap_alt")%>" title="<%=ap.getString("ap_alt")%>" class="mobile_banner" />
								</a>
						</div>
						<%
							}
						%>
					</div>
				</div>
				<div class="pagination"></div>
			</div>
		</div>

		<!--輪播特效 第二塊 開始-->
		<script src="../js/swiper/idangerous.swiper.min.js"></script>
		<script>
			//說明資料API http`://swiper2.swiper.com.cn/api/index.html
			var mySwiper = new Swiper('.swiper-container_mobile', {
				paginationClickable : true, //值为true时，点击分页器的指示点时会发生Swiper
				<%if (aps.size() > 1) {%>
				simulateTouch: true,                       //默認為true，swiper接受鼠標點擊、拖動。設置為false時無法拖動
				grabCursor: true,                          //设置为true时，鼠标覆盖Swiper时指针会变成抓手形状
				loop:true,                                 //设置为true 则开启loop模式。loop模式：会在wrapper前后生成若干个slides让slides看起来是衔接的，用于无限循环切换
				<%} else {%>
				simulateTouch: false,
				<%}%>
				calculateHeight : true, //当值为true时，Swiper根据slides内容计算容器高度
				autoplay : 6000, //自动切换的时间间隔（单位ms），不设定该参数slide不会自动切换
				autoplayDisableOnInteraction : true, //用户操作swiper之后，是否禁止autoplay。默认为true：停止。 如果设置为false，用户操作swiper之后自动切换不会停止，每次都会重新启动autoplay
				//slidesPerView : 2,                       //设置slider容器能够同时显示的slides数量(carousel模式)。另外，支持'auto'值，会根据容器container的宽度调整slides数目。'auto'不兼容loop模式，除非你设置了loopedSlides。
				//loopedSlides :6,                         //在loop模式下使用slidesPerview:'auto',还需使用该参数设置所要用到的loop个数。
			});
			$(window).resize(function(e) {
				mySwiper.reInit();
			});
			<%if (aps.size() > 1) {%>
			//修正偶爾輪播偏移問題
			$(window).ready(function(e) {
				var banner_W = $(".swiper-slide").innerWidth();
				mySwiper.setWrapperTranslate(-banner_W,0,0);
			});
			<%}%>
		</script>
		<!--輪播特效 第二塊 結束-->

		

			<!--首頁最新消息-->
			<div class="indexNewsArea">

				<div class="indexNews_tit">
					<div class="iNT_tw">
						<%=AppConfig.getProperty("news." + lang)%>
						<!--重要訊息 NEWS-->
					</div>
					<%
						if (lang.equals("tw")) {
					%>
					<div class="iNT_en">NEWS</div>
					<%
						}
					%>
				</div>

				<div class="indexNewsListArea">
					<%
						for (TableRecord np : nps) {
					%>
					<div class="indexNewsList">
						<div class="iNL_time"><%=np.getString("np_emitdate")%></div>
						<div <%=np.getString("np_display").equals("Y")?"style=\"color: #7d0000;\"":"" %> class="iNL_tit">
							<a <%=np.getString("np_display").equals("Y")?"style=\"color: #7d0000;\"":"" %> href="../about/news_in.jsp?no=<%=np.getString("np_id")%>" title="<%=AppConfig.getProperty("openLink." + lang)%><%=np.getString("np_no").equals("") ? "" : "(" + np.getString("np_no") + ")"%><%=np.getString("np_title")%>">
								<%=np.getString("np_no").equals("") ? "" : "(" + np.getString("np_no") + ")"%><%=np.getString("np_title")%>
							</a>
						</div>
					</div>
					<%
						}
					%>
				</div>

				<div class="indexNews_more">
					<a href="../about/news.jsp" title="<%=AppConfig.getProperty("viewMore." + lang)%>">
						<span></span>
						<%=AppConfig.getProperty("more." + lang)%>...
					</a>
				</div>

			</div>

		

		<!--首頁youtube-->
		<div class="indexYoutube">
			<iframe width="560" height="315" src="https://www.youtube.com/embed/<%=video.getString("ap_url")%>?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
		</div>

		<!--首頁連結區-->
		<div class="indexLinkArea">
			<%
				for (TableRecord link : aps) {
			%>
			<div class="indexLink">
				<%
					if (!link.getString("ap_target").equals("none")) {
				%>
				<a href="<%=link.getString("ap_url")%>" target="<%=link.getString("ap_target")%>" title="<%=AppConfig.getProperty("openLink." + lang)%><%=link.getString("ap_title")%>">
					<%
						} else {
					%>
					<a>
						<%
							}
						%>
						<img src="<%=app_fetchpath + "/school_banner/" + lang + "/" + link.getString("ap_image")%>" width="290" height="59" alt="<%=link.getString("ap_alt")%>" title="<%=link.getString("ap_alt")%>" />
					</a>
			</div>
			<%
				}
			%>

			</div>
		</div>
	</div>

	<%--版腳--%>
	<%@include file="../include/copyright.jsp"%>

</body>
</html>
<%@include file="/WEB-INF/jspf/connclose.jspf"%>