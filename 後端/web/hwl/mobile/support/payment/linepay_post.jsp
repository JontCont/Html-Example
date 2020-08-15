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

	// LinePay-送出處理程式
	page_code 				= "linepay_post";			// 功能識別碼 , 於資料庫做資料識別及模組程式檔名用
	
	// 訂單相關資料	
	String 	os_id 			= StringTool.validString(request.getParameter("os_id"));
	TableRecord os			= app_sm.select(tblos,os_id);
	int  os_total			= os.getInt("os_total");
	
	// Server name.	
	String servername = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
	if( request.getServerPort()== 80){
		servername = request.getScheme()+"://"+request.getServerName();
	} 
	String localname = request.getScheme()+"://"+request.getLocalName()+":"+request.getLocalPort();
	String url = servername + request.getContextPath();
	
	
	/*-------------------------------------------定義準備傳送的必要交易參數-------------------------------------------------------*/
	
	// 交易參數
	String orderId			= os.getString("os_no"); 						// 訂單編號 商家與該筆付款請求對應的訂單編號 這是商家自行管理的唯一編號。
	String productName      = "愛盲基金會-愛心捐款";								// 產品名稱 (charset:"UTF-8")
	String productImageUrl	= url+ "/mobile/images/logo.png";					// 產品影像 URL （或使用品牌 logo URL）顯示於付款畫面上的影像 URL，大小：84 x 84 
	int amount				= os_total; 									// 付款金額
	String currency			= "TWD";										// 付款貨幣 (ISO 4217) 支援的貨幣如下：USD JPY TWD THB
	String confirmUrl 		= url+"/mobile/support/payment/linepay_receive.jsp"; // 買家在 LINE Pay畫面付款完成後，被重新導向到商家的 URL。LINE Pay 會傳遞額外的 "transactionId" 參數到此url，商家在此URL可以呼叫付款confirm API 確認結果並完成付款。	

	// 將交易參數處理為Json
	JSONObject json_parameter = new JSONObject();
	json_parameter.put("productName", productName);
	json_parameter.put("productImageUrl", productImageUrl);
	json_parameter.put("amount", amount);
	json_parameter.put("currency", currency);
	json_parameter.put("confirmUrl", confirmUrl);
	json_parameter.put("orderId", orderId);
	
	// 新增付款回應紀錄
	TableRecord ph = new TableRecord(tblph);
	ph.setValue("os_id",os.getString("os_id"));
	ph.setValue("ph_payment","linepay_reserve");
	ph.setValue("ph_amount",amount);
	ph.setValue("ph_status","Y"); // 已啟動
	//ph.setValue("ph_bank_no",""); // 交易卡號
	//ph.setValue("ph_paydate","交易時間");
	//ph.setValue("ph_memo","回應碼:"+returnCode +"； 回應訊息:"+returnMessage);
	ph.setInsert("linepay_post");
	
	
    /*-----------------------------------------傳送交易參數並獲取交易結果與交易編號及 paymentUrl等付款資料(json)------------------------------------------------------------*/
	HttpsURLConnection connection = null;	
	JSONObject response_json;
	
  	try{
		URL apiurl = new URL(api_reserveurl);
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
	    connection.setReadTimeout(20000);  	// 讀取資料超時(毫秒）\
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
		out.println("<script> alert('很抱歉，您的Line Pay交易送出失敗'); location='../project.jsp'; </script>");
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
	String transactionId 		= "";  	// 交易編號 (19 位數
	String paymentUrl_app 		= ""; 	// 前往付款畫面的應用程式 URL 在機交易請求付款時使用  將URL從商家手機交易重新導向到 LINE 應用程式
	String paymentUrl_web 		= ""; 	// 付款請求後所前往的網頁 URL 網頁交易環境用
  	String paymentAccessToken 	= ""; 	// 在 LINE Pay app 輸入代碼來代替適用掃描器(Scanner)之時候所適用的代碼值(共 12 位數)。

  	/*------------------------------------------解析Line Pay回傳的json格式資料---------------------------------------------------------------------------------------------------*/ 
	try {
		/*  解析json物件內以下付款 reserve API 回應的json格式資料  
	  	{
			"returnCode": "0000",
			"returnMessage": "OK",
			"info": {
				"transactionId": 123123123123,
				"paymentUrl": {
					"web": "http://web-pay.line.me/web/wait?transactionReserveId=blahblah",
					"app": "line://pay/payment/blahblah"
					},
				"paymentAccessToken": "187568751124"
			}
		}
		*/
	  	// info_json.isNull("key")  info_json.has("key")
	  	
		returnCode	  = response_json.optString("returnCode").trim();   	// 結果代碼 0000成功 其餘錯誤
		returnMessage = response_json.optString("returnMessage").trim();  	// 結果訊息或失敗理由
	  	if ("0000".equals(returnCode)){ // 回應授權成功 
	  		JSONObject info		 	= response_json.optJSONObject("info");
	  		transactionId		 	= info.optString("transactionId").trim();  				// 交易編號 (19 位數)
	  		paymentAccessToken 	 	= info.optString("paymentAccessToken").trim();  		// 在 LINE Pay app 輸入代碼來代替適用掃描器(Scanner)之時候所適用的代碼值(共 12 位數)。
	  		JSONObject paymentUrl 	= info.optJSONObject("paymentUrl");
	  		if(paymentUrl!=null){
	  			paymentUrl_web 		= paymentUrl.optString("web").trim(); 					// 付款請求後所前往的網頁 URL 網頁交易環境用
	  			paymentUrl_app 		= paymentUrl.optString("app").trim(); 					// 前往付款畫面的應用程式 URL 在機交易請求付款時使用  將URL從商家手機交易重新導向到 LINE 應用程式
	  		}
	  		ph.setValue("ph_memo","回應碼:"+returnCode +"； 回應訊息:"+returnMessage+"; paymentAccessToken:"+paymentAccessToken);
	        ph.setValue("ph_bank_no",transactionId);
	        ph.setValue("ph_paydate",DateTimeTool.dateTimeString());
		}else{
			System.out.println(web_code+"[" + page_code + "]-Line Pay解析結果錯誤(json)；回應碼:"+returnCode+"；回應訊息:"+returnMessage+"；處理時間:"+DateTimeTool.dateTimeString());
			out.println("<script> alert('很抱歉，您的Line Pay交易送出失敗'); location='../project.jsp';</script>");
			return;
		}
		
	}catch (Exception ex){
		System.out.println(web_code+"[" + page_code + "]-Line Pay解析錯誤(json)；回應碼:"+returnCode+"；回應訊息:"+returnMessage+"；例外原因:"+ex+"；處理時間:"+DateTimeTool.dateTimeString());
		out.println("<script> alert('很抱歉，您的Line Pay交易送出失敗'); location='../project.jsp';</script>");
		return;
	}finally {
		app_sm.insert(ph);
		app_sm.close();
	}
	
	
	/*-------------------------------------------使用paymentUrl啟動對應的Line Pay交易頁面-----------------------------------------------*/
	
	/*
	// 建立並傳送post表單
	String[] names 	= {};
	String[] values = {};
	out.println(HtmlCoder.form("line_pay", paymentUrl_web, names,values ));
	out.println("<script> line_pay.submit(); </script>");
	*/
	

	// 確認 使用者是使用pc網頁交易環境還是手機交易環境
	boolean mobile = false;
	String ua=request.getHeader("User-Agent").toLowerCase();
	if(ua.matches("(?i).*((android|bb\\d+|meego).+mobile|avantgo|bada\\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino).*")||ua.substring(0,4).matches("(?i)1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\\-(n|u)|c55\\/|capi|ccwa|cdm\\-|cell|chtm|cldc|cmd\\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\\-s|devi|dica|dmob|do(c|p)o|ds(12|\\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\\-|_)|g1 u|g560|gene|gf\\-5|g\\-mo|go(\\.w|od)|gr(ad|un)|haie|hcit|hd\\-(m|p|t)|hei\\-|hi(pt|ta)|hp( i|ip)|hs\\-c|ht(c(\\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\\-(20|go|ma)|i230|iac( |\\-|\\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\\/)|klon|kpt |kwc\\-|kyo(c|k)|le(no|xi)|lg( g|\\/(k|l|u)|50|54|\\-[a-w])|libw|lynx|m1\\-w|m3ga|m50\\/|ma(te|ui|xo)|mc(01|21|ca)|m\\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\\-2|po(ck|rt|se)|prox|psio|pt\\-g|qa\\-a|qc(07|12|21|32|60|\\-[2-7]|i\\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\\-|oo|p\\-)|sdk\\/|se(c(\\-|0|1)|47|mc|nd|ri)|sgh\\-|shar|sie(\\-|m)|sk\\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\\-|v\\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\\-|tdg\\-|tel(i|m)|tim\\-|t\\-mo|to(pl|sh)|ts(70|m\\-|m3|m5)|tx\\-9|up(\\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\\-|your|zeto|zte\\-")) {
		mobile = true;
	}
	// 啟動頁面只允許用GET
	if(!mobile){
		out.write("<script> location.href='"+paymentUrl_web+"';</script>");
    }else{
		out.write("<script> location.href='"+paymentUrl_web+"';</script>"); // 先用web版開啟 較穩定
    	//out.write("<script>location.href='"+paymentUrl_app+"';</script>");
    }
 	
%>
