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
try {
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","admin");	
	PreparedStatement ps=con.prepareStatement("delete from book1 where bid=?");
	ps.setInt(1, id);  
	
	
	int n= ps.executeUpdate();   
	
	
}
catch(Exception e) {
	e.printStackTrace();
}  
%>
</body>
</html>