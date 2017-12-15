<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Add Bike Page</title>
<link rel="stylesheet" href="style.css">
</head>
</head>
<body>

<%@ include file="index.jsp" %>

<form action="processAddBike.jsp">
OwnerName:<input type="text" name="ownerName"/><br/><br/>
OwnerID:<input type="text" name="ownerID"/><br/><br/>
BikeID:<input type="text" name="bikeId"/><br/><br/>
Price:<input type="text" name="price"/><br><br/>
Rating:<input type="text" name="rating"/><br/><br/>
Location:<input type="text" name="location"/><br/><br/>
<input type="submit" value="addBike"/>

</form>

<body>
	<TABLE style="background-color: #ffffcc;">
		<TR>
			<TD align="center"><h2>View Bikes Available</h2></TD>
		</TR>
		<TR>
			<TD align="center">
				<A HREF="listBikes.jsp">
					<font size="4" color="blue">show data from table</font>
				</A>
			</TD>
		</TR>
	</TABLE>

</body> 
</html>
