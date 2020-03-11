
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.nt.dto.PersonDto"%>
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

<body>
	<%@include file="pheader.jsp"%>

<%
PersonDto dto=new PersonDto();

		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
	String	gender = (String) session.getAttribute("gender");
//		String gender = request.getParameter("");
	//	String gender1=request.getParameter(dto.getGender());
		out.println(gender);
		out.println(pass);
		session.setAttribute("gender", gender);
		session.setAttribute("email", email);
		session.setAttribute("pass", pass);
	%>


	<%
		if (session.isNew()) {
			response.sendRedirect("Login.jsp");
		} else {
			response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Expires", "0");

			if (session.getAttribute("email") == null && session.getAttribute("pass") == null)
				response.sendRedirect("Login.jsp");
		}
	%>


	

<div class="row">
	
		<div class="column" style="background-color: white;" align="center">
			<img src="2.jpg" height="370" width="600" border="0">
			
		</div>
		
		<div class="column" style="background-color: white;">
		<section> <iframe width="450" height="350"
		src="search.jsp"> </iframe> </section>		
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