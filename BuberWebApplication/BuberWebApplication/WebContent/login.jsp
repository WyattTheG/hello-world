<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<%@ include file="index.jsp" %>  


  
<h3>Login Form</h3> 
 
<%  
String profile_msg=(String)request.getAttribute("profile_msg");  
if(profile_msg!=null){  
	out.print(profile_msg);  
}  
String login_msg=(String)request.getAttribute("login_msg");  
if(login_msg!=null){  
	out.print(login_msg);  
}  
 %>  
 <br/>  
<form action="loginprocess.jsp" method="post">  
username:<input type="text" name="Uname"/><br/><br/>  
Password:<input type="password" name="pass"/><br/><br/>  
<input type="submit" value="login"/>"  
</form> 

</body>
</html>