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
String bname=request.getParameter("name");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","admin");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select bname from book1 where bname like '%"+bname+"' ");
	int count=0;
	while(rs.next()) 
	{
		count++;
		out.println(rs.getString("bname"));
		out.println("----------------------------------");
		out.println("<br>");
	}
	if(count==0) 
	{
		out.println("no records found");
	}
	
	st.close();
	st.close();
	con.close();
	
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>