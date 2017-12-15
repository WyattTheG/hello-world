<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bean.UpdateRatingDao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="index.jsp" %>
<%@ include file="ListRentedBikes.jsp" %>

<jsp:useBean id="obj" class="bean.Rating"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int status = UpdateRatingDao.update(obj);  
if(status>0)  
out.print("you rated the bike!");  
else{
	out.print("you suck, try again");
}
%>  


</body>
</html>