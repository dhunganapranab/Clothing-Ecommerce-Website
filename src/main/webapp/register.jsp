<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    



<!-- 

<!DOCTYPE html>
<html>
<head>
	<title>Registration Page</title>
</head>
<script src="https://kit.fontawesome.com/92a010a754.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="nav2.css">
	
	
<body>
<input type="hidden" id ="status" 
  value ="
  
  
  <nav class="navbar">
        <div class="navbar-container container">
            <input type="checkbox" name="" id="">
            <div class="hamburger-lines">
                <span class="line line1"></span>
                <span class="line line2"></span>
                <span class="line line3"></span>
            </div>
             <ul class="menu-items">
                <li><a href="index.html">Home</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="product.html">Products</a></li>
                <li><a href="testimonial.html">Testimonial</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a href="register.jsp">Signup</a></li>
                <li><a href="login.jsp">Login</a></li>
            </ul>
            <h1 class="logo">Minimal Clothing</h1>
        </div>
    </nav>
  
	<h1>Registration Form</h1>
	<form method="post" action="RegistrationServlet">
		<label for="first_name">First Name:</label>
		<input type="text" id="first_name" name="first_name" required><br><br>
		<label for="last_name">Last Name:</label>
		<input type="text" id="last_name" name="last_name" required><br><br>
		<label for="username">Username:</label>
		<input type="text" id="username" name="username" required><br><br>
		<label for="password">Password:</label>
		<input type="password" id="password" name="password" required><br><br>
		<input type="submit" value="Register">
		<a href="index.jsp">home</a>
	</form>
	
	
	<script type = "text/javascript">
		var status = document.getElementById("status").value;
		if(status =="alreadyexists"){
			alert("Username already exists");
		}
		if(status =="usernameLess"){
			alert("Username length must be more than 4");
		}
		if(status =="passwordLess"){
			alert("Password length must be more than 6");
		}
	
	</script>
</body>
</html>
-->
 
 
<!DOCTYPE html>
<html>
<head>
	<title>Register</title>

	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
		}

		h1 {
			text-align: center;
			margin-top: 50px;
			margin-bottom: 50px;
		}

		form {
			margin: auto;
			max-width: 500px;
			padding: 20px;
			background-color: #fff;
			border-radius: 5px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
		}

		label {
			display: block;
			margin-bottom: 10px;
			font-weight: bold;
		}

		input[type="text"], input[type="password"], input[type="file"] {
			display: block;
			width: 100%;
			padding: 10px;
			border-radius: 5px;
			border: 1px solid #ccc;
			margin-bottom: 20px;
		}

		input[type="submit"] {
			background-color: #4CAF50;
			color: #fff;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		}

		input[type="submit"]:hover {
			background-color: #3e8e41;
		}
	</style>
</head>
<body>
<input type="hidden" id ="status" 
  value ="<%=request.getAttribute("status") %>">
  
  
  
	<h1>Register</h1>
	<form name="registerForm" action="register" method="POST" ">
		<label>First Name:</label>
		<input type="text" name="first_name" required>

		<label>Last Name:</label>
		<input type="text" name="last_name" required>

		<label>Username:</label>
		<input type="text" name="username" required>

		<label>Password:</label>
		<input type="password" name="password" required>

		<label>Profile Image:</label>
		<input type="file" name="image" accept="image/*">

		<input type="submit" value="Register">
	</form>
	
	
	<script type = "text/javascript">
		var status = document.getElementById("status").value;
		if(status =="alreadyExists"){
			alert("Username already exists");
		}
		if(status =="invalidpassword"){
			alert("Wrong Username or Password");
		}
		if(status =="passwordLess"){
			alert("Password must be more than 6");
		}
	
	
	</script>
</body>
</html>
</body>
</html>


<%-- <html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar</title>
    <script src="https://kit.fontawesome.com/92a010a754.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
     <link rel="stylesheet" href="registration.css">
    
</head>
<body>
<input type="hidden" id ="status" 
  value ="<%=request.getAttribute("status") %>">

    <nav class="navbar">
        <div class="navbar-container container">
            <input type="checkbox" name="" id="">
            <div class="hamburger-lines">
                <span class="line line1"></span>
                <span class="line line2"></span>
                <span class="line line3"></span>
            </div>
             <ul class="menu-items">
                <li><a href="index.html">Home</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="product.html">Products</a></li>
                <li><a href="testimonial.html">Testimonial</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a href="register.jsp">Signup</a></li>
                <li><a href="login.jsp">Login</a></li>
            </ul>
            <h1 class="logo">Minimal Clothing</h1>
        </div>
    </nav>
    <div class="wrapper">
      <div class="tabs">
        <button class="navTab active" data-toggle="register">Register</button>
      </div>   
        <div class="content active" id="register">
          <form action="#" method="POST" autocomplete="off">
            <div class="formGroup">
             <label for="first_name">first_name</label>
              <input
                type="text"
                id="first_name"
                placeholder="first_name"
                required
              /> 
               <label for="last_name">last_name</label>
              <input
                type="text"
                id="last_name"
                placeholder="last_name"
                required
              /> 
              
              <label for="username">Username</label>
              <input
                type="text"
                id="username"
                placeholder="username"
                required
              /> 
              <small class="messageHelp">
                Enter a valid email address
              </small>
              <label for="password">Password</label>
              <input
                type="password"
                id="password"
                placeholder="Password"
                required
                title="Must be at least 6 characters"
              />
              <label for="image">Profile Picture</label>
       		 <input type="file" id="image" name="image">
              <small class="messageHelp">**Password incorrect**</small>
              <button class="btn" type="submit">Register</button>
            </div>
          </form>
        </div>
    </div>
    <script>
    const tabs = document.querySelector(".tabs");
    const tabButton = document.querySelectorAll(".navTab");
    const content = document.querySelectorAll(".content");

    tabs.addEventListener("click", e => {
    	const id = e.target.dataset.toggle;
    	if (id) {
    		tabButton.forEach(navTab => {
    			navTab.classList.remove("active");
    		});
    		e.target.classList.add("active");
    	}
    	content.forEach(content => {
    		content.classList.remove("active");
    	});

    	const element = document.getElementById(id);
    	element.classList.add("active");
    });
    
    
    </script>
    <aside>
		<h4>Minimal Clothing</h4>
		<h5>Clothing Venture</h5>
	</aside>

	<footer>
		<p class="cells">Kamal Pokhari, Kathmandu</p>
    	<p class="cells"><a href="https://www.google.com/gmail/about/">bussiness_minimal@gmail.com</a></p>
		<p class="cells">Open 6am-9pm</p>
    	<p class="cells"><a href="Url Here">minimalclothing.com</a></p>  
	</footer>
	

</body>
</html>
 --%>
