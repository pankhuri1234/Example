<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee details</title>
</head>
<body bgcolor="sky blue">
<center>
<form action="empdata.jsp" method="post">
<h1>Employee Details</h1>
<input type="text" name="emp_name" placeholder="Enter employee name" required />
<br><br>
<input type="text" name="emp_address" placeholder="Enter employee address" required/>
<br><br>
<input type="email" name="emp_email" placeholder="Enter the employee email" required/>
<br><br>
<input type="tel" name="emp_mob" placeholder="Enter employee mobile number " required/>
<br><br>
<input type="number" name="emp_salary" placeholder="Enter employee salary"required />
<br><br>
<input type="submit" value="submit"/>
</form>
</center>
</body>
</html>