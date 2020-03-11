
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>



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
	width: 90px;
	background-color: Green;
}

input[type=reset] {
	height: 40px;
	width: 90px;
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
	background-color: #008B8B;
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



/* Style the header */
.header {
	background-color: #f1f1f1;
	padding: 30px;
	text-align: center;
	font-size: 35px;
}

</style> 



</head>
<body>

<div class="navbar">
		<h3 Style=color:#FFFAFA;text-align:center:><b>Person Page</b></h3>
		<hr>
	
		<a href="view2.jsp">Profile</a>
		<div class="dropdown">
			<button class="dropbtn">
				Person <i class=></i>
			</button>
			<div class="dropdown-content">
				<a href="profileupdate.jsp">Update Profile</a> <a
					href="pdelete.jsp">Delete</a> <a href="pupdate.jsp">Change
					Password</a> 
								</div>
		</div>
		<a href="security.html">Security</a>
		
 <a href="about.jsp" >Aboutus</a>
 <div style="float:right;">
 <a href="plogout" style=align;center;>Logout</a>
 </div>
	</div>
			
		
</body>
</html>