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
int id=Integer.parseInt(request.getParameter("Id"));

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","admin");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from book1 where bid="+id);
	int count=0; 
	while(rs.next()) 
	{
		int id1=rs.getInt(1);
		String bname1=rs.getString(2);
		String author1=rs.getString(3);
		float price1=rs.getFloat(4);
		int year1=rs.getInt(5);
		

		
%>

<form action="update.jsp" method="post">
<div>
Book id :
<input type="text" name="id" value="<%=id1 %>" readonly><br>
</div><br>
<div>
Enter name :
<input type="text" name="bname" value="<%=bname1 %>">
</div><br>
<div>
Enter author Name:
<input type="text" name="name" value="<%=author1 %>"></div><br>
<div>
Enter price:
<input type="text" name="price" value="<%=price1 %>"></div><br>
<div>
Enter year:
<input type="text" name="year" value="<%=year1 %>"></div><br>

<div>
<input type="submit" value="update"/>
</div>

<%
		
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</form>
</body>
</html>