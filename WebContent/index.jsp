
<%@page import="model.LoginSelect"%>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/main.js"></script>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%	
	if (request.getParameter("userName") == null) {		
	}else{
		if(request.getParameter("loginVal") == ""){
			LoginSelect loginSelect = new LoginSelect();
			String s1 = request.getParameter("userName");
			String s2 = request.getParameter("password");
			System.out.println("Log in attributes : "+s1+" "+s2);
			
			if(loginSelect.loginVal(s1, s2) == 1){
				response.sendRedirect("http://localhost:8085/Hospital/Hospital_Insert.jsp");			
			}else{
				response.sendRedirect("index.jsp");
				System.out.println("Login failed..............");
			}
			
		}
	}
    
%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Login</title>
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<style>
html, body {
	display: flex;
	justify-content: center;
	font-family: Roboto, Arial, sans-serif;
	font-size: 15px;
}

form {
	border: 187px solid #f1f1f1;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 16px 8px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #8ebf42;
	color: white;
	padding: 14px 0;
	margin: 10px 0;
	border: none;
	cursor: grabbing;
	width: 100%;
}

h1 {
	text-align: center;
	fone-size: 18;
}

button:hover {
	opacity: 0.8;
}

.formcontainer {
	text-align: left;
	margin: 24px 50px 12px;
}

.container {
	padding: 16px 0;
	text-align: left;
}

span.psw {
	float: right;
	padding-top: 0;
	padding-right: 15px;
}
/* Change styles for span on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
}
</style>
</head>
<body>
	<form id="loginform" name="loginform" method="post" action="index.jsp">
		<h1>Admin Login</h1>
		<div class="formcontainer">
			<hr />
			<div class="container">
				<label for="uname"><strong>Username</strong></label> <input
					type="text" id="userName" name="userName" type="text"
					class="form-control form-control-sm" placeholder="Enter Username"
					name="uname" required> <label for="psw"><strong>Password</strong></label>
				<input type="password" id="password" name="password" type="text"
					class="form-control form-control-sm" placeholder="Enter Password"
					name="psw" required>
			</div>
			<input id="btnLogin" name="btnLogin" type="submit" value="Login"
				class="btn btn-primary" style="background-color: #26ef09; border: 33px; margin-left: 190px; height: 43px; width: 96px;"> 
				 <input type="hidden" id="loginVal"	name="loginVal" value="">
	</form>
</body>
</html>