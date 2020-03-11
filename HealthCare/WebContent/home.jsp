<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
<title>Home page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Arial, Helvetica, sans-serif;
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

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: black;
}

.topnav a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.active {
	background-color: #4CAF50;
	color: white;
}

.topnav .icon {
	display: none;
}

@media screen and (max-width: 600px) {
	.topnav
	
	
	 
	
	
	a
	
	
	
	
	:not
	
	
	 
	
	
	(
	:first-child
	
	
	 
	
	
	)
	{
	display
	
	
	
	
	:
	
	
	 
	
	
	none
	
	
	
	
	;
}

.topnav a.icon {
	float: right;
	display: block;
}

}
@media screen and (max-width: 600px) {
	.topnav.responsive {
		position: relative;
	}
	.topnav.responsive .icon {
		position: absolute;
		right: 0;
		top: 0;
	}
	.topnav.responsive a {
		float: none;
		display: block;
		text-align: left;
	}
}

}
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

header {
	max-width: 100%;
	text-align: center;
	background-color: black;
	color: #fff;
	height: 130px;
}

nav a {
	color: white;
	text-decoration: none;
	padding: 23px 60px;
	font-size: 17px;
}

nav a:hover {
	color: #3300cc;
	background-color: #fff;
}

.navbar {
	overflow: hidden;
	background-color: #333;
	font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
	float: left;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: red;
}

.dropdown-content {
	display: none;
	position: fixed;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}

    .footer {
  
  text-align:justify;
   width: 100%;
   background-color: darkcyan;
   color: white;
   text-align: center;
}


.anchorButton {
  /* Resets */
  font-family: sans-serif;
  font-size: 16px;
  color: #000;
  border: 1px solid #000;
  border-radius: 0;
  background-color: transparent;
  
  margin: 0;
  padding: 0;
  height: auto;
  width: auto;
  cursor: pointer;

  /* More styles... */
}
a.anchorButton {
  /* Styles for when it's an <a> */
  text-decoration: none;
}
button.anchorButton {
  /* Styles for when it's a <button> */
  -webkit-appearance: none;
  -moz-appearance: none;
}



/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media ( max-width : 600px) {
	.column1 {
		width: 100%;
	}
}


/* Create three equal columns that floats next to each other */
.column1 {
	float: left;
	width: 33.33%;
	padding: 10px;
	height: 200px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row1:after {
	content: "";
	display: table;
	clear: both;
}

/* Style the footer */



/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media ( max-width : 600px) {
	.column1 {
		width: 100%;
	}
}


</style>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
	<%@include file="header.jsp"%>
<div align="right">
<h2 style=color:red;>Already Registered ?&nbsp;	<a href="Login.jsp" >Login &nbsp;</a>Here</h2>
</div>

<div class="row">
		<div class="column" style="background-color: white;" align="center">
			<img src="2.jpg" height="370" width="600" border="0">
			
		</div>
		<div class="column" style="background-color: white;">
		<section align="center">
<iframe   width="450" height="430"
src="reg11.jsp">
</iframe>
</section> 
		
		</div>
			<div class="column" style="background-color: white;" align="center">
			<img src="3.jpg" height="370" width="600" border="0">
			
		</div>
			<div class="column" style="background-color: white;" align="center">
			<img src="1.jpg" height="370" width="600" border="0">
			
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
