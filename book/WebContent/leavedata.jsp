<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String name=request.getParameter("name");
String fdate=request.getParameter("fdate");
String tdate=request.getParameter("tdate");
String reason=request.getParameter("reason");


try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","admin");	
	PreparedStatement ps=con.prepareStatement("insert into leave1(Name, Fromdate, Todate, Reason) values(?,?,?,?)");

	ps.setString(1, name);
	ps.setString(2, fdate);
	ps.setString(3, tdate);
	ps.setString(4, reason);
	
	
int n= ps.executeUpdate();

con.close();
}
catch(Exception e)
{
	e.printStackTrace();
	
}
%>

</body>
</html>