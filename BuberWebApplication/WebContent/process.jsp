<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="bean.RegisterDao" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="index.jsp" %>

  
<jsp:useBean id="obj" class="bean.User"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int status = RegisterDao.register(obj);  
if(status>0)  
out.print("You are successfully registered");  
else{
	out.print("you suck, try again");
}
%>  

</body>
</html>