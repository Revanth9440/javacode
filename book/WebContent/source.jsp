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
String bname=request.getParameter("bookname");
String aname=request.getParameter("name");
float price=Float.parseFloat(request.getParameter("price"));
int year=Integer.parseInt(request.getParameter("year"));


try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","admin");	
	PreparedStatement ps=con.prepareStatement("insert into book1(bname, bauthor, bprice, byear) values(?,?,?,?)");

	ps.setString(1, bname);
	ps.setString(2, aname);
	ps.setFloat(3, price);
	ps.setInt(4, year);
	
	
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