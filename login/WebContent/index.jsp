<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<title>login form</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel=stylesheet type="text/css" href="style\style.css">
<script type="text/javascript" src="script\function.js"></script>

</head>
 <div class="inform" >
        <h1>My Page is free and always will be like Facebook with connecting people</h1>
        <img src="GwFs3_KxNjS.png" class="brotherhood" title="ashish" alt="smiley">
        
    </div>
   <%
        String u3 = request.getParameter("logout");
        if(u3!=null)
        {
        %>
        <p id="erro"  style=left:50% >logout successful</p>
        <%
        }
        %>
<header id=head>
        <h1>welcome to Login page</h1>
 </header>
              <div id="main" class="loginbox">
                <img src="smiley1.png" alt="avator" title="ashish" class="avatar2">
                <marquee direction="left" behavior="alternate" ><h1>Login Here</h1></marquee>
                <form action="Loginser" onsubmit="return validation();" onclick="get();" method="post">
                    <label class="tit"for="username">UserName</label><br>
                    <%
                    String u = request.getParameter("usernam");
                    if(u!=null)
                    {
                    %>
                    <p id="erro">wrong username</p>
                    <%
                    }
                    %>
                    <input id="username" type="text" id="Username" name="uname" title="Enter Username" placeholder="Enter UserName" ><br>
                    <label class="tit"for="password">Password</label>
                    <%
                    String u2 = request.getParameter("passwor");
                    if(u2!=null)
                    {
                    %>
                    <p id="erro">wrong password</p>
                    <%
                    }
                    %><br>
                    <input type="password"id="password" name="pass" placeholder="password" title="Enter password" required>
                    <br>
                    <button type="submit" title="login">Login</button><br>
                    <a href="">Forgot password</a><br>
                    <a href="signup1.jsp">Don't have an account</a>
                 </form>
                </div>
</html>