<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%
	//頁面識別碼
	String page_code = "epaper";
	//列表分頁筆數設定
	int page_items = 10;

	String[] names = new String[]{"npage"};
	String[] values = new String[]{String.valueOf(pageno)};

	Vector<TableRecord> nps = app_sm.selectAll(tblnp,
			"np_code=? AND np_lang=? AND (? BETWEEN DATE_FORMAT(np_emitdate,'%Y/%m/%d') and DATE_FORMAT(np_restdate,'%Y/%m/%d'))",
			new Object[]{page_code, lang, app_today}, "np_showseq ASC , np_emitdate DESC , np_createdate DESC");

	app_dp = new DataPager(nps, page_items); // 設定資料分頁每頁筆數
	nps = app_dp.getPageContent(pageno);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%-- 共用設定 --%>
<%@include file="../include/head.jsp"%>
<%@include file="/WEB-INF/jspf/mis/pagerscript.jspf"%>
<%-- SEO 讀取關鍵字設定值 (讀取首頁共用值) --%>
<meta name="Robots" content="<%=SiteSetup.getText("seo.robots." + lang)%>" />
<meta name="revisit-after" content="<%=SiteSetup.getText("seo.revisit_after." + lang)%> days" />
<meta name="keywords" content="<%=SiteSetup.getText("seo.keywords." + lang)%>" />
<meta name="copyright" content="<%=SiteSetup.getText("seo.copyright." + lang)%>" />
<meta name="description" content="<%=SiteSetup.getText("seo.description." + lang)%>" />
<%-- SEO --%>
<%-- 追蹤碼 --%><%=SiteSetup.getText("seo.track." + lang)%><%-- 追蹤碼 --%>
<script>
	function check_epaper(){
		if(!isEmail($("#email").val())){
			alert("<%=AppConfig.getProperty("emailError." + lang)%>");
		}else{
			var url = "epaper_update.jsp";
			$.post(url, {
				Email : $("#email").val(),
				Type : $("input[name='order']:checked").val()
			}, function(data) {
				if(data == "add_complete"){
					alert("<%=AppConfig.getProperty("subscribeSuccess." + lang)%>");
				}else{
					alert("<%=AppConfig.getProperty("unsubscribeSuccess." + lang)%>");
				}
				$("#email").val("")
			});
			return false;
		}
	}
</script>
</head>

<body>

	<%--版頭--%>
	<%@include file="../include/top_menu.jsp"%>

	<%--main--%>
	<div class="main">
		<div class="wrap">

			<%--麵包屑--%>
			<%@include file="include/crumb.jsp"%>

			<%--內頁大標--%>
			<%@include file="include/title.jsp"%>

			<%--左--%>
			<div class="left">

				<%--左選單--%>
				<%@include file="include/left_menu.jsp"%>

			</div>

			<%--右--%>
			<div class="right">

				<div class="NewsListArea title">
					<div class="NewsList">
						<div class="NL_tit"><%=AppConfig.getProperty("subscribeText." + lang)%></div>
					</div>
				</div>
				<form onsubmit="return check_epaper()">
					<div class="searchBar email">
						<div class="sB_email">
							E-Mail：
						</div>
						<div class="sB_bigInput email">
							<input type="text" id="email" />
						</div>
						<div class="clearfloat"></div>
					</div>				
					<div class="epaperBar">
						<div class="eB_item"></div>
						<div class="eB_item eB_text">
							
						</div>
						<div class="eB_item eB_radio">
							<label for="order">
								<input type="radio" name="order" id="order" value="Y" checked />
								<%=AppConfig.getProperty("subscribe." + lang)%>
							</label>
							<label for="disorder">
								<input type="radio" name="order" id="disorder" value="N" />
								<%=AppConfig.getProperty("unsubscribe." + lang)%>
							</label>
						</div>
						<div class="eB_item eB_submit">
							<input type="submit" value="<%=AppConfig.getProperty("submit." + lang)%>" title="<%=AppConfig.getProperty("submitTitle." + lang)%>" />
						</div>
						<div class="clearfloat"></div>
					</div>
				</form>
				<div class="NewsListArea">
					<%
						for (TableRecord np : nps) {
					%>
					<div class="NewsList">
						<div class="NL_time">
							<%=np.getString("np_emitdate")%>
						</div>
						<div class="NL_tit">
							<a target="_blank" href="epaper_in.jsp?no=<%=np.getString("np_id")%>" title="<%=AppConfig.getProperty("openLink." + lang)%><%=np.getString("np_no").trim().equals("") ? "" : "(" + np.getString("np_no") + ")"%><%=np.getString("np_title")%>">
								<%=np.getString("np_no").trim().equals("") ? "" : "(" + np.getString("np_no") + ")"%><%=np.getString("np_title")%>
							</a>
						</div>
					</div>
					<%
						}
					%>
				</div>
			</div>

			<div class="clearfloat"></div>

			<%--頁碼 RWD版 by kevin 20151202--%>
			<div class="page_area_rwd">
				<%@include file="/WEB-INF/jspf/web/mobile_pager.jspf"%>
				<%=HtmlCoder.form("pageform", request.getRequestURI(), names, values)%>
			</div>
		</div>
	</div>

	<%--版腳--%>
	<%@include file="../include/copyright.jsp"%>

</body>
</html>
<%@include file="/WEB-INF/jspf/connclose.jspf"%>