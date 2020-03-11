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
	String pass = null;%>
	<%
		try {
			email = (String) session.getAttribute("email");
			pass = (String) session.getAttribute("pass");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "root");
			ps = con.prepareStatement(
					"select name ,age,quly,religion,tounge,gender,pfname,mno,adds,occup,hobbies,income,cost,state,country,marital,firka,height,weight,pic from person_reg where email=? and pass=?");
			ps.setString(1, email);
			ps.setString(2, pass);
			rs = ps.executeQuery();
	%>

	<%
		while (rs.next()) {
			if(k==false){
				name = rs.getString(1);
				age = rs.getInt(2);
				qualification = rs.getString(3);
				religon = rs.getString(4);
				tongue = rs.getString(5);
				gender = rs.getString(6);
				pftype = rs.getString(7);
				mnumber = rs.getInt(8);
				adds = rs.getString(9);
				occup = rs.getString(10);
				hobbies = rs.getString(11);
				income = rs.getInt(12);
                cost=rs.getString(13);
                state=rs.getString(14);
                country=rs.getString(15);
                marital=rs.getString(16);
                Firka=rs.getString(17);
                height=rs.getDouble(18);
                weight=rs.getDouble(19);
				imge = rs.getString("pic");
	%>
	<br>

	<h2 style="color: red; text-align: center;">Person Profile</h2>
	</hr>
	<table border=0; align="center" bgcolor="white">
		<tr>
			<td><label>Profile Photo</label></td>
			<td><div>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<img
						src="image/<%=imge%>" height="170" width="135">
				</div></td>
			<td><label>Name</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=name%></td>
			<td><label>Profile type</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=pftype%></td>
		</tr>

		<tr>
			<td><label>Age</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=age%></td>
			<td><label>Qualification</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=qualification%></td>
			<td><label>Religion</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=religon%></td>
		</tr>

		<tr>
			<td><label>Tongue</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=tongue%></td>
			<td><label>Gender</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=gender%></td>
			<td><label>Mnumber</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=mnumber%></td>
		</tr>

		<tr>
			<td><label>Hobbies</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=hobbies%></td>
			<td><label>Address</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=adds%></td>
			<td><label>Sub Cost</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=cost%></td>
		</tr>

		<tr>
			<td><label>State</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=state%></td>
			<td><label>Country</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=country%></td>
			<td><label>Marital</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=marital%></td>
		</tr>

		<tr>
			<td><label>Firka</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=Firka%></td>
			<td><label>Weight</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=weight%></td>
			<td><label>Height</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=height%></td>
		</tr>

		<tr>
			<td><label>Occuption</label></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=occup%></td>
		</tr>
	</table>

	<%
			}
			else{
				out.println();
			}
		}
		} catch (Exception xe) {
			xe.printStackTrace();
		}
	%>
	<br>
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