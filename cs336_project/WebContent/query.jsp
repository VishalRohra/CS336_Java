<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your results!</title>
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
			String[] presidents = request.getParameterValues("president");
			String[] years = request.getParameterValues("year");
			String[] states = request.getParameterValues("state");
			String[] crimeGrades = request.getParameterValues("crime_grade");
			String[] unemploymentGrades = request.getParameterValues("unemployment_grade");
			String[] economicGrades = request.getParameterValues("economic_grade");

			String whereStatement = "WHERE";

			//year parameter
			whereStatement = whereStatement + " (Grades.year in ";
			String yearStr = "(";
			for(int i = 0; i < years.length; i++){
		
				if(i != presidents.length-1){
					yearStr = yearStr + years[i] + ",";
				}
				else {
					yearStr = yearStr + years[i];
				}
		
			}
			
			yearStr = yearStr + ")";
			System.out.println(yearStr);
			whereStatement = whereStatement + yearStr;
			whereStatement = whereStatement + ") AND ";

			//President parameter
			whereStatement = whereStatement + "(president in ";
			String presidentStr = "(";
			for(int i = 0; i < presidents.length; i++){
		
				if(i != presidents.length-1){
					presidentStr = presidentStr + "\"" + presidents[i] + "\",";
				}
				else {
					presidentStr = presidentStr + "\"" + presidents[i] + "\"";
				}
		
			}
			
			presidentStr = presidentStr + ")";
			System.out.println(presidentStr);
			whereStatement = whereStatement + presidentStr;
			whereStatement = whereStatement + ") AND "; 
			
			//state parameter
			whereStatement = whereStatement + "(Grades.state in ";
			String stateStr = "(";
			for(int i = 0; i < states.length; i++){
		
				if(i != states.length-1){
					stateStr = stateStr + "\"" + states[i] + "\",";
				}
				else {
					stateStr = stateStr + "\"" + states[i] + "\"";
				}
		
			}
			
			stateStr = stateStr + ")";
			System.out.println(stateStr);
			whereStatement = whereStatement + stateStr;
			whereStatement = whereStatement + ") AND "; 
			
			//crime_grade parameter
			whereStatement = whereStatement + "(crime_grade in ";
			String crimeGradeStr = "(";
			for(int i = 0; i < crimeGrades.length; i++){
		
				if(i != crimeGrades.length-1){
					crimeGradeStr = crimeGradeStr + "\"" + crimeGrades[i] + "\",";
				}
				else {
					crimeGradeStr = crimeGradeStr + "\"" + crimeGrades[i] + "\"";
				}
		
			}
			
			crimeGradeStr = crimeGradeStr + ")";
			System.out.println(crimeGradeStr);
			whereStatement = whereStatement + crimeGradeStr;
			whereStatement = whereStatement + ") AND "; 
			
			//unemployment_grade parameter
			whereStatement = whereStatement + "(unemployment_grade in ";
			String unemploymentGradeStr = "(";
			for(int i = 0; i < unemploymentGrades.length; i++){
		
				if(i != unemploymentGrades.length-1){
					unemploymentGradeStr = unemploymentGradeStr + "\"" + unemploymentGrades[i] + "\",";
				}
				else {
					unemploymentGradeStr = unemploymentGradeStr + "\"" + unemploymentGrades[i] + "\"";
				}
		
			}
			
			unemploymentGradeStr = unemploymentGradeStr + ")";
			System.out.println(unemploymentGradeStr);
			whereStatement = whereStatement + unemploymentGradeStr;
			whereStatement = whereStatement + ") AND "; 
			
			//economy_grade parameter
			whereStatement = whereStatement + "(economy_grade in ";
			String economyGradeStr = "(";
			for(int i = 0; i < economicGrades.length; i++){
		
				if(i != economicGrades.length-1){
					economyGradeStr = economyGradeStr + "\"" + economicGrades[i] + "\",";
				}
				else {
					economyGradeStr = economyGradeStr + "\"" + economicGrades[i] + "\"";
				}
		
			}
			
			economyGradeStr = economyGradeStr + ")";
			System.out.println(economyGradeStr);
			whereStatement = whereStatement + economyGradeStr;
			whereStatement = whereStatement + ")"; 
			
			System.out.println(whereStatement);
			
			//Make a SELECT query from the grades and report_card tables with the parameters selected in HelloWorld.jsp
			String str = "SELECT Grades.year, president, Grades.state, crime_grade, unemployment_grade, economy_grade, Grades.gpa FROM Report_Card INNER JOIN Grades ON Grades.year=Report_Card.year_elected AND Grades.state=Report_Card.state AND Grades.gpa=Report_Card.gpa " + whereStatement;
			System.out.println(str);

			//Run the query against the database.
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
