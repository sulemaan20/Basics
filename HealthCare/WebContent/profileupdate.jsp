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
	function validateform() {
		var name = document.myform.name.value;
		var newadds = document.myform.adds.value;
		var mnumber = document.myform.mnumber.value;
		
		if (name == null || name == "") {
			alert("Name can't be blank");
			return false;
		} else if (name.length < 4) {
			alert("Name Should be more then 4 Chars");
			return false;
		}           

	else if (newadds == null || newadds == "") {
			alert("Name can't be blank");
			return false;
		} else if (newadds.length < 8) {
			alert("Address Should be more then 8 Chars");
			return false;
		}           


           if(isNaN(mnumber)||mnumber.indexOf(" ")!=-1)
           {
              alert("Enter numeric value")
              return false; 
           }
        
           if (mnumber.charAt(0)!="9")
           {
                alert("it should start with 9 ");
                return false
           }
              if (mnumber.length>5)
           {
                alert("enter 5 characters");
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
<br><br><br><br><br><br><br>
<h2 style="color: green; text-align: center;">Edit Details</h2>

	<form  name="myform"  action="pfupdate" method="doPost" onsubmit="return validateform()">
		<table align="center">
			<tr>
				<td align="left">New Name</td>
				<td align="left"><input type="text" name="name"
					required="required" placeholder="New Name" /></td>
			</tr>
		

			<tr>
				<td align="left">New Mobile Number</td>
				<td align="left"><input type="text" name="mnumber"
					required="required" placeholder="New Mnumber"></td>
			</tr>
			

			<tr>
				<td align="left">New Address</td>
				<td align="left"><input type="text" name="adds"
					required="required" placeholder="New Address" /><br /></td>
			</tr>

			<td></td>
			<td><br> <input type="Submit" value="Continue"> <input
				type="reset" value="reset" /></td>
			</td>
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