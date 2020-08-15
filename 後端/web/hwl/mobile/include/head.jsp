<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title><%=app_webtitle%></title>
<%-- =============META============= --%>
<%--RWD用--%>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%--android 手機板主題顏色用 更改網址列顏色--%>
<meta name="theme-color" content="#279935">
<%--讓ie在切換瀏覽器模式時 文件模式會使用最新的版本--%>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<%--取消行動版 safari 自動偵測數字成電話號碼--%>
<meta name="format-detection" content="telephone=no">
<%-- =============CSS============= --%>
<%--css--%>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<%--google material icon--%>
<link rel="stylesheet" href="../icon_fonts/material_icons/material-icons.css">
<%--輪播特效--%>
<link rel="stylesheet" href="../js/swiper/idangerous.swiper.css" />
<%--漣漪效果--%>
<link href="../js/ripples/ripples.css" rel="stylesheet" type="text/css" />
<%-- =============ICON============= --%>
<%--電腦版icon--%>
<link rel="shortcut icon" href="../images/favicon.png" />
<%--手機版icon  57x57px--%>
<link rel="apple-touch-icon" href="../images/icon.png" />
<%--手機版icon  72x72px--%>
<link rel="apple-touch-icon" sizes="72x72" href="../images/icon-72.png" />
<%--手機版icon  114x114px--%>
<link rel="apple-touch-icon" sizes="114x114" href="../images/icon%402.png" />
<%-- =============SCRIPT============= --%>
<%--jquery--%>
<script src="../js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="../js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<%--JavaScript共用區--%>
<script src="../js/common.js" type="text/javascript"></script>
<%--漣漪效果--%>
<script src="../js/ripples/material.js" type="text/javascript"></script>
<script src="../js/ripples/ripples.min.js" type="text/javascript"></script>
<script type="text/javascript" src="../../js/DataCheck.js"></script>
<script type="text/javascript">
//----------------------------------字級變化特效----------------------------------
$(function(){
	var n = 2;
	var percentage = ["htmlFontSize80",
					  "htmlFontSize90",
					  "htmlFontSize100",
					  "htmlFontSize110",
					  "htmlFontSize120",
					  "htmlFontSize130",
					  "htmlFontSize140",
					  "htmlFontSize150",
					  "htmlFontSize175",
					  "htmlFontSize200"];
	$(".fSZ_plus").click(function(e) {
		if ( n<9 ) {
			n++;
			$("html").removeClass().addClass(percentage[n]);
		};
	});
	$(".fSZ_cut").click(function(e) {
		if ( n>=1 ) {
			n--;
			$("html").removeClass().addClass(percentage[n]);
		};
	});
});
</script>

<!--設計師測試更換網站顏色用  可刪  start-->
<script type="text/javascript" src="../js/jquery.cookie.js"></script>
<script type="text/javascript">
	$(function(){
		//字色底色
		var _text = $.cookie('text');
		var _bg = $.cookie("bg");
		
		$(".changeColorSubmit").click(function(e) {
			var textColor = $("#changeTextColor option:selected").attr("data-val");
			var bgColor   = $("#changeBackgroundColor option:selected").attr("data-val");
			
			$.cookie("text", textColor, {path:'/'});
			$.cookie("bg", bgColor, {path:'/'});
		});
		
		if ( $.cookie("text")!=null ) {
			$("body").addClass(_text);
			$("body").addClass(_bg);
		};
		
		$(".changeColorReset").click(function(e) {
            $.cookie('text', '', { path:'/', expires: -1 });
			$.cookie('bg', '', { path:'/', expires: -1 });
        });
	});
</script>