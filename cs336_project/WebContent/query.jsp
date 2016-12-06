<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		List<String> list = new ArrayList<String>();

		try {

			//Create a connection string
			String url = "jdbc:mysql://cs336-project.ctv5bnfa4udx.us-east-1.rds.amazonaws.com:3306/MySQL_Instance1";
			//Load JDBC driver - the interface standardizing the connection procedure. Look at WEB-INF\lib for a mysql connector jar file, otherwise it fails.
			Class.forName("com.mysql.jdbc.Driver");

			//Create a connection to your DB
			Connection con = DriverManager.getConnection(url, "orlando_santoni", "Supermario64");
			
			//Create a SQL statement
			Statement stmt = con.createStatement();
			//Get the combobox from the HelloWorld.jsp
			String entity = request.getParameter("president");
			//Make a SELECT query from the sells table with the price range specified by the 'price' parameter at the HelloWorld.jsp
			String str = "SELECT Grades.year, president, crime_grade, unemployment_grade, economy_grade, Grades.state, Grades.gpa FROM Report_Card INNER JOIN Grades ON Grades.year=Report_Card.year_elected AND Grades.state=Report_Card.state AND Grades.gpa=Report_Card.gpa WHERE president=" + "\"" + entity + "\"";
			//String str = "SELECT * FROM Change_In_Factors";

			//Run the query against the database.
			System.out.println(str);
			ResultSet result = stmt.executeQuery(str);

			//Make an HTML table to show the results in:
			out.print("<table>");

			//make a row
			out.print("<tr>");
			//make a column
			out.print("<td>");
			//print out column header
			out.print("year");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("president");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("state");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("crime_grade");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("unemployment_grade");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("economy_grade");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("gpa");
			out.print("</td>");
			out.print("</tr>");

			//parse out the results
			while (result.next()) {
				//make a row
				out.print("<tr>");
				//make a column
				out.print("<td>");
				//Print out current president name:
				out.print(result.getString("year"));
				out.print("</td>");
				out.print("<td>");
				//Print out current state:
				out.print(result.getString("president"));
				out.print("</td>");
				out.print("<td>");
				//Print out current year
				out.print(result.getString("state"));
				out.print("</td>");
				out.print("<td>");
				//Print out current crime
				out.print(result.getString("crime_grade"));
				out.print("</td>");
				out.print("<td>");
				//Print out current gsp
				out.print(result.getString("unemployment_grade"));
				out.print("</td>");
				out.print("<td>");
				//Print out current unemployment
				out.print(result.getString("economy_grade"));
				out.print("</td>");
				out.print("<td>");
				//Print out current gpa
				out.print(result.getString("gpa"));
				out.print("</td>");
				out.print("</tr>");

			}
			out.print("</table>");

			//close the connection.
			con.close();

		} catch (Exception e) {
		}
	%>

</body>
</html>
