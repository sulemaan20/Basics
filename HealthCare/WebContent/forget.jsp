<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<h1 style="color:red;text-align:center;">Forget password</h1>
	<form action="send" method="post">
		<table align="center">
			<tr>
				<td>Username:</td>
				<td><input type="email" name="to" required="required"/><br /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Send" /></td>
			</tr> 
		</table>
	</form>
</body>
</html>