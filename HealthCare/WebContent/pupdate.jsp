<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

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

</head>
<script>  
function validateform(){  
var email=document.myform.email.value;  
var oldpass=document.myform.oldpass.value;
var newpass=document.myform.newpass.value;
  
if (email==null || email==""){  
  alert("email can't be blank");  
  return false;  
}else if(oldpass.length<4){  
  alert("Old Password must be at least 4 characters long.");  
  return false;  
  }
}else if(newpass.length<4){  
	  alert("New Password must be at least 4 characters long.");  
	  return false;  
	  }  
}  
</script> 
<body>
<%@include file="pheader.jsp"%>
<div class="row">
		<div class="column" style="background-color: white;" align="center">
			<img src="2.jpg" height="370" width="700" border="0">
			
		</div>
		<div>
<br><br><br><br><br><br><br><br>
	<form   name="myform" action="passpdate" method="post"   onsubmit="return validateform()">

		<table align="center">
<center><h1 style=color:blue;>Person Update form</h1></center>
			
			
			
			<tr>
				<td>	
				OldPassword</td>
				<td><input type="password" name="oldpass" required="required" /><br /></td>
			</tr>
			

			<tr>
				<td>New Password</td>
				<td><input type="password" name="newpass" required="required" /><br /></td>
			</tr>


			<tr>
				<td></td>
				<td><br> <input type="Submit" value="submit"> <input
					type="reset" value="reset" /></td>
			
			</tr>
			
			</table>
			</form>
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