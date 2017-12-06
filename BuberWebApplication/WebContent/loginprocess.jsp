<%-- Comment --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bean.LoginDao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Process</title>
</head>
<body>

<%@ include file="index.jsp" %>  

<%@page import="bean.LoginDao"%>  

<jsp:useBean id="obj" class="bean.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=LoginDao.validate(obj);  
if(status){  
	out.println("You r successfully logged in");  
	session.setAttribute("session","TRUE");  
    request.getRequestDispatcher("addBike.jsp").include(request, response);

	
}  
else  
{  
	out.print("Sorry, email or password error");  
}  
%>  

</body>
</html>