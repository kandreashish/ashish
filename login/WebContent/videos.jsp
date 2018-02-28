<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<link rel="stylesheet" type="text/css" href=style.css>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
 response.setHeader("Cache-Control","no-cache");
 response.setHeader("Cache-Control","no-store");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader ("Expires", 0);
if(session.getAttribute("uname")== null)
{
	response.sendRedirect("index.jsp?login first");
}
%>
<div id=video>
<iframe width="560" height="315" src="https://www.youtube.com/embed/gQLQ0t9B5yk"></iframe>
<br>
<form action="Logout">
<input type="submit" value=logout>
</form>
</div>
<body>
</body>
</html>