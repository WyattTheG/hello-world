<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" import="java.io.*"
    import="bean.Provider" import="bean.ConnectionProvider"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Rented Out Bikes</title>
<link rel="stylesheet" href="style.css">
</head>
</head>


<body>

<%@ include file="index.jsp" %>

<body>
	<h2>Data from the table 'RentedBikes' of database 'buber'</h2>
<%
	try {
		/* Create string of connection url within specified format with machine
		name, port number and database name. Here machine name id localhost and 
		database name is student. */
		//String connectionURL = "jdbc:mysql:buberdb.celqvszfgzdv.us-west-1.rds.amazonaws.com/3306/buberDB";
		// declare a connection by using Connection interface
		//Connection connection = null;
		/* declare object of Statement interface that is used for executing sql 
		statements. */
		Statement statement = null;
		// declare a resultset that uses as a table for output data from tha table.
		ResultSet rs = null;
		
		// Load JBBC driver "com.mysql.jdbc.Driver"
		//Class.forName("com.mysql.jdbc.Driver").newInstance();
		/* Create a connection by using getConnection() method that takes parameters 
		of string type connection url, user name and password to connect to database.*/
		//connection = DriverManager.getConnection(connectionURL, "BuberAdmin", "%#BuberOverUber#1");
		/* createStatement() is used for create statement object that is used for 
		sending sql statements to the specified database. */
		Connection con = ConnectionProvider.getCon();  
		statement = con.createStatement();
		// sql query to retrieve values from the secified table.
		String QueryString = "SELECT * from rentedBikes";
		rs = statement.executeQuery(QueryString);
%>


<TABLE cellpadding="15" border="1" style="background-color: #FF4500;">
	<%
		while (rs.next()) {
	%>
	<TR>
		<TD><%=rs.getString(1)%></TD>
		<TD><%=rs.getInt(2)%></TD>
		<TD><%=rs.getInt(3)%></TD>
		<TD><%=rs.getDouble(4)%></TD>
		<TD><%=rs.getInt(5)%></TD>
		<TD><%=rs.getString(6)%></TD>
		<TD><%=rs.getDouble(7)%></TD>
		<TD><%=rs.getDouble(8)%></TD>
		
	</TR>
	<% } %>
<%
	// close all the connections.
	//rs.close();
	//statement.close();
	//con.close();
	} catch (Exception ex) {
	out.println("Unable to connect to database.");
	}
%>
</TABLE>

<TABLE>
	<Tr>
		<TD>
			<form action="updateRating.jsp">
			BikeId:<input type="text" name="ratingId"/><br/><br/>
			Rating(1-5):<input type="text" name="ratingInt"/><br/><br/>
			<input type="submit" value="addBike"/>
		</form>
	<TR/>
	
</TABLE>
</body>
</html>