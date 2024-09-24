<html lang="en">
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
                <li><a href="registration.html">Login/Signup</a></li>
            </ul>
            <h1 class="logo">Minimal Clothing</h1>
        </div>
    </nav>
    <div class="wrapper">
      <div class="tabs">
        <button class="navTab active" data-toggle="login">Login</button>
        <button class="navTab" data-toggle="register">Register</button>
      </div>
      <div class="contentWrapper">
        <div class="content active" id="login">
          <form action="#" method="POST" autocomplete="off">
            <div class="formGroup">
              <label for="email">Email address</label>
              <input
                type="email"
                id="email"
                placeholder="name@example.com"
                required
              />
              <small class="messageHelp">
                We'Il never share your email with anyone else
              </small>
              <label for="password">Password</label>
              <input
                type="password"
                id="password"
                placeholder="Password"
                required
              />
              <small class="messageHelp">Password incorrect</small>
              <div>
                <input type="checkbox" id="checkBox" />
                <span>Keep me Signed in</span>
              </div>
              <a href="#" id="passwordReset">Forgot password?</a>
              <button class="btn" type="submit">Login</button>
            </div>
          </form>
        </div>
        <div class="content" id="register">
          <form action="#" method="POST" autocomplete="off">
            <div class="formGroup">
              <label for="username">Username</label>
              <input
                type="text"
                id="username"
                placeholder="Username"
                required
              />
              <label for="email">Email address</label>
              <input
                type="email"
                id="email"
                placeholder="name@example.com"
                required
                title="Enter a valid email address"
              />
              <label for="fullname" class="placeholder">Address</label>
              <input
                type="text"
                id="adddress"
                placeholder="KamalPokhari, Ktm"
                required
                title="insert valid address"
              />
              <label for="Phone" class="placeholder">Phone</label>
              <input
                type="text"
                id="Phone"
                placeholder="987716725367"
                required
                title="insert valid phone number"
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
              <small class="messageHelp">Must be at least 6 characters</small>
              <label for="confirmPassword">Confirm password</label>
              <input
                type="password"
                id="confirmPassword"
                placeholder="Confirm Password"
              />
              <label for="image">Profile Picture</label>
       		 <input type="file" id="image" name="image">
              <small class="messageHelp">Password incorrect</small>
              <button class="btn" type="submit">Register</button>
            </div>
          </form>
        </div>
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