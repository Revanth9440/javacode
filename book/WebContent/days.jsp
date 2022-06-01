<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.util.Date" import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","admin");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from leave1");
	int count=0; 
	while(rs.next()) 
	{
		String date1=rs.getString(3);
		String date2=rs.getString(4);
			
		SimpleDateFormat d1=new SimpleDateFormat("dd/MM/yyyy");
		Date date3=d1.parse(date1);
		Date date4=d1.parse(date2);
		
		long diff=date4.getTime()-date3.getTime();
		
		out.println(diff / 1000 / 60 / 60 / 24);
		
%>


<%
		
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>