<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Available employees </h1>

<a href="addemployeepage.jsp">Add Employees</a><br><br>
<form action="index.jsp" method="post">
<div>Enter Name To Search :
<input type="text" name="name" required>
<input type="submit" value="search"></div>
</form><br>
<a href="index.jsp">All Employees</a><br><br>
<%@ include file="connect.jsp" %>
<%
try
{

	String sql="";
	if(request.getMethod().equalsIgnoreCase("POST"))
	{
		String name=request.getParameter("name");
		Statement st1=con.createStatement();
		ResultSet rs1=st1.executeQuery("select * from employee where name='"+name+"'");
		int count1=0;
		out.println("<table border='1'>");
		out.println("<tr>"+"<th>"+"Id"+"</th>"+"<th>"+"Name"+"</th>"+"<th>"+"Salary"+"</th>"+"<th>"+"Email"+"</th>"+"<th>"+"Gender"+"<th>"+"City"+"</th>"+"</tr>");
		
		while(rs1.next()) 
		{
			count1++;
			out.println("<tr>");
			out.println("<td>"+rs1.getInt(1)+"</td>"+"<td>"+rs1.getString(2)+"</td>"+"<td>"+rs1.getString(3)+"<td>"+rs1.getString(4)+"</td>"+"<td>"+rs1.getString(5)+"</td>"+"<td>"+rs1.getString(6)+"</td>");
		
			out.println("</tr>");
		}
		
		if(count1==0) {
			
			out.println("<tr>");
			out.println("<td style='text-align:center' colspan='6'>"+"No Records Found"+"</td>");
		
			out.println("</tr>");
			
		}
		out.println("</table>");
	}
	else
	{
		sql="select * from employee";
	
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(sql);
	int count=0;
	out.println("<table border='2'>");
	out.println("<tr>"+"<th>"+"Id"+"</th>"+"<th>"+"Name"+"</th>"+"<th>"+"Salary"+"</th>"+"<th>"+"Email"+"</th>"+"<th>"+"Gender"+"<th>"+"City"+"</th>"+"</tr>");
	
	while(rs.next()) 
	{
		count++;
		out.println("<tr>");
		out.println("<td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(3)+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getString(5)+"</td>"+"<td>"+rs.getString(6)+"</td>");
	
		out.println("</tr>");
	}
	out.println("</table>");
	
	
	if(count==0) {
		System.out.println("no records found");
	}
	
	st.close();
	st.close();
	con.close();
	}
	
	
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>