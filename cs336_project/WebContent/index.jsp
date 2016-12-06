<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Presidential Report Card</title>
</head>
<body>

Select a president<br>
	<form method="query" action="query.jsp">
		<select name="president" size=1>
			<option value="Jimmy Carter">Jimmy Carter</option>
			<option value="Ronald Reagan">Ronald Reagan</option>
			<option value="George H. W. Bush">George H. W. Bush</option>
			<option value="Bill Clinton">Bill Clinton</option>
			<option value="George W. Bush">George W. Bush</option>
			<option value="Barack Obama">Barack Obama</option>
		</select>&nbsp;<br> <input type="submit" value="submit">
	</form>
<br>
Select a year<br>
	<form method="query" action="query.jsp">
		<select name="year" size=1>
			<option value="1976">1976</option>
			<option value="1980">1980</option>
			<option value="1984">1984</option>
			<option value="1988">1988</option>
			<option value="1992">1992</option>
			<option value="1996">1996</option>
			<option value="1996">1996</option>
			<option value="2000">2000</option>
			<option value="2004">2004</option>
			<option value="2008">2008</option>
		</select>&nbsp;<br> <input type="submit" value="submit">
	</form>
<br>

</body>
</html>
