<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="connect.jsp" %>
<%
String name=request.getParameter("name");
double sal=Double.parseDouble(request.getParameter("sal"));
String email=request.getParameter("email");
String gender=request.getParameter("gender");
String city=request.getParameter("city");

try
{
	
PreparedStatement ps=con.prepareStatement("insert into employee(name, salary, email, gender, city) values(?,?,?,?,?)");

	ps.setString(1, name);
	ps.setDouble(2, sal);
	ps.setString(3, email);
	ps.setString(4, gender);
	ps.setString(5, city);
	
	
int n= ps.executeUpdate();
if(n==1)
{
	out.println("records inserted");

}
else
	out.println("records not inserted");

con.close();
}
catch(Exception e)
{
	e.printStackTrace();
	
}
%>
</body>
</html>