<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="sol.css">
<script type="text/javascript" src="sol.js"></script>
<script type="text/javascript">
    $(function() {
        // initialize sol
        $('#president').searchableOptionList();
        $('#year').searchableOptionList();
        $('#state').searchableOptionList();
        $('#crime').searchableOptionList();
        $('#unemployment').searchableOptionList();
        $('#economic').searchableOptionList();
    });
</script>
<script>
document.addEventListener('DOMContentLoaded', function () {
   var input = document.getElementById('president');
   if (localStorage['president']) { // if job is set
       input.value = localStorage['president']; // set the value
   }
   input.onchange = function () {
        localStorage['president'] = this.value; // change localStorage on change
    }
});
</script>
<title>Presidential Report Card</title>
</head>
<body>
Select a president
<br><br>
	<form method="query" action="query.jsp">
		<select id="president" name="president" multiple="multiple">
			<option value="Jimmy Carter">Jimmy Carter</option>
			<option value="Ronald Reagan">Ronald Reagan</option>
			<option value="George H. W. Bush">George H. W. Bush</option>
			<option value="Bill Clinton">Bill Clinton</option>
			<option value="George W. Bush">George W. Bush</option>
			<option value="Barack Obama">Barack Obama</option>
		</select>&nbsp;
		<br>Select year<br>
		<br>
		<select id="year" name="year" multiple="multiple">
			<option value="1976">1976</option>
			<option value="1980">1980</option>
			<option value="1984">1984</option>
			<option value="1988">1988</option>
			<option value="1992">1992</option>
			<option value="1996">1996</option>
			<option value="2000">2000</option>
			<option value="2004">2004</option>
			<option value="2008">2008</option>
		</select>
		<br>Select state<br>
		<br>
		<select id="state" name="state" multiple="multiple">
			<option value="Alabama">Alabama</option>
			<option value="Alaska">Alaska</option>
			<option value="Arizona">Arizona</option>
			<option value="Arkansas">Arkansas</option>
			<option value="California">California</option>
			<option value="Colorado">Colorado</option>
			<option value="Connecticut">Connecticut</option>
			<option value="Delaware">Delaware</option>
			<option value="Florida">Florida</option>
			<option value="Georgia">Georgia</option>
			<option value="Hawaii">Hawaii</option>
			<option value="Idaho">Idaho</option>
			<option value="Illinois">Illinois</option>
			<option value="Indiana">Indiana</option>
			<option value="Iowa">Iowa</option>
			<option value="Kansas">Kansas</option>
			<option value="Kentucky">Kentucky</option>
			<option value="Louisiana">Louisiana</option>
			<option value="Maine">Maine</option>
			<option value="Maryland">Maryland</option>
			<option value="Massachusetts">Massachusetts</option>
			<option value="Michigan">Michigan</option>
			<option value="Minnesota">Minnesota</option>
			<option value="Mississippi">Mississippi</option>
			<option value="Missouri">Missouri</option>
			<option value="Montana">Montana</option>
			<option value="Nebraska">Nebraska</option>
			<option value="Nevada">Nevada</option>
			<option value="New Hampshire">New Hampshire</option>
			<option value="New Jersey">New Jersey</option>
			<option value="New Mexico">New Mexico</option>
			<option value="New York">New York</option>
			<option value="North Carolina">North Carolina</option>
			<option value="North Dakota">North Dakota</option>
			<option value="Ohio">Ohio</option>
			<option value="Oklahoma">Oklahoma</option>
			<option value="Oregon">Oregon</option>
			<option value="Pennsylvania">Pennsylvania</option>
			<option value="Rhode Island">Rhode Island</option>
			<option value="South Carolina">South Carolina</option>
			<option value="South Dakota">South Dakota</option>
			<option value="Tennessee">Tennessee</option>
			<option value="Texas">Texas</option>
			<option value="Utah">Utah</option>
			<option value="Vermont">Vermont</option>
			<option value="Virginia">Virginia</option>
			<option value="Washington">Washington</option>
			<option value="West Virginia">West Virginia</option>
			<option value="Wisconsin">Wisconsin</option>
			<option value="Wyoming">Wyoming</option>
		</select>&nbsp;
		<br>Select Grade for Crime<br>
		<br>
		<select id="crime" name="crime_grade" multiple="multiple">
			<option value="A">A</option>
			<option value="B+">B+</option>
			<option value="B">B</option>
			<option value="C+">C+</option>
			<option value="C">C</option>
			<option value="D">D</option>
			<option value="F">F</option>
		</select>&nbsp;
		<br>Select Grade for Unemployment<br>
		<br>
		<select id="unemployment" name="unemployment_grade" multiple="multiple">
			<option value="A">A</option>
			<option value="B+">B+</option>
			<option value="B">B</option>
			<option value="C+">C+</option>
			<option value="C">C</option>
			<option value="D">D</option>
			<option value="F">F</option>
		</select>&nbsp;
		<br>Select Grade for the Economy<br>
		<br>
		<select id="economic" name="economic_grade" multiple="multiple">
			<option value="A">A</option>
			<option value="B+">B+</option>
			<option value="B">B</option>
			<option value="C+">C+</option>
			<option value="C">C</option>
			<option value="D">D</option>
			<option value="F">F</option>
		</select>&nbsp;<br> <input type="submit" value="submit">
	</form>
	<br>
	<form method="static" action="static.jsp">
		<input type="submit" value="Some of our crazy queries!">
	</form>

</body>
</html>
