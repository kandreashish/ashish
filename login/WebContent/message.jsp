<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<script type=text/javascript src="validate.js"></script>
<title>home page</title>
<head>
<%
response.setHeader("Cache-Control","must revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 50);
	if (session.getAttribute("uname")== null) 
	{
		response.sendRedirect("index.jsp?login first");
	}
%>
<link rel=stylesheet type="text/css" href="style1.css">
</head>

<header>
<% String uname1 = (String) session.getAttribute("uname"); %>
<h1>
	This is
	<%=uname1%>
	page
</h1>
</header>
<body>
	<div class=UserDetails>
		<p>what can i say, this is my first project given by my friend</p>
	</div>
	<div class=logout>
		<form action="videos.jsp">
			<input id="vid" type="submit" value="videos">
		</form>
		<form action="Logout" method="get">
			<input type="submit" value="logout">
		</form>
	</div>
</body>
</html>