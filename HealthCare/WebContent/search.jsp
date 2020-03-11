<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Details</title>
<style>
legend {
	
}

  fieldset {
	height: 430px;
	width: 450px;
}

.fieldset {
	float: none;
}

input[type=text] {
	height: 30px;
	background-color: silver;
}

input[type=date] {
	height: 30px;
	width: 173px;
	background-color: silver;
}

input[type=password] {
	height: 30px;
	background-color: silver;
}

input[type=email] {
	height: 30px;
	background-color: silver;
}
select[type=course]{
height: 30px;
	background-color: silver;
}

label {
	color: red;
	font-weight: bold;
}

input[type=submit] {
	height: 40px;
	width: 80px;
	background-color: Green;
}

input[type=reset] {
	height: 40px;
	width: 80px;
	background-color: red;
}
</style>
</head>
<body bgcolor="white">
		<h2 style="color: green; text-align: center;">Find Your Life
	Partner Today!</h2>
	<form action="search" method="post" target='_top'>
		<table align="center">

			<tr>
				<td>Education</td>
				<td><select name="quly">
						<option value='engg'>Engg</option>
						<option value='medical'>Medical</option>
						<option value='ug'>UG</option>
						<option value='pg'>PG</option>
						<option value='p.hd'>P.hd</option>
						<option value='commerce'>B.com/M.com</option>
				</select></td>
			</tr>
			<br>
			<tr>
				<td>Age</td>
				<td><select name="age" required="required">
						<option value='18'>18</option>
						<option value='19'>19</option>
						<option value='20'>20</option>
						<option value='21'>21</option>
						<option value='22'>22</option>
						<option value='23'>23</option>
						<option value='24'>24</option>
						<option value='23'>25</option>
						<option value='24'>26</option>
				</select></td>
			</tr>
			<br>
			<tr>

				<td>Religion</td>
				<td><select name="religion">
						<option value=''>--Select Religion--</option>
						<option value='Hindu'>Hindu</option>
						<option value='Muslim'>Muslim</option>
						<option value='Panjabi'>Panjabi</option>
						<option value='Shikh'>Shikh</option>
				</select></td>
			</tr>
			<br>
			<tr>

				<td>Mother Tongue</td>
				<td><select name="tongue">
						<option value=''>--Select Tongue--</option>
						<option value='Hindi'>Hindi</option>
						<option value='English'>English</option>
						<option value='Tamil'>Tamil</option>
						<option value='Urdu'>Urdu</option>
						<option value='Telagu'>Telagu</option>
				</select></td>
			</tr>

			<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

			<!-- 		<tr> -->

			<!-- 				<td>City</td> -->
			<!-- 				<td><select name="tongue" required="required"> -->
			<!-- 						<option value='hyd'>Hyderabad</option> -->
			<!-- 						<option value='lko'>Lucknow</option> -->
			<!-- 						<option value='pl'>Pilibhit</option> -->
			<!-- 						<option value='pnp'>Puranpur</option> -->
			<!-- 						<option value='del'>Delhi</option> -->
			<!-- 				</select></td> -->
			<!-- 			</tr> -->

			<tr>
				<td></td>
				<td><br> <input type="Submit" value="Search Now">
					<input type="reset" value="Cencel" /></td>
				</td>
			</tr>
			</form>
</body>
</html>