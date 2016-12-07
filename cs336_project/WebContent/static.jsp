<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Some dope info</title>
</head>
<body>

	<h3>Top Five Best Presidents</h3>
	<table>
		<thead>
			<tr>
				<td>President</td>
				<td>Year</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>George W. Bush</td>
				<td>2000</td>
			</tr>
			<tr>
				<td>Ronald Reagan</td>
				<td>1984</td>
			</tr>
			<tr>
				<td>Bill Clinton</td>
				<td>1992</td>
			</tr>
			<tr>
				<td>Ronald Reagan</td>
				<td>1980</td>
			</tr>
			<tr>
				<td>Jimmy Carter</td>
				<td>1976</td>
			</tr>
		</tbody>
	</table>
	
	<h3>Top Five Worst Presidents</h3>
	<table>
		<thead>
			<tr>
				<td>President</td>
				<td>Year</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Bill Clinton</td>
				<td>1996</td>
			</tr>
			<tr>
				<td>George W. Bush</td>
				<td>2004</td>
			</tr>
			<tr>
				<td>Barack Obama</td>
				<td>2008</td>
			</tr>
			<tr>
				<td>George H. W. Bush</td>
				<td>1988</td>
			</tr>
			<tr>
				<td>Jimmy Carter</td>
				<td>1976</td>
			</tr>
		</tbody>
	</table>
	
	<h3>Top Five Overall Best States</h3>
	<table>
		<thead>
			<tr>
				<td>State</td>
				<td>GPA</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>New York</td>
				<td>2.57</td>
			</tr>
			<tr>
				<td>Massachusetts</td>
				<td>2.48</td>
			</tr>
			<tr>
				<td>New Jersey</td>
				<td>2.48</td>
			</tr>
			<tr>
				<td>California</td>
				<td>2.44</td>
			</tr>
			<tr>
				<td>Connecticut</td>
				<td>2.35</td>
			</tr>
		</tbody>
	</table>
	
	<h3>Top Five Overall Worst States</h3>
	<table>
		<thead>
			<tr>
				<td>State</td>
				<td>GPA</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Louisiana</td>
				<td>1.7</td>
			</tr>
			<tr>
				<td>South Dakota</td>
				<td>1.7</td>
			</tr>
			<tr>
				<td>Mississippi</td>
				<td>1.7</td>
			</tr>
			<tr>
				<td>Wyoming</td>
				<td>1.72</td>
			</tr>
			<tr>
				<td>Kansas</td>
				<td>1.77</td>
			</tr>
		</tbody>
	</table>
	
	<h3>Top Five Best States On Crime</h3>
	<table>
		<thead>
			<tr>
				<td>State</td>
				<td>GPA</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Nevada</td>
				<td>2.61</td>
			</tr>
			<tr>
				<td>Florida</td>
				<td>2.61</td>
			</tr>
			<tr>
				<td>Michigan</td>
				<td>2.61</td>
			</tr>
			<tr>
				<td>Colorado</td>
				<td>2.61</td>
			</tr>
			<tr>
				<td>Massachusetts</td>
				<td>2.56</td>
			</tr>
		</tbody>
	</table>
	
	<h3>Top Five Worst States On Crime</h3>
	<table>
		<thead>
			<tr>
				<td>State</td>
				<td>GPA</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Tennessee</td>
				<td>1.44</td>
			</tr>
			<tr>
				<td>Arkansas</td>
				<td>1.44</td>
			</tr>
			<tr>
				<td>Alabama</td>
				<td>1.56</td>
			</tr>
			<tr>
				<td>Mississippi</td>
				<td>1.56</td>
			</tr>
			<tr>
				<td>West Virginia</td>
				<td>1.61</td>
			</tr>
		</tbody>
	</table>
	
	<h3>Top Five Best States On Unemployment</h3>
	<table>
		<thead>
			<tr>
				<td>State</td>
				<td>GPA</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>California</td>
				<td>2.77</td>
			</tr>
			<tr>
				<td>New York</td>
				<td>2.77</td>
			</tr>
			<tr>
				<td>New Jersey</td>
				<td>2.72</td>
			</tr>
			<tr>
				<td>Maine</td>
				<td>2.56</td>
			</tr>
			<tr>
				<td>Oregon</td>
				<td>2.5</td>
			</tr>
		</tbody>
	</table>
	
	<h3>Top Five Worst States On Unemployment</h3>
	<table>
		<thead>
			<tr>
				<td>State</td>
				<td>GPA</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Nebraska</td>
				<td>1.0</td>
			</tr>
			<tr>
				<td>South Dakota</td>
				<td>1.06</td>
			</tr>
			<tr>
				<td>Iowa</td>
				<td>1.28</td>
			</tr>
			<tr>
				<td>Kansas</td>
				<td>1.33</td>
			</tr>
			<tr>
				<td>Utah</td>
				<td>1.5</td>
			</tr>
		</tbody>
	</table>
	
	<h3>Top Five Best States On The Economy</h3>
	<table>
		<thead>
			<tr>
				<td>State</td>
				<td>GPA</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Nebraska</td>
				<td>2.56</td>
			</tr>
			<tr>
				<td>New York</td>
				<td>2.5</td>
			</tr>
			<tr>
				<td>Massachusetts</td>
				<td>2.44</td>
			</tr>
			<tr>
				<td>Minnesota</td>
				<td>2.44</td>
			</tr>
			<tr>
				<td>Washington</td>
				<td>2.33</td>
			</tr>
		</tbody>
	</table>
	
	<h3>Top Five Worst States On The Economy</h3>
	<table>
		<thead>
			<tr>
				<td>State</td>
				<td>GPA</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Idaho</td>
				<td>1.33</td>
			</tr>
			<tr>
				<td>Nevada</td>
				<td>1.44</td>
			</tr>
			<tr>
				<td>Alaska</td>
				<td>1.61</td>
			</tr>
			<tr>
				<td>Louisiana</td>
				<td>1.61</td>
			</tr>
			<tr>
				<td>Wyoming</td>
				<td>1.61</td>
			</tr>
		</tbody>
	</table>
	
<!--	<%
		try {
	
			//Create a connection string
			String url = "jdbc:mysql://cs336-project.ctv5bnfa4udx.us-east-1.rds.amazonaws.com:3306/MySQL_Instance1";
			//Load JDBC driver - the interface standardizing the connection procedure. Look at WEB-INF\lib for a mysql connector jar file, otherwise it fails.
			Class.forName("com.mysql.jdbc.Driver");

			//Create a connection to your DB
			Connection con = DriverManager.getConnection(url, "orlando_santoni", "Supermario64");
		
			//Create a SQL statement
			Statement stmt = con.createStatement();


		
	/*1*/	String topFiveBestPresidentialTerms = "SELECT president, year_elected FROM Report_Card GROUP BY year_elected ORDER BY avg(gpa) DESC LIMIT 5";
	/*2*/	String topFiveWorstPresidentialTerms = "SELECT president, year_elected FROM Report_Card GROUP BY year_elected ORDER BY avg(gpa) LIMIT 5";
	/*3*/	String topFiveBestStates = "SELECT state, AVG(gpa) FROM Report_Card WHERE state!=\"District of Columbia\" GROUP BY state ORDER BY AVG(gpa) DESC LIMIT 5";	
	/*4*/	String topFiveWorstStates = "SELECT state, AVG(gpa) FROM Report_Card WHERE state!=\"District of Columbia\" GROUP BY state ORDER BY AVG(gpa) LIMIT 5";	
	/*5*/	String topFiveBestCrime = "SELECT state, AVG(crime_score) FROM Grades WHERE state!=\"District of Columbia\" GROUP BY state ORDER BY AVG(crime_score) DESC LIMIT 5";	
	/*6*/	String topFiveWorstCrime = "SELECT state, AVG(crime_score) FROM Grades WHERE state!=\"District of Columbia\" GROUP BY state ORDER BY AVG(crime_score) LIMIT 5";	
	/*7*/	String topFiveBestUnemployment = "SELECT state, AVG(unemployment_score) FROM Grades WHERE state!=\"District of Columbia\" GROUP BY state ORDER BY AVG(unemployment_score) DESC LIMIT 5";	
	/*8*/	String topFiveWorstUnemployment = "SELECT state, AVG(unemployment_score) FROM Grades WHERE state!=\"District of Columbia\" GROUP BY state ORDER BY AVG(unemployment_score) LIMIT 5";	
	/*9*/	String topFiveBestEconomy = "SELECT state, AVG(economy_score) FROM Grades WHERE state!=\"District of Columbia\" GROUP BY state ORDER BY AVG(economy_score) DESC LIMIT 5";	
	/*10*/	String topFiveWorstEconomy = "SELECT state, AVG(economy_score) FROM Grades WHERE state!=\"District of Columbia\" GROUP BY state ORDER BY AVG(economy_score) LIMIT 5"; 
		
			System.out.println(topFiveBestPresidentialTerms);
						
			//Run the queries against the database.
			ResultSet result1 = stmt.executeQuery(topFiveBestPresidentialTerms);
//			ResultSet result2 = stmt.executeQuery(topFiveWorstPresidentialTerms);
//			ResultSet result3 = stmt.executeQuery(topFiveBestStates);
//			ResultSet result4 = stmt.executeQuery(topFiveWorstStates);
//			ResultSet result5 = stmt.executeQuery(topFiveBestCrime);
//			ResultSet result6 = stmt.executeQuery(topFiveWorstCrime);
//			ResultSet result7 = stmt.executeQuery(topFiveBestUnemployment);
//			ResultSet result8 = stmt.executeQuery(topFiveWorstUnemployment);
//			ResultSet result9 = stmt.executeQuery(topFiveBestEconomy);
//			ResultSet result10 = stmt.executeQuery(topFiveWorstEconomy);
		
			//Make an HTML table to show the results in:
			out.print("<table>");
							out.print("<thead>");

			//Header
			out.print("<h3>Top Five Worst Presidential Terms!</h3>");
			//make a row
			out.print("<tr>");
			//make a column
			out.print("<td>");
			//print out column header
			out.print("president");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("year");
			out.print("</td>");
			out.print("</tr>");
					out.print("</thead>");

						out.print("<tbody>");

			//parse out the results
			while (result1.next()) {
				//make a row
				out.print("<tr>");
				//make a column
				out.print("<td>");
				//Print out current president name:
				String tmp1 = result1.getString("president");
				System.out.println(tmp1);
				out.print(tmp1);
				out.print("</td>");
				out.print("<td>");
				//Print out current year:
				String tmp2 = result1.getString("year");
				System.out.println(tmp1);
				out.print(tmp2);
				out.print("</td>");
				out.print("</tr>");
			}
			out.print("</tbody>");
			out.print("</table>");
		
			con.close();
		
		} catch (Exception e) {
		}
		
	
	%>	--!>




 </body>
</html>