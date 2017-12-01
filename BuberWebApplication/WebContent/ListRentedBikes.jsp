<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" import="java.io.*"
    import="bean.Provider" import="bean.ConnectionProvider"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Rented Out Bikes</title>
</head>

<style>
		.rate {
  			border: 1px solid #cccccc;
  			float: left;
  			height: 46px;
  			padding: 0 10px;
			}
	
		.rate:not(:checked) > input {
  			position: absolute;
			top: -9999px;
			}

 		.rate:not(:checked) > label {
			float: right;
			width: 1em;
			overflow: hidden;
			white-space: nowrap;
  			cursor: pointer;
			font-size: 30px;	
			color: #ccc;
			}	

		.rate:not(:checked) > label:before { content: '★ '; }
 
		.rate > input:checked ~ label { color: #ffc700; }

		.rate:not(:checked) > label:hover, .rate:not(:checked) > label:hover ~ label { color: #deb217; }

		.rate > input:checked + label:hover, .rate > input:checked + label:hover ~ label, .rate > input:checked ~ label:hover, .rate > input:checked ~ label:hover ~ label, .rate > label:hover ~ input:checked ~ label { color: #c59b08; }
</style>

<body>

<%@ include file="index.jsp" %>

<body>
	<h2>Data from the table 'RentedBikes' of database 'buber'</h2>
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
	<Tr>
		<TD>
			<form action="updateRating.jsp">
				<div class="rate">
				  <input type="radio" id="star5" name="rate" value="5" />
				  <label for="star5" title="text">5 stars</label>
				  <input type="radio" id="star4" name="rate" value="4" />
				  <label for="star4" title="text">4 stars</label>
				  <input type="radio" id="star3" name="rate" value="3" />
				  <label for="star3" title="text">3 stars</label>
				  <input type="radio" id="star2" name="rate" value="2" />
				  <label for="star2" title="text">2 stars</label>
				  <input type="radio" id="star1" name="rate" value="1" />
				  <label for="star1" title="text">1 star</label>
				</div>
			<br/><br/><br/><br/>	
			BikeId:<input type="text" name="ratingId"/><br/><br/>
			Rating(1-5):<input type="text" name="ratingInt"/><br/><br/>
			<input type="submit" value="addBike"/>
		</form>
	<TR/>
	
	<TR>
		<TD>
			<form ACTION="returnBike.jsp" method="get" >
				<input type="submit" value="returnBike"/>
			</form>
		<TD/>
	</TR>
</TABLE>
</body>
</html>