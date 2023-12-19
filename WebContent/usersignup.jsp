<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User signup</title>
</head>
<body>
<center>
<form action="<%=request.getContextPath()%>/usersignup" method="post">
<h1>User Signup</h1>
<input type="text" name="uname" placeholder="Enter the user name" required/>
<br><br>
<input type="email" name="user_id" placeholder="Enter user email is " required/>
<br><br>
<input type="password" name="upass" placeholder="Enter the user password" required/>
<br><br>
<input type="text" name="ucity" placeholder="Enter the user city name" required/>
<br><br>
<input type="tel" name="umob" placeholder="Enter the user mobile number" required/>
<br><br>
<input type="submit" value="Signup"/>

</form>
</center>

</body>
</html>