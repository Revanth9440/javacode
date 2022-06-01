<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Employee Registration</h2>
<form action="employeeregistrationdata.jsp" method="post">
<div>name :
<input type="text" name="name" required>
</div><br>
<div>salary :
<input type="text" name="sal" required>
</div><br>
<div>email :
<input type="email" name="email" required>
</div><br>
<div>gender :
<input type="radio" name="gender" value="male">Male
<input type="radio" name="gender" value="female">Female
</div><br>
<div>City :
<input type="text" name="city" required>
</div><br>
<div>
<input type="submit" value="Register">
</div>

</form>
</body>
</html>