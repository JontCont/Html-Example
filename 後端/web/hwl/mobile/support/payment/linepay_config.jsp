<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>    
<% 

	// LinePay-連線設定 
	String 	page_code 		= "linepay_config";			// 功能識別碼 , 於資料庫做資料識別及模組程式檔名用
	web_code				= "愛盲基金會官網-tfb";			// 使用專案識別碼
	//String web_code		= "愛盲基金會官網-tfb";			// 使用專案識別碼
	
	/*-------------------------------定義基本參數-------------------------------------------------------*/
	// 正式:
	// Line pay 付款 reserve API位址  (呼叫此位址來傳送交易資料) 	  						   		    
	String api_reserveurl	= "https://api-pay.line.me/v2/payments/request"; // 主機位址
	 
	// Line pay 付款 confirm API位址  (呼叫此位址來確認交易結果) P.S. 程式實際請求完整位址 : api_confirmurl+transactionId+"/confirm"
	String api_confirmurl	= "https://api-pay.line.me/v2/payments/"; // 主機位址		 
	
	// 商店參數
	String ChannelId 		= "1465497923";                         		
	String ChannelSecret 	= "8e6f3a671f42c0d604173cd0410bd894";			
	
	/*
	// 測試: Eric申請測試用串接資料
	// Line pay 付款 reserve API位址  (呼叫此位址來傳送交易資料) 	  						   		    
	String api_reserveurl	= "https://sandbox-api-pay.line.me/v2/payments/request";  // 主機位址
	 
	// Line pay 付款 confirm API位址  (呼叫此位址來確認交易結果)  P.S. 程式實際請求完整位址 : api_confirmurl+transactionId+"/confirm"
	String api_confirmurl	= "https://sandbox-api-pay.line.me/v2/payments/";  // 主機位址

	// 商店參數
	String ChannelId 		= "1613686979";                       	
	String ChannelSecret 	= "083a3767ef63ed9d4617325ce46a5e1a";  	      
	*/

%>
