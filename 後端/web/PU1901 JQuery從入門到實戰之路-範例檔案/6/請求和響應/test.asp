<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<%
var name = Request.QueryString("name");
if(name && name == "zhangsan"){	
    Response.Write(name + "是合法的使用者名稱。");
}
else{
    Response.Write(name + "非法的使用者名稱");	
}
%>
