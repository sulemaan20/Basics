<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
<head>
  <head>
        <title>TODO supply a title</title>
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
	height:600px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Style the footer */
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: darkcyan;
   color: white;
   text-align: center;
}

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
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
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
</style>
</head>
<body>
<%@include file="header.jsp"%>
<div class="row">
  <div class="column" style="background-color:white;">
  <img alt="" src="thinklogo.jpeg" height="20%" width="30%">
  <br>
<p>		Today’s world is routed to the way of Artificial Intelligence and 
Advanced Technology. To reach those lines, our Think75 application acts an
 information wall between Employer and Job seeker.

Basically, the candidate skills are assessed generally for getting 
an admission into schools, 
colleges, and organizations. This analysis concept has become more refined now. It is set to beat the usual process of communication skills, technology standard, and knowledge
 as these factors have become the regular part of an interview.
Think75 works on a social and psychological behavior of a candidate that
 impacts to greater extent in working for the product either be it in any 
 field. There is an authentic selection method here that provides a smooth
  & better resource to the organization.
	</p>	
	<h3 style="color:red;">Highlights:</h3>
<p>
Automatic search options for candidate assessment<br>
Customization of tools to evaluate each module<br>
Upcoming schedule alerts<br>
Random questionnaire for each selected module<br>
Vast Selection options for the subjects or areas of assessment<br>
 </p>
	
	</div>
  <div class="column" style="background-color:white;">
  <img src="about.jpg" height="528" width="628" border="0">
</div>#

  </div>



</body>
</html>