<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%@ page language="java" import="java.sql.*" errorPage=""%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date"%>
<%@ page import="java.security.*" %>
<%

	// 網際威信信用卡-送出處理程式
	String 	page_code 		= "hitrust_creditPost";			// 功能識別碼 , 於資料庫做資料識別及模組程式檔名用
	
	// 捐款單資料	
	String 	os_id 			= StringTool.validString(request.getParameter("os_id"));
	TableRecord os			= app_sm.select(tblos,os_id);
	
	// Server name
	String servername = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
	if( request.getServerPort()== 80){
		servername = request.getScheme()+"://"+request.getServerName();
	} 
	String localname = request.getScheme()+"://"+request.getLocalName()+":"+request.getLocalPort();
	String url = servername + request.getContextPath();
	
	
	/*------------------------------------傳送必要參數 ----------------------------------------------------*/
	
	// 網際威信信用卡API位址           測試:https://testtrustlink.hitrust.com.tw/TrustLink/TrxReqForJava
	String api_url			= "https://trustlink.hitrust.com.tw/TrustLink/TrxReqForJava"; // 主機位址
	 
	// 基本參數
	String Type 			= "Auth";												// 交易類別(授權)
	String storeid 			= "50977";  /* 測試:61094 */								// 商家代碼
	
	// 交易參數
	String ordernumber		= os.getString("os_no"); 								// 訂單號碼 (長度限制 19 碼)
	String amount			= String.valueOf(os.getInt("os_total")*100); 			// 交易金額  例如： 1元，需帶參數值為 100元
	String orderdesc		= DateTimeTool.dateTimeString();                        // 訂單說明       
	String depositflag		= "0";													// 請款   0:一般交易-手動請款 ； 1:Sale交易-自動請款
	String queryflag		= "1";												    // 查詢   1:詳細資料 (將本筆交易的詳細資料以POST的方式送至 merupdateURL)； 0:一般資料
	String returnURL		= url+"/mobile/support/payment/hitrust_creditReturn.jsp"; 	// 指定接續網址(交易結束後 讓使用者重新導向到的網址)
	String merUpdateURL		= url+"/mobile/support/payment/hitrust_creditUpdate.jsp";  // 交易結果網址(銀行回傳的交易結果處理)
	
	
	// 建立並傳送post表單
	String[] names 	= {"Type","storeid","ordernumber","amount","orderdesc","depositflag","queryflag","returnURL","merUpdateURL"};
	String[] values = {Type,storeid,ordernumber,amount,orderdesc,depositflag,queryflag,returnURL,merUpdateURL};
	
	out.println(HtmlCoder.form("hitrust_credit", api_url, names,values ));
	out.println("<script> hitrust_credit.submit(); </script>");

%>

