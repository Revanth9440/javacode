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
int id=Integer.parseInt(request.getParameter("id"));
String bname=request.getParameter("bname");
String bauthor=request.getParameter("name");
float price=Float.parseFloat(request.getParameter("price"));
int year=Integer.parseInt(request.getParameter("year"));
try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","admin");	
	PreparedStatement ps=con.prepareStatement("update book1 set  bname=?, bauthor=?, bprice=?, byear=? where bid=?");

	ps.setString(1, bname);
	ps.setString(2, bauthor);
	ps.setFloat(3, price);
	ps.setInt(4, year);
	ps.setInt(5, id);
	
		
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