<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/config.jspf"%>
<%@ page import="org.json.*"%>
<%@ page import="java.net.*" %>
<%@ page import="javax.net.ssl.*" %>
<%@ page import="java.util.List"%>
<%@ page import="java.security.*" %>
<%-- Line Pay基本設定 --%> 
<%@include file="linepay_config.jsp"%>         
<% 

	// LinePay-回傳處理程式
	page_code 				= "linepay_receive";			// 功能識別碼 , 於資料庫做資料識別及模組程式檔名用
	
	/*--------------------------------------------接收LinePay回傳的交易編號+定義要取得付款結果時需要傳送的查詢參數+要接收的付款結果回傳參數-------------------------------------------------------*/
	// 交易編號
	String transactionid 	= StringTool.validString(request.getParameter("transactionId"));
	// 訂單相關資料	
	TableRecord reserve_ph 	= app_sm.select(tblph,"ph_bank_no=?",new Object[]{transactionid});
	String os_id			= reserve_ph.getString("os_id");
	TableRecord reserve_os 	= app_sm.select(tblos,"os_id=?",new Object[]{os_id});
	int  os_total			= reserve_os.getInt("os_total");
	
	// 查詢參數
	int amount_query				= os_total; 								// 付款金額
	String currency_query			= "TWD";									// 付款貨幣 (ISO 4217) 支援的貨幣如下：USD JPY TWD THB
	// 將查詢參數數處理為Json
	JSONObject json_parameter = new JSONObject();
	json_parameter.put("amount", amount_query);
	json_parameter.put("currency", currency_query);

	
    /*-----------------------------------------傳送查詢參數並獲取交易結果等資料(json)------------------------------------------------------------*/
	HttpsURLConnection connection = null;	
	JSONObject response_json;
	
  	try{
		URL apiurl = new URL(api_confirmurl+transactionid+"/confirm");
		connection = (HttpsURLConnection)apiurl.openConnection();
		
		// 建立設定TLSv1.2 (Java 7)
		SSLContext sc = SSLContext.getInstance("TLSv1.2"); 
  		sc.init(null, null, new java.security.SecureRandom());
		connection.setSSLSocketFactory(sc.getSocketFactory());
		//System.setProperty("https.protocols", "TLSv1.2");
		
		// 設定請求方法與傳送內容類型與指定的Request Header
		connection.setRequestMethod("POST");
		connection.setRequestProperty("Content-Type","application/json;charset=UTF-8");
		connection.setRequestProperty("X-LINE-ChannelId",ChannelId);
		connection.setRequestProperty("X-LINE-ChannelSecret",ChannelSecret);
		//connection.setRequestProperty("Content-Length", String.valueOf(data.getBytes().length));
	    connection.setUseCaches(false);  	// post禁用緩存
	    connection.setDoInput(true); 		// 允許讀取結果
	    connection.setDoOutput(true); 		// 允許輸出 才可在寫入參數
	    connection.setConnectTimeout(5000); // 連接超時（毫秒）
	    connection.setReadTimeout(20000);  	// 讀取資料超時(毫秒）
	    		
	    connection.connect();
 		/*
 		DataOutputStream output = new DataOutputStream (connection.getOutputStream());
 		//output.writeBytes(json_parameter.toString());
 		output.write(json_parameter.toString().getBytes("utf-8")); // 寫入參數
 		output.flush ();
 		output.close();
 		*/
 		
 		// 傳送參數請求
 		OutputStreamWriter writer  = new OutputStreamWriter(connection.getOutputStream(),"UTF-8"); // 指定編碼 new OutputStreamWriter(connection.getOutputStream());
	 	writer.write(json_parameter.toString());   
	 	writer.flush();
	 	writer.close();

  		// 讀取回應資料
	  	int responseCode = connection.getResponseCode();
	  	StringBuffer reserveResponse = new StringBuffer();
	  	if(responseCode == 200/* HttpURLConnection.HTTP_OK */){
	  	  	BufferedReader bufferedReader = new BufferedReader( new InputStreamReader(connection.getInputStream(),"UTF-8"));
	  		String inputLine;
	  		while ((inputLine = bufferedReader.readLine()) != null) {
	  			reserveResponse.append(inputLine);
	  		}
	  		bufferedReader.close();
	  	}
  		
	  	// 將回傳的json格式資料轉為json物件 
  		response_json= new JSONObject(reserveResponse.toString());
  		//System.out.println("reserveResponse="+reserveResponse.toString());

	} catch (Exception ex) {
		System.out.println(web_code+"[" + page_code + "]-Line Pay api執行錯誤(Post)；例外原因:"+ex+"；處理時間:"+DateTimeTool.dateTimeString());//System.out.println("Error info:[" + ex + "]File name edit.jsp for [" + page_code + "]Time:[" + DateTimeTool.dateTimeString() + "]");
		out.println("<script> alert('很抱歉，您的Line Pay交易結果接收失敗'); location='../index.jsp'; </script>");
		return;
	}finally {
	    // 中斷連線
	    if(connection != null ) {
	    	connection.disconnect();
	    }
	    app_sm.close();
	}
  	
  	/*------------------------------------------定義要解析的付款json資料參數(授權結果與交易編號及 paymentUrl等)---------------------------------------------------------------------------------------------------*/ 
	
  	// 交易參數
  	String returnCode   		= ""; 	// 結果代碼 0000成功 其餘錯誤
	String returnMessage 		= "";	// 結果訊息或失敗理由
	String orderId				= ""; 	// 訂單編號 商家在付款 reserve 時傳送的訂單編號
	String transactionId 		= "";  	// 付款 reserve 後，做為結果所收到的交易編號
	String method 				= ""; 	// 使用的付款方式 (信用卡：CREDIT_CARD，餘額：BALANCE，折扣:DISCOUNT)
	int    amount				= 0; 	// 付款金額

  	/*------------------------------------------解析Line Pay回傳的json格式資料---------------------------------------------------------------------------------------------------*/ 
	try {
		/*  解析json物件內以下付款  confirm API  回應的json格式資料  
	  	{
			"returnCode": "0000",
			"returnMessage": "OK",
			"info": {
				"orderId": "order_210124213",
				"transactionId": 20140101123123123,
				"payInfo": [{
					"method": "BALANCE",
					"amount": 10
				}, {
					"method": "POINT",
					"amount": 5
				}]
			}
		}

		*/
	  	// info_json.isNull("key")  info_json.has("key")
	  	
		returnCode	  = response_json.optString("returnCode").trim();   	// 結果代碼 0000成功 其餘錯誤
		returnMessage = response_json.optString("returnMessage").trim();  	// 結果訊息或失敗理由
	  	if ("0000".equals(returnCode)){ // 回應授權成功 
	  		JSONObject info 	  = response_json.optJSONObject("info");
	  		transactionId 		  = info.optString("transactionId").trim();  				// 付款 reserve 後，做為結果所收到的交易編號
	  		orderId 			  = info.optString("orderId").trim();  						// 訂單編號 商家在付款 reserve 時傳送的訂單編號
	  		JSONArray payInfos 	  = info.optJSONArray("payInfo");
	  		if(payInfos!=null){
	  			for(int i=0;i<payInfos.length();i++){
	  				JSONObject payInfo = payInfos.optJSONObject(i);
	  				if(payInfo!=null){
	  					method = payInfo.optString("method")+";"+method; 					// 使用的付款方式 (信用卡：CREDIT_CARD，餘額：BALANCE，折扣:DISCOUNT)
	  					amount = amount + payInfo.optInt("amount");							// 付款金額
	  				}
	  			}
	  		}
		}else{
			System.out.println(web_code+"[" + page_code + "]-Line Pay解析結果錯誤(json)；回應碼:"+returnCode+"；回應訊息:"+returnMessage+"；處理時間:"+DateTimeTool.dateTimeString());
			out.println("<script> alert('很抱歉，您的Line Pay交易接收失敗'); location='../project.jsp';</script>");
			return;
		}
		
	}catch (Exception ex){
		System.out.println(web_code+"[" + page_code + "]-Line Pay解析錯誤(json)；回應碼:"+returnCode+"；回應訊息:"+returnMessage+"；例外原因:"+ex+"；處理時間:"+DateTimeTool.dateTimeString());
		out.println("<script> alert('很抱歉，您的Line Pay交易接收失敗'); location='../project.jsp';</script>");
		return;
	}finally {
		app_sm.close();
	}
	
	
/*-------------------------------------------交易結果處理-----------------------------------------------------------*/
	
	// 回應碼確認 確保刷卡成功
	boolean check_response	= false;
	if("0000".equals(returnCode)){
		check_response	= true ; // 交易成功
	}
	
	// 訂單資料確認 確保訂單未遭竄改
	boolean check_order		= false;
	TableRecord os = app_sm.select(tblos,"os_no=?",new Object[]{orderId}); 	// 取出訂單資料
	if(os.getInt("os_total")==amount){ // 交易金額正確
		check_order	 = true; // 訂單正確
	}
	

	// 交易結果處理
	if(check_order){ // 訂單未遭竄改
		if(check_response){ // 交易成功
			os.setValue("os_status","Y"); 
			//os.setValue("os_collect","Y"); // 已收款
			os.setUpdate("linepay_return");
			app_sm.update(os);
			// 新增付款記錄
			TableRecord ph = new TableRecord (tblph);
			ph.setValue("os_id",os.getString("os_id"));
			ph.setValue("ph_payment","linepay_confirm");
			ph.setValue("ph_status","Y"); // 已付款;
			ph.setValue("ph_amount",amount);
			ph.setValue("ph_bank_no",transactionId);// 交易編號
			ph.setValue("ph_paydate",DateTimeTool.dateTimeString());
			ph.setValue("ph_memo","回應碼:"+returnCode +"； 回應訊息:"+returnMessage);
			ph.setInsert("linepay_return");
			app_sm.insert(ph);
			// 寄送通知信
			out.println("<script> alert('付款成功'); </script>");
			out.println("<script> location='../project.jsp'; </script>");
		}else{ 
			os.setValue("os_status","N"); 
			//os.setValue("os_collect","N"); // 未收款
			os.setUpdate("linepay_return");
			app_sm.update(os);
			// 新增付款記錄
			TableRecord ph = new TableRecord (tblph);
			ph.setValue("os_id",os.getString("os_id"));
			ph.setValue("ph_payment","linepay_confirm");
			ph.setValue("ph_status","N"); // 未付款
			ph.setValue("ph_amount",amount);
			ph.setValue("ph_bank_no",transactionId);//交易卡號
			ph.setValue("ph_paydate",DateTimeTool.dateTimeString());
			ph.setValue("ph_memo","回應碼:"+returnCode +"； 回應訊息:"+returnMessage);
			ph.setInsert("linepay_return");
			app_sm.insert(ph);
			out.println("<script> alert('付款失敗'); location='../project.jsp';</script>"); 
			return;
		}
	}else{
		out.println("<script> alert('驗證錯誤，訂單可能遭到竄改，請與客服連絡');location='../project.jsp';</script>"); 
		return;
	}
	

 	
%>
