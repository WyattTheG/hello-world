<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" import="java.io.*"
    import="bean.Provider" import="bean.ConnectionProvider"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Available Bikes</title>
</head>
<body>

<%@ include file="index.jsp" %>

<body>
	<h2>Data from the table 'bike' of database 'buber'</h2>
<%
	try {
		/* Create string of connection url within specified format with machine
		name, port number and database name. Here machine name id localhost and 
		database name is student. */
		String connectionURL = "jdbc:mysql://localhost:3306/buber";
		// declare a connection by using Connection interface
		Connection connection = null;
		/* declare object of Statement interface that is used for executing sql 
		statements. */
		Statement statement = null;
		// declare a resultset that uses as a table for output data from tha table.
		ResultSet rs = null;
		// Load JBBC driver "com.mysql.jdbc.Driver"
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		/* Create a connection by using getConnection() method that takes parameters 
		of string type connection url, user name and password to connect to database.*/
		connection = DriverManager.getConnection(connectionURL, "wyatt", "password");
		/* createStatement() is used for create statement object that is used for 
		sending sql statements to the specified database. */
		statement = connection.createStatement();
		// sql query to retrieve values from the secified table.
		String QueryString = "SELECT * from bike";
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
	</TR>
	<% } %>
<%
	// close all the connections.
	rs.close();
	statement.close();
	connection.close();
	} catch (Exception ex) {
%>
	
	
<%
	out.println("Unable to connect to database.");
	}
%>
</TABLE>

<TABLE>
	<TR>
		<TD>
		<form ACTION="addBike.jsp" method="get" >
		<button type="submit"> <-- Add Another Bike</button>
		</form>
		</TD>
	</TR>
	<TR>
		<TD>
		<form ACTION="rentBike.jsp" method="get" >
		Desired Bike's ID:<input type="text" name="DesiredBikeId"/><br/>
		Time Out:<input type="text" name="timeOut"/><br/><br/>
		Time In :<input type="text" name="timeIn" /><br/><br/>
		<input type="submit" value="rentBike"/>
		</form>
		<TD/>
	</TR>
	<TR>
		<TD>
		<form ACTION="ListRentedBikes.jsp" method="get" >
		<button type="submit">Rented Bikes--></button>
		</form>
		</TD>
	</TR>
</TABLE>
</body>
</html>