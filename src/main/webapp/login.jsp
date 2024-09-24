  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
		body {
			background-color: #f1f1f1;
		}
		.container {
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
		}
		.form-container {
			background-color: #fff;
			padding: 20px;
			box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
			width: 400px;
			text-align: left;
		}

		label {
			margin-left: 10px;

		}

		h2 {
			text-align: center;
			margin-top: 50px;
			margin-bottom: 50px;
			}

		input[type=text], input[type=password] {
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			box-sizing: border-box;
			border-radius: 4px;
		}
		button {
			background-color: #4CAF50;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			width: 100%;
		}
		button:hover {
			background-color: #45a049;
		}
	</style>
</head>
<body>
<input type="hidden" id ="status" 
  value ="<%=request.getAttribute("status") %>">
	<div class="container">
		<div class="form-container">
			<h2>Login Form</h2>
			<form action="LoginServlet" method="post">
				<label for="username">Username</label>
				<input type="text" id="username" name="username" placeholder="Enter your username" required >
				<label for="password">Password</label>
				<input type="password" id="password" name="password" placeholder="Enter your password" required>
				<button type="submit">Login</button>
			</form>
			<a href= "register.jsp" >Go to register</a>
		</div>
	</div>
	
	
	
	
	
	<script type = "text/javascript">
		var status = document.getElementById("status").value;
		if(status =="failed"){
			alert("Wrong Username or Password");
		}
		if(status =="userAdded"){
			alert("user successfully added");
		}
	
	</script>
</body>
</html>