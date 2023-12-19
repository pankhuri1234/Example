<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin login</title>
</head>
<body>
<center>
<form action="<%=request.getContextPath()%>/adminlogin" method="post">
<h1>Admin Login</h1>
<input type="email" name="aid" placeholder="Enter the admin id " required="required">
<br><br>
<input type="password" name="apass" placeholder="Enter the admin password" required/>
<br><br>
<input type="submit" value="Login"/>

</form>

</center>

</body>
</html>