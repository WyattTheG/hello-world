<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "bean.RentBikeDao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Rent Bike</title>
</head>
<body>

<%@ include file="index.jsp" %>
<%@ include file="ListRentedBikes.jsp" %>

<jsp:useBean id="obj" class="bean.Bike"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int status = RentBikeDao.rent(obj);  
if(status>0)  
out.print("you have successfully rented out" + obj.getOwnerName() + "'s bike");  
else{
	out.print("you suck, try again");
}
%>  

</body>
</html>