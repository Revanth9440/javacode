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
String s=request.getParameter("val");  
if(s==null || s.trim().equals(""))
{  
out.print("Please enter id");  
}
else
{  
int id=Integer.parseInt(s);  
try
{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecleaning","root","admin");  
PreparedStatement ps=con.prepareStatement("select * from addservices where id=?");  
ps.setInt(1,id);  
ResultSet rs=ps.executeQuery();  
while(rs.next())
{  
out.print(rs.getString(2)+" "+rs.getString(3));  
}  
con.close();  
}
catch(Exception e)
{
	e.printStackTrace();
}  
}  
%>  

</body>
</html>