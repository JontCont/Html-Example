<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspf/config.jspf"%>
<% 
// 語系變數為 lang
String page_code = "contact";					// 功能識別碼 , 於資料庫做資料識別及模組程式檔名用

String mp_id	 = StringTool.validString(request.getParameter("mp_id"));
TableRecord mp	 = app_sm.select(tblmp, mp_id);

//Server name.	
String servername = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
if( request.getServerPort()== 80){
	servername = request.getScheme()+"://"+request.getServerName();
} 
	String localname = request.getScheme()+"://"+request.getLocalName()+":"+request.getLocalPort();
	String url = servername + request.getContextPath() + "/web/mail";

//網頁顯示主體內容
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<%if(lang.equals("tw")){ %>
        <title>加入會員通知信</title>
		<%} %>
		<%if(lang.equals("cn")){ %>
		<title>加入会员通知信</title>
		<%} %>
		<%if(lang.equals("en")){ %>
		<title>Register notification letter</title>
		<%} %>
		<%if(lang.equals("jp")){ %>
		<title>通知書を登録します</title>
		<%} %>
</head>

<body>
	<table width="730" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td>
        	<img src="<%=url %>/images/top.png" width="730" style="display:block; border:none;" />
        </td>
      </tr>
      <tr style="background:url(<%=url %>/images/main.png) top left repeat-y;">
        <td align="center">
        	<table width="571" border="0" cellpadding="0" cellspacing="0" style="font-size:12px;  line-height:20px; margin-top:10px; margin-bottom:10px;">
              <tr>
                <td colspan="2" align="center" style="padding-left:6px; padding-right:6px; padding-bottom:10px;">
                	<img src="<%=url %>/../images/logo.png" width="168" />
                </td>
              </tr>
              <tr>
                <td colspan="2" align="center" style="font-size:15px; color: #000; letter-spacing:1.3px; line-height:24px; padding-left:6px; padding-right:6px; padding-bottom:10px; padding-top:10px; border-bottom: solid 1px #ccc;">
                	<%if(lang.equals("tw")){ %>
			        <strong>- 訂單通知信 -</strong>
					<%} %>
					<%if(lang.equals("cn")){ %>
					<strong>- 订单通知信 -</strong>
					<%} %>
					<%if(lang.equals("en")){ %>
					<strong>- Order notification letter -</strong>
					<%} %>
					<%if(lang.equals("jp")){ %>
					<strong>- 注文通知書 -</strong>
					<%} %>
                </td>
              </tr>
              <tr>
                <td colspan="2" align="left" style="font-size:13px; letter-spacing:1.3px; line-height:24px; padding-left:6px; padding-right:6px; padding-bottom:20px; padding-top:20px;">
<%if(lang.equals("tw")){ %>
	感謝您的申請，已收到您的申請單<br/>
	請於兩天之內，前往任何自動提款機(ATM)將應付金額轉到指定帳戶。<br/>
           銀行名稱：XXXX銀行 <br/>
          分行名稱：XXXX分行 <br/>
          銀行代碼：XXX <br/>
           銀行帳號：XXXXXXXXXXXXXXX<br/>
   <br/>
                 <strong>注意事項：</strong><br/>
                  	<ul>
                    	<li>
                        	我們將於「確認您付款完成後」，儘快將您所訂購的商品送到您的手中。
                        </li>
                        <li>
                        	請於匯款完成後至「會員專區」-「 訂單查詢 」處填寫匯款資訊。 
                        </li>
                        <li>
                        	若兩天內尚未收到您轉帳付款，系統將取消您的訂單。
                        </li>
                    </ul>
                </td>
              </tr>
              <tr>
                <td colspan="2" align="left" style="font-size:13px; letter-spacing:1.3px; line-height:24px; padding-left:6px; padding-right:6px; padding-bottom:20px; padding-top:20px;">
                    
                    <table width="100%" border="0" cellspacing="1" cellpadding="3" style="background:#D8CBC2;">
                      <tr style="background:#fff;">
                        <td width="19%" align="right" valign="top" style="background:#F2EFE9;">訂購日期：</td>
                        <td width="27%" align="left" valign="top">2015/05/01</td>
                        <td width="18%" align="right" valign="top" style="background:#F2EFE9;">取貨日期：</td>
                        <td width="36%" align="left" valign="top">2015/05/01</td>
                      </tr>
                      <tr style="background:#fff;">
                        <td width="19%" align="right" valign="top" style="background:#F2EFE9;">訂單編號：</td>
                        <td width="27%" align="left" valign="top">20150604002</td>
                        <td width="18%" align="right" valign="top" style="background:#F2EFE9;">付款方式：</td>
                        <td width="36%" align="left" valign="top">ATM轉帳</td>
                      </tr>
                      <tr style="background:#fff;">
                        <td colspan="4" align="center" valign="top" style="background:#F2EFE9;">訂單明細</td>
                      </tr>
                      <tr style="background:#fff;">
                        <td colspan="4" align="left" valign="top">
                        
                       	  <table width="100%" border="0" cellspacing="1" cellpadding="3" style="background:#D8CBC2;">
                              <tr style="background:#fff;">
                                <td colspan="2" align="center">商品</td>
                                <td width="22%" align="center">單價</td>
                                <td width="13%" align="center">數量</td>
                                <td width="18%" align="center">小計</td>
                              </tr>
                              <tr style="background:#fff;">
                                <td width="16%">
                               	  <img src="../product/images/demo.jpg" width="100" />
                                </td>
                                <td width="31%">
                                	<strong>
                                    	艾爾德沒鬥塔
                                    </strong>
                                </td>
                                <td align="center">$ 100</td>
                                <td align="center">2</td>
                                <td align="center">$ 200</td>
                              </tr>
                              <tr style="background:#fff;">
                                <td><img src="../product/images/demo.jpg" width="100" /></td>
                                <td>
                                	<strong>
                                    	艾爾德沒鬥塔
                                    </strong>
                                </td>
                                <td align="center">$ 100</td>
                                <td align="center">2</td>
                                <td align="center">$ 200</td>
                              </tr>
                              <tr style="background:#fff;">
                                <td><img src="../product/images/demo.jpg" width="100" /></td>
                                <td>
                                	<strong>
                                    	艾爾德沒鬥塔
                                    </strong>
                                </td>
                                <td align="center">$ 100</td>
                                <td align="center">2</td>
                                <td align="center">$ 200</td>
                              </tr>
                            </table>
                            
                            <table width="100%" border="0" cellspacing="0" cellpadding="3" style="font-size:13px;">
                              <tr>
                                <td align="right">
                                	合計：
                                </td>
                                <td width="18%" align="center">$ 1,800元</td>
                              </tr>
                              <tr>
                                <td align="right">紅利抵扣：</td>
                                <td align="center">100 點(元)</td>
                              </tr>
                              <tr>
                                <td align="right">運費：</td>
                                <td align="center">0 元</td>
                              </tr>
                              <tr>
                                <td align="right">總計：</td>
                                <td align="center">
                                	<strong>
                                    	$ 1700
                                    </strong>
                                    元
                                </td>
                              </tr>
                              <tr>
                                <td align="right">紅利餘額：</td>
                                <td align="center">600 點</td>
                              </tr>
                              
                          </table>
                            
                        </td>
                      </tr>
                      
                      <tr style="background:#fff;">
                        <td colspan="4" align="center" valign="top" style="background:#F2EFE9;">訂購人資訊</td>
                      </tr>
                      
                      <tr style="background:#fff;">
                        <td align="right" valign="top" style="background:#F2EFE9;">姓名：</td>
                        <td align="left" valign="top">王大明</td>
                        <td align="right" valign="top" style="background:#F2EFE9;">電話：</td>
                        <td align="left" valign="top">22222222</td>
                      </tr>
                      
                      <tr style="background:#fff;">
                        <td align="right" valign="top" style="background:#F2EFE9;">手機：</td>
                        <td colspan="3" align="left" valign="top">0955555555</td>
                      </tr>
                      <tr style="background:#fff;">
                        <td align="right" valign="top" style="background:#F2EFE9;">地址：</td>
                        <td colspan="3" align="left" valign="top">台北市文山區羅斯福路五段125號</td>
                      </tr>
                      
                      <tr style="background:#fff;">
                        <td colspan="4" align="center" valign="top" style="background:#F2EFE9;">收貨人資訊</td>
                      </tr>
                      
                      <tr style="background:#fff;">
                        <td align="right" valign="top" style="background:#F2EFE9;">姓名：</td>
                        <td align="left" valign="top">王大明</td>
                        <td align="right" valign="top" style="background:#F2EFE9;">電話：</td>
                        <td align="left" valign="top">22222222</td>
                      </tr>
                      
                      <tr style="background:#fff;">
                        <td align="right" valign="top" style="background:#F2EFE9;">手機：</td>
                        <td colspan="3" align="left" valign="top">0955555555</td>
                      </tr>
                      <tr style="background:#fff;">
                        <td align="right" valign="top" style="background:#F2EFE9;">地址：</td>
                        <td colspan="3" align="left" valign="top">台北市文山區羅斯福路五段125號</td>
                      </tr>
                      <tr style="background:#fff;">
                        <td align="right" valign="top" style="background:#F2EFE9;">備註：</td>
                        <td colspan="3" align="left" valign="top">台北市文山區羅斯福路五段台北市文山區羅斯福路五段台北市文山區羅斯福路五段台北市文山區羅斯福路五段125號</td>
                      </tr>
                      
                      <tr style="background:#fff;">
                        <td colspan="4" align="center" valign="top" style="background:#F2EFE9;">物流方式</td>
                      </tr>
                      
                      <tr>
                        <td colspan="4" align="center" valign="top" style="background:#fff;">宅配</td>
                      </tr>
                      
                      <tr style="background:#fff;">
                        <td colspan="4" align="center" valign="top" style="background:#F2EFE9;">選擇發票資訊</td>
                      </tr>
                      
                      <tr>
                        <td colspan="4" align="center" valign="top" style="background:#fff;">二聯式</td>
                      </tr>
                      
                    </table>
                    
                </td>
              </tr>

          	</table>
<%} %>
<%if(lang.equals("cn")){ %>
感谢您的申请，已收到您的申请单<br/>
请于两天之内，前往任何自动提款机(ATM)将应付金额转到指定帐户。 <br/>
           银行名称：XXXX银行 <br/>
          分行名称：XXXX分行 <br/>
          银行代码：XXX <br/>
           银行帐号：XXXXXXXXXXXXXXX<br/>
   <br/>
                 <strong>注意事项：</strong><br/>
                  <ul>
                    <li>
                        我们将于「确认您付款完成后」，尽快将您所订购的商品送到您的手中。
                        </li>
                        <li>
                        请于汇款完成后至「会员专区」-「 订单查询 」处填写汇款资讯。
                        </li>
                        <li>
                        若两天内尚未收到您转帐付款，系统将取消您的订单。
                        </li>
                    </ul>
                </td>
              </tr>
              <tr>
                <td colspan="2" align="left" style="font-size:13px; letter-spacing:1.3px; line-height:24px; padding-left:6px; padding-right:6px; padding-bottom: 20px; padding-top:20px;">
                    
                    <table width="100%" border="0" cellspacing="1" cellpadding="3" style="background:#D8CBC2;">
                      <tr style="background:#fff;">
                        <td width="19%" align="right" valign="top" style="background:#F2EFE9;">订购日期：</td>
                        <td width="27%" align="left" valign="top">2015/05/01</td>
                        <td width="18%" align="right" valign="top" style="background:#F2EFE9;">取货日期：</td>
                        <td width="36%" align="left" valign="top">2015/05/01</td>
                      </tr>
                      <tr style="background:#fff;">
                        <td width="19%" align="right" valign="top" style="background:#F2EFE9;">订单编号：</td>
                        <td width="27%" align="left" valign="top">20150604002</td>
                        <td width="18%" align="right" valign="top" style="background:#F2EFE9;">付款方式：</td>
                        <td width="36%" align="left" valign="top">ATM转帐</td>
                      </tr>
                      <tr style="background:#fff;">
                        <td colspan="4" align="center" valign="top" style="background:#F2EFE9;">订单明细</td>
                      </tr>
                      <tr style="background:#fff;">
                        <td colspan="4" align="left" valign="top">
                        
                       <table width="100%" border="0" cellspacing="1" cellpadding="3" style="background:#D8CBC2;">
                              <tr style="background:#fff;">
                                <td colspan="2" align="center">商品</td>
                                <td width="22%" align="center">单价</td>
                                <td width="13%" align="center">数量</td>
                                <td width="18%" align="center">小计</td>
                              </tr>
                              <tr style="background:#fff;">
                                <td width="16%">
                               <img src="../product/images/demo.jpg" width="100" />
                                </td>
                                <td width="31%">
                                <strong>
                                    艾尔德没斗塔
                                    </strong>
                                </td>
                                <td align="center">$ 100</td>
                                <td align="center">2</td>
                                <td align="center">$ 200</td>
                              </tr>
                              <tr style="background:#fff;">
                                <td><img src="../product/images/demo.jpg" width="100" /></td>
                                <td>
                                <strong>
                                    艾尔德没斗塔
                                    </strong>
                                </td>
                                <td align="center">$ 100</td>
                                <td align="center">2</td>
                                <td align="center">$ 200</td>
                              </tr>
                              <tr style="background:#fff;">
                                <td><img src="../product/images/demo.jpg" width="100" /></td>
                                <td>
                                <strong>
                                    艾尔德没斗塔
                                    </strong>
                                </td>
                                <td align="center">$ 100</td>
                                <td align="center">2</td>
                                <td align="center">$ 200</td>
                              </tr>
                            </table>
                            
                            <table width="100%" border="0" cellspacing="0" cellpadding="3" style="font-size:13px;">
                              <tr>
                                <td align="right">
                                合计：
                                </td>
                                <td width="18%" align="center">$ 1,800元</td>
<%} %>
<%if(lang.equals("en")){ %>
Thank you for your application. Your application form has been received. <br/>
Please go to any ATM to transfer the payable amount to the designated account within two days. <br/>
           Bank name: XXXX Bank <br/>
          Branch Name: XXXX Branches <br/>
          Bank code: XXX <br/>
           Bank account number: XXXXXXXXXXXXXXX <br/>
   <br/>
                 <strong> Notes: </ strong> <br/>
                  <ul>
                    <li>
                        We will send your ordered goods to you as soon as possible after "confirming that your payment is complete".
                        </ li>
                        <li>
                        After completing the remittance, please fill in the remittance information at "Member Area"-"Order Inquiry".
                        </ li>
                        <li>
                        If you do not receive your transfer payment within two days, your order will be cancelled.
                        </ li>
                    </ ul>
                </ td>
              </ tr>
              <tr>
                <td colspan = "2" align = "left" style = "font-size: 13px; letter-spacing: 1.3px; line-height: 24px; padding-left: 6px; padding-right: 6px; padding-bottom: 20px; padding-top: 20px; ">
                    
                    <table width = "100%" border = "0" cellspacing = "1" cellpadding = "3" style = "background: # D8CBC2;">
                      <tr style = "background: #fff;">
                        <td width = "19%" align = "right" valign = "top" style = "background: # F2EFE9;"> Order date: </ td>
                        <td width = "27%" align = "left" valign = "top"> 2015/05/01 </ td>
                        <td width = "18%" align = "right" valign = "top" style = "background: # F2EFE9;"> Pickup date: </ td>
                        <td width = "36%" align = "left" valign = "top"> 2015/05/01 </ td>
                      </ tr>
                      <tr style = "background: #fff;">
                        <td width = "19%" align = "right" valign = "top" style = "background: # F2EFE9;"> Order number: </ td>
                        <td width = "27%" align = "left" valign = "top"> 20150604002 </ td>
                        <td width = "18%" align = "right" valign = "top" style = "background: # F2EFE9;"> Payment method: </ td>
                        <td width = "36%" align = "left" valign = "top"> ATM transfer </ td>
                      </ tr>
                      <tr style = "background: #fff;">
                        <td colspan = "4" align = "center" valign = "top" style = "background: # F2EFE9;"> Order details </ td>
                      </ tr>
                      <tr style = "background: #fff;">
                        <td colspan = "4" align = "left" valign = "top">
                        
                       <table width = "100%" border = "0" cellspacing = "1" cellpadding = "3" style = "background: # D8CBC2;">
                              <tr style = "background: #fff;">
                                <td colspan = "2" align = "center"> Products </ td>
                                <td width = "22%" align = "center"> Unit price </ td>
                                <td width = "13%" align = "center"> Quantity </ td>
                                <td width = "18%" align = "center"> Subtotal </ td>
                              </ tr>
                              <tr style = "background: #fff;">
                                <td width = "16%">
                               <img src = "../ product / images / demo.jpg" width = "100" />
                                </ td>
                                <td width = "31%">
                                <strong>
                                    Elder Tower
                                    </ strong>
                                </ td>
                                <td align = "center"> $ 100 </ td>
                                <td align = "center"> 2 </ td>
                                <td align = "center"> $ 200 </ td>
                              </ tr>
                              <tr style = "background: #fff;">
                                <td> <img src = "../ product / images / demo.jpg" width = "100" /> </ td>
                                <td>
                                <strong>
                                    Elder Tower
                                    </ strong>
                                </ td>
                                <td align = "center"> $ 100 </ td>
                                <td align = "center"> 2 </ td>
                                <td align = "center"> $ 200 </ td>
                              </ tr>
                              <tr style = "background: #fff;">
                                <td> <img src = "../ product / images / demo.jpg" width = "100" /> </ td>
                                <td>
                                <strong>
                                    Elder Tower
                                    </ strong>
                                </ td>
                                <td align = "center"> $ 100 </ td>
                                <td align = "center"> 2 </ td>
                                <td align = "center"> $ 200 </ td>
                              </ tr>
                            </ table>
                            
                            <table width = "100%" border = "0" cellspacing = "0" cellpadding = "3" style = "font-size: 13px;">
                              <tr>
                                <td align = "right">
                                Total:
                                </ td>
                                <td width = "18%" align = "center"> $ 1,800 yuan </ td>
<%} %>
<%if(lang.equals("jp")){ %>
お申し込みありがとうございます。お申し込みフォームを受け取りました。<br/>
任意のATMにアクセスして、2日以内に指定された口座に支払額を振り替えてください。 <br/>
           銀行名：XXXX Bank <br/>
          支店名：XXXX Branches <br/>
          銀行コード：XXX <br/>
           銀行口座番号：XXXXXXXXXXXXXXX <br/>
   <br/>
                 <strong>注：</ strong> <br/>
                  <ul>
                    <li>
                        「支払いが完了したことを確認」した後、できるだけ早く注文を送信します。
                        </ li>
                        <li>
                        送金完了後、「会員エリア」-「注文照会」で送金情報を入力してください。
                        </ li>
                        <li>
                        2日以内に振込の支払いが届かない場合、注文はキャンセルされます。
                        </ li>
                    </ ul>
                </ td>
              </ tr>
              <tr>
                <td colspan = "2" align = "left" style = "font-size：13px; letter-spacing：1.3px; line-height：24px; padding-left：6px; padding-right：6px; padding-bottom： 20px; padding-top：20px; ">
                    
                    <table width = "100％" border = "0" cellspacing = "1" cellpadding = "3" style = "background：＃D8CBC2;">
                      <tr style = "background：#fff;">
                        <td width = "19％" align = "right" valign = "top" style = "background：＃F2EFE9;">注文日：</ td>
                        <td width = "27％" align = "left" valign = "top"> 2015/05/01 </ td>
                        <td width = "18％" align = "right" valign = "top" style = "background：＃F2EFE9;">ピックアップ日：</ td>
                        <td width = "36％" align = "left" valign = "top"> 2015/05/01 </ td>
                      </ tr>
                      <tr style = "background：#fff;">
                        <td width = "19％" align = "right" valign = "top" style = "background：＃F2EFE9;">注文番号：</ td>
                        <td width = "27％" align = "left" valign = "top"> 20150604002 </ td>
                        <td width = "18％" align = "right" valign = "top" style = "background：＃F2EFE9;">支払い方法：</ td>
                        <td width = "36％" align = "left" valign = "top"> ATM転送</ td>
                      </ tr>
                      <tr style = "background：#fff;">
                        <td colspan = "4" align = "center" valign = "top" style = "background：＃F2EFE9;">注文の詳細</ td>
                      </ tr>
                      <tr style = "background：#fff;">
                        <td colspan = "4" align = "left" valign = "top">
                        
                       <table width = "100％" border = "0" cellspacing = "1" cellpadding = "3" style = "background：＃D8CBC2;">
                              <tr style = "background：#fff;">
                                <td colspan = "2" align = "center">製品</ td>
                                <td width = "22％" align = "center">単価</ td>
                                <td width = "13％" align = "center">数量</ td>
                                <td width = "18％" align = "center">小計</ td>
                              </ tr>
                              <tr style = "background：#fff;">
                                <td width = "16％">
                               <img src = "../ product / images / demo.jpg" width = "100" />
                                </ td>
                                <td width = "31％">
                                <strong>
                                    エルダータワー
                                    </ strong>
                                </ td>
                                <td align = "center"> $ 100 </ td>
                                <td align = "center"> 2 </ td>
                                <td align = "center"> 200ドル</ td>
                              </ tr>
                              <tr style = "background：#fff;">
                                <td> <img src = "../ product / images / demo.jpg" width = "100" /> </ td>
                                <td>
                                <strong>
                                    エルダータワー
                                    </ strong>
                                </ td>
                                <td align = "center"> $ 100 </ td>
                                <td align = "center"> 2 </ td>
                                <td align = "center"> 200ドル</ td>
                              </ tr>
                              <tr style = "background：#fff;">
                                <td> <img src = "../ product / images / demo.jpg" width = "100" /> </ td>
                                <td>
                                <strong>
                                    エルダータワー
                                    </ strong>
                                </ td>
                                <td align = "center"> $ 100 </ td>
                                <td align = "center"> 2 </ td>
                                <td align = "center"> 200ドル</ td>
                              </ tr>
                            </表>
                            
                            <table width = "100％" border = "0" cellspacing = "0" cellpadding = "3" style = "font-size：13px;">
                              <tr>
                                <td align = "right">
                                合計：
                                </ td>
                                <td width = "18％" align = "center"> $ 1,800元</ td>
<%} %>
                </td>
              </tr>              
            </table>
            
            <br/>
            <table width="571" border="0" cellspacing="0" cellpadding="0" style="font-size:13px; color:#666;">
              <tr >
                <td align="center" style="border-top: dashed 1px #999; line-height:30px;">- 
                			<%if(lang.equals("tw")){ %>
							此封信為系統自動寄發，請勿直接回信
							<%} %>
							<%if(lang.equals("cn")){ %>
							此封信为系统自动寄发，请勿直接回信
							<%} %>
							<%if(lang.equals("en")){ %>
							This letter is sent automatically, do not directly reply
							<%} %>
							<%if(lang.equals("jp")){ %>
							この文字が自動的に送信され、直接返信しません
							<%} %> -</td>
              </tr>
            </table>
            
        </td>
      </tr>
      <tr>
        <td>
        	<img src="<%=url %>/images/footer.png" width="730" style="display:block; border:none;" />
        </td>
      </tr>
    </table>

</body>
</html>
<%
//關閉連線池
app_sm.close();
%>