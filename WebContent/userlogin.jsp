<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user login</title>
</head>
<body>
<center>
<form action="<%=request.getContextPath()%>/userlogin" method="post">
<h1>User Login</h1>
<input type="email" name="uid" placeholder="Enter the user id " required="required">
<br><br>
<input type="password" name="upass" placeholder="Enter the password" required/>
<br><br>
<input type="submit" value="Login"/>

</form>

</center>

</body>
</html>