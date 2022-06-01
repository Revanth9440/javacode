<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="source.jsp" method="post">
<div>
Book Name :
<input type="text" name="bookname"/>
</div><br>
<div>
Book author name :
<input type="text" name="name"/>
</div><br>
<div>
Book price :
<input type="text" name="price"/>
</div><br>
<div>
Book publishing year :
<input type="text" name="year"/>
</div><br>

<div>
<input type="submit" value="Add"/>
</div>

<div>
<a href="search.jsp">search</a>
</div>

<div>
<a href="leave.jsp">leave</a>
</div>



</form>
</body>
</html>