<%@page import="com.nt.dto.PersonDto"%>
<%@ page
	import="java.io.*,javax.servlet.*,java.sql.*,javax.servlet.http.* "%>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%-- 	pageEncoding="ISO-8859-1"%> --%>
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
<body bgcolor="silver">
	<%@include file="pheader.jsp"%>
	<%!String imge = null;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String email = null;
	String name = null;
	int age = 0;
	String qualification = null;
	String religon = null;
	String tongue = null;
	String gender = null;
	String gender1 = null;
	String pftype = null;
	int mnumber = 0;
	String adds = null;
	String occup = null;
	String hobbies = null;
	int income = 0;
	String cost = null;
	String state = null;
	String country = null;
	String marital = null;
	String Firka = null;
	double height = 0;
	double weight = 0;
	boolean k = false;
	String pass = null;
	String gn = null;%>


	<%
		try {
			PersonDto pdto = new PersonDto();
			religon = request.getParameter("religion");
			tongue = request.getParameter("tongue");
			qualification = request.getParameter("quly");
			age = Integer.parseInt(request.getParameter("age"));

			email = (String) session.getAttribute("email");
			pass = (String) session.getAttribute("pass");
			gender = (String) session.getAttribute("gender");
			out.println("gender=" + gender+ "<br>");
			// 			out.println("tongue=" + tongue);
			// 			out.println("age=" + age);
			// 			out.println("quly=" + qualification);

			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "root");
			ps = con.prepareStatement(
					"select name ,age,quly,religion,tounge,gender,pfname,mno,adds,occup,hobbies,income,cast,state,country,marital,firka,height,weight,pic from baraat where religion=? or age=? or tounge=? or quly=?");
			ps.setString(1, religon);
			ps.setInt(2, age);
			ps.setString(3, tongue);
			ps.setString(4, qualification);
			//	ps.setString(5, gender);
			rs = ps.executeQuery();
	%>

	<%
		while (rs.next()) {
				//gender mean who are login male or female
				int male = 0;
				int female = 0;
			//	out.println(rs.getString(1));
				
				if (gender.contains("M")) {
					System.out.println("gender.contains(M)");
				
					//System.out.println("gender male " + male);
				//	System.out.println("gender female " + female);
					female++;
					
					if(female>0){
						System.out.println("gender female " + female);
						out.println(rs.getString("gender"));
						out.println("<br>");
						out.println(rs.getString("name"));
						out.println("<br>");
						out.println(rs.getString("adds"));
						}else{
							return ;
// 							System.out.println("gender female " + male);
// 							out.println(rs.getString("gender"));
						}
// 					name = rs.getString(1);
// 					age = rs.getInt(2);
// 					qualification = rs.getString(3);
// 					religon = rs.getString(4);
// 					tongue = rs.getString(5);
// 					gender = rs.getString(6);
// 					pftype = rs.getString(7);
// 					mnumber = rs.getInt(8);
// 					adds = rs.getString(9);
// 					occup = rs.getString(10);
// 					hobbies = rs.getString(11);
// 					income = rs.getInt(12);
// 					cost = rs.getString(13);
// 					state = rs.getString(14);
// 					country = rs.getString(15);
// 					marital = rs.getString(16);
// 					Firka = rs.getString(17);
// 					height = rs.getDouble(18);
// 					weight = rs.getDouble(19);

// 					imge = rs.getString("pic");
// 	%> 
<!-- 	<br> -->

<!-- 	<h2 style="color: reg; text-align: center;">Search Details</h2> -->
<!-- 	<table border=0; align="center" bgcolor="white"> -->
<!-- 		<tr> -->
<!-- 			<td><label>Profile Photo</label></td> -->
<!-- 			<td><div> -->
<!-- 					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 					&nbsp;&nbsp;&nbsp; <img src="image/<%=imge%>" height="170" --%>
<!-- 						width="135" border="0"> -->
<!-- 				</div></td> -->
<!-- 			<td><label>Name</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;:<%=name%></td> --%>
<!-- 			<td><label>Profile type</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;:<%=pftype%></td> --%>
<!-- 		</tr> -->

<!-- 		<tr> -->
<!-- 			<td><label>Age</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;:<%=age%></td> --%>
<!-- 			<td><label>Qualification</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;:<%=qualification%></td> --%>
<!-- 			<td><label>Religion</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;:<%=religon%></td> --%>
<!-- 		</tr> -->

<!-- 		<tr> -->
<!-- 			<td><label>Tongue</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;:<%=tongue%></td> --%>

<!-- 			<td><label>Gender</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;:<%=gender%></td> --%>

<!-- 			<td><label>Mnumber</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;:<%=mnumber%></td> --%>
<!-- 		</tr> -->

<!-- 		<tr> -->
<!-- 			<td><label>Occuption</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;:<%=occup%></td> --%>
<!-- 			<td><label>Hobbies</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;:<%=hobbies%></td> --%>
<!-- 			<td><label>Address</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;:<%=adds%></td> --%>
<!-- 		</tr> -->

<!-- 		<tr> -->
<!-- 			<td><label>Sub Cost</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=cost%></td> --%>
<!-- 			<td><label>State</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=state%></td> --%>
<!-- 			<td><label>Country</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=country%></td> --%>
<!-- 		</tr> -->

<!-- 		<tr> -->
<!-- 			<td><label>Marital</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=marital%></td> --%>
<!-- 			<td><label>Firka</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=Firka%></td> --%>
<!-- 			<td><label>Weight</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=weight%></td> --%>
<!-- 		</tr> -->

<!-- 		<tr> -->
<!-- 			<td><label>Height</label></td> -->
<!-- 			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<%-- 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=height%></td> --%>
<!-- 		</tr> -->
<!-- 	</table> -->
	
	<%
		} else if (gender.contains("F")) {
			System.out.println("gender.contains (F) ");
					male++;
					if(male>0){
						out.println(rs.getString("gender"));
						out.println(rs.getString("name"));
						out.println(rs.getString(1));
						//out.println(rs.getString("adds"));
					}else{
						return;
// 						System.out.println("gender female " + female);
// 						out.println(rs.getString("gender"));
					}
				}
				

			}	//while
		} //try
		catch (Exception xe) {
			xe.printStackTrace();
		}
	%>
	<br>
	<div class="footer">
		<i style="color: white;"> &copy; copyright2018 <br> ABOUTUS |
			Employability Quantified| Employability Assessment Test | Aptitude
			Test in India2018 © All rights reserved Aspiring Minds Assessment
			Pvt. Ltd
		</i><br> Navigate Home Sign In/Register Jobs Internships Newsletter
		Archive About Us Contact Us Think Certification Think Syllabus Think
		Sample Papers <br> FAQs Press/Media Is Think for me? Testimonials
		Aptitude Tests for Jobs Think Blog Term And Conditions<br>
	</div>

</body>
</html>
