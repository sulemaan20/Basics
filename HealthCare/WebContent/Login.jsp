
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta>
<title>Login</title>
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

input[type=password] {
	height: 30px;
	background-color: silver;
}

input[type=email] {
	height: 30px;
	background-color: silver;
}

/* Style the header */
.header {
	background-color: #f1f1f1; 
	padding: 30px;
	text-align: center;
	font-size: 35px;
}

/* Create three equal columns that floats next to each other */
.column {
	float: left;
	width: 50%;
	padding: 10px;
	height: 650px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Style the footer */


/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media ( max-width : 600px) {
	.column {
		width: 100%;
	}
}
</style>
<script>  
function validateform(){  
var email=document.myform.email.value;  
var pass=document.myform.pass.value;  
  
if (email==null || email==""){  
  alert("email can't be blank");  
  return false;  
}else if(pass.length<4){  
  alert("Password must be at least 4 characters long.");  
  return false;  
  }  
}  
</script>  
</head>
<body>
	
	<%@include file="header.jsp"%>

<div class="row">
		<div class="column" style="background-color: white;" align="center">
			<img src="2.jpg" height="370" width="700" border="0">
			
		</div>
		<div class="column" style="background-color: white;">
		<br><br><br><br>
		<h2 style=color:red;text-align:center;>Login Page</h2>

				<form name="myform"  action="plog" method="post" onsubmit="return validateform()"  target='_top'>
			<table align="center">
				<tr>
				
			<td>	
			
				<label>UserName</label></td>
					<td><input type="email" name="email" placeholder="email/username" required="required"><br></td>
				</tr>
				<tr>
					<td>		<label>Password</label></td>
					<td><input type="password" name="pass" placeholder="password" required="required"></td>
				</tr>
<!-- 				<tr> -->
<!-- 				<td align="left">Gender </td> -->
<!--        <td align="left"> -->
<!--           <input type='radio' name='gender' value='M' checked>Male &nbsp;&nbsp; -->
<!--           <input type='radio' name='gender' value='F'>FeMale -->
<!--        </td> -->
<!-- 			</tr> -->
				<tr>
					<td></td>
					<td><input type="Submit" value="Submit"> <input
						type="Reset" value="Clear"></td>
				</tr>
				
			</table>
		</form>
		<div align="right" font="red">
		<a href="forget.jsp">Forget password</a></div>
		
		</div>
		
		
	</div>
<div class="footer">
		<i style=color:white;> &copy; copyright2018 <br> ABOUTUS | Employability Quantified| Employability Assessment Test 
|  Aptitude Test in India2018 © All rights reserved Aspiring Minds Assessment Pvt. Ltd
		</i><br>
		Navigate
Home
Sign In/Register
Jobs
Internships
Newsletter Archive
About Us
Contact Us
Think Certification
Think Syllabus
Think Sample Papers
<br>
FAQs
Press/Media
Is Think for me?
Testimonials
Aptitude Tests for Jobs
Think Blog
Term And Conditions<br>

	</div>


</body>
</html>