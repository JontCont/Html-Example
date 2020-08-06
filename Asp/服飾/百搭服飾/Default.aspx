﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>百搭服飾</title>

    <style type="text/css">
body{
	margin:0px;
	font-family:"微軟正黑體";
}
h1,h2,h3,h4,h5{
	margin:0px;
	padding:0px;
	font-weight:normal;
}
#container{
	width:900px;
	margin:0px auto;
	background-color:#FFE57B;
}
#header{
	width:100%;
	height:101px;
	background:url(images/index.jpg) no-repeat;
}
input#search{
	height:35px;
	width:187px;
	border:none;
	float:left;
	margin:50px 0px 0px 630px;
}
#button a{
	display:block;
	width:68px;
	height:30px;
	float:left;
	font-size:18px;
	text-align:center;
	padding-top:7px;
	margin-top:50px;
	text-decoration:none;
	background:#9ed721;
	color:#FFFFFF;
}
ul,li{
	margin:0px;
	padding:0px;
	list-style:none;
}
ul li a{
	display:block;
	width:150px;
	height:33px;
	float:left;
	text-align:center;
	text-decoration:none;
	padding-top:10px;
	background-color:#FFFFFF;
	color:#FFFFFF;
	border-bottom:1px #D7D7D7 solid;
}
.bgcolor_01{
	background-color:#9080e8;
}
.bgcolor_02{
	background-color:#de7c7a;
}
.bgcolor_03{
	background-color:#73d1bb;
}
.bgcolor_04{
	background-color:#d9e874;
}
.bgcolor_05{
	background-color:#d69f6b;
}
.bgcolor_06{
	background-color:#9ede6a;
}
.column{
	padding:8px;
	width:209px;
	float:left;
}
.blocks{
	padding:10px;
	margin-bottom:10px;
	background-color:#FFFFFF;
	border-bottom:1px #D7D7D7 solid;
	border-right:1px #D7D7D7 solid;
}
.blocks img{
	width:189px;
}
.blocks h4{
	margin-bottom:5px;
	color:#740B0C;
}
.blocks li{
	font-size: 12px;
	list-style-type:square;
	list-style-position:inside;
}
.blocks h3{
	color:#FF59C5;
	padding-left:30px;
	background-image:url(images/icon.png);
	background-size:25px;
	background-repeat:no-repeat;
	margin-top:10px;
}
#footer{
	height:40px;
	text-align:center;
	padding-top:20px;
	background-color:#d9e874;
	font-size:12px;
	color:#2A2A2A;
}
.cle{
	clear:both;
}
#copy{
	float:left;
	padding-left:150px;
	padding-top:3px;
}
#footer a{
	display:block;
	float:left;
	padding:5px 10px;
	color:#000000;
	text-decoration:none;
	border-right:1px #707070 solid;
}
#footer a:hover{
	background-color:#D5A03A;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
<div id="container">
	<div id="header">
    <input type="search" name="search" id="search"/>
    <div id="button"><a href="#">搜尋</a></div>
    </div>
    <div id="nav">
    	<ul>
    	    <li><a href="#" class="bgcolor_01">本週新品</a></li>
            <li><a href="#" class="bgcolor_02">新款上衣</a></li>
            <li><a href="#" class="bgcolor_03">潮流飾品</a></li>
            <li><a href="#" class="bgcolor_04">顯瘦下著</a></li>
            <li><a href="#" class="bgcolor_05">明星上衣</a></li>
            <li><a href="#" class="bgcolor_06">人氣熱銷</a></li>
        </ul>
    </div>
    <div id="content">
    	<div class="column">
        	<div class="blocks">
                <a href="#"><img src="images/photo_01.jpg"/></a>
                <h4>韓版甜美立體小花朵雪紡上衣</h4>
                <li>精選流行熱銷商品</li>
                <li>穿搭出你的流行時尚感</li>
                <h3>促銷價:425元</h3>
            </div>
            <div class="blocks">
                <a href="#"><img src="images/photo_05.jpg"></a>
                <h4>寬鬆百搭兩件式印花上衣背心裙裝</h4>
                <li>兩件式休閒風格，簡約有型</li>
                <li>英文字母上衣，修身背心裙</li>
                <h3>促銷價:738元</h3>
            </div>
        </div>
        <div class="column">
        	<div class="blocks">
                <a href="#"><img src="images/photo_02.jpg"></a>
                <h4>幾何藝術縷空內增鞋</h4>
                <li>縷空雕花設計</li>
                <li>無負擔心機內增高</li>
                <h3>促銷價:1,250元</h3>
            </div>
            <div class="blocks">
                <a href="#"><img src="images/photo_06.jpg"/></a>
                <h4>蠶絲保暖針織褲</h4>
                <li>腰部彈性鬆緊</li>
                <li>百變穿搭 反摺也好看</li>
                <h3>促銷價:1,380元</h3>
            </div>
        </div>
        <div class="column">
        	<div class="blocks">
                <a href="#"><img src="images/photo_03.jpg"/></a>
                <h4>親子款輕量連帽羽絨背心</h4>
                <li>JIS90%羽絨，極至輕盈保暖</li>
                <li>台灣福懋高密度表</li>
                <h3>促銷價:1,880元</h3>
            </div>
            <div class="blocks">
                <a href="#"><img src="images/photo_07.jpg"/></a>
                <h4>佩登斯時尚漁網超彈力褲襪</h4>
                <li>日本進口尼龍紗織造</li>
                <li>台灣嚴選製造</li>
                <h3>促銷價:400元</h3>
            </div>
        </div>
        <div class="column">
        	<div class="blocks">
                <a href="#"><img src="images/photo_04.jpg"/></a>
                <h4>清新氣質雪紡洋裝</h4>
                <li>不規則式裙擺垂順飄逸</li>
                <li>修飾完美身型</li>
                <h3>促銷價:780元</h3>
            </div>
            <div class="blocks">
                <a href="#"><img src="images/photo_08.jpg"/></a>
                <h4>歐系牛皮大方包</h4>
                <li>名媛名媛最愛真皮包</li>
                <li>大容量時尚不退時</li>
                <h3>促銷價:879元</h3>
            </div>
            <div class="blocks">
                <a href="#"><img src="images/photo_09.jpg"/></a>
                <h4>韓風多彩寬短版收納包</h4>
                <li>韓風最新款</li>
                <li>可放護照、零錢、信用卡等</li>
                <h3>促銷價:650元</h3>
            </div>
        </div>
    </div>
    <div class="cle"></div>
    <div id="footer">
   <div id="copy">
   COPYRIGHT&copy;百搭服飾</div> <a href="#">本週新品</a>  <a href="#">新款上衣</a><a href="#">潮流飾品</a><a href="#">顯瘦下著</a><a href="#">明星上衣</a><a href="#" style="border:none;">人氣熱銷</a>
    </div>
    <div class="cle"></div>
</div>
    </form>
</body>
</html>
