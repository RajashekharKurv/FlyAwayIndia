<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    
</head>
<body>
<h1 style ="color:white"> FlyAway </h1>>

	<div>
	    <a href="index.jsp" target="_blank">Home</a>
	    <a href="admin.jsp">AdminLogin</a>
	    <a href="login.html" target="_blank">UserLogin</a>
	</div>

<div class="container">
    <h1> Admin Login</h1>
    <form action="AdminLoginServlet" >
        
    UserName: <input type="text" name="username" placeholder="raja24"> <br> 
    Password : <input type="password" name="password" id="password" placeholder="******"> <br> 
    <button type="submit" class="signinbtn">Sign in</button>
    </form>
   
 </div>
</body>
</html>