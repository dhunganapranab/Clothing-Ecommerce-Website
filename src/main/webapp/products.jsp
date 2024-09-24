<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>All Products - Minimal Clothing</title>
<script src="https://kit.fontawesome.com/92a010a754.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="product.css">
<link rel="stylesheet" href="nav2.css">
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
            <h1 class="logo">Navbar</h1>
        </div>
    </nav>
    <div>
    	<button class="button-values">All</button>
    	<button class="button-values">All</button>
    	<button class="button-values">All</button>
    	<button class="button-values">All</button>
    </div>
   <div class="small container">
        <div class="row row-2">
        	<h5>Sort Products</h5>
            <select name="" id="select">
                <option>Default Sorting</option>
                <option>Price low to high</option>
                <option>Price high to low</option>
            </select>
        </div>
    </div>
    <%
    
    
    %>
    <div class="products">
        <div class="product-card">
            <div class="product-image">
                <img src="images/product_11.jpg" alt="Product 1">
            </div>
            <div class="product-info">
                <h5 class="product-name">Product 1</h5>
                <p class="product-price">$25.00</p>
                <div class="product-rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <button class="btn">Add to Cart</button>
            </div>
        </div>
                <div class="product-card">
            <div class="product-image">
                <img src="images/product_9.jpg" alt="Product 2">
            </div>
            <div class="product-info">
                <h5 class="product-name">Product 2</h5>
                <p class="product-price">$52.00</p>
                <div class="product-rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <button class="btn">Add to Cart</button>
            </div>
        </div>
                <div class="product-card">
            <div class="product-image">
                <img src="images/product_2.jpg" alt="Product 3">
            </div>
            <div class="product-info">
                <h5 class="product-name">Product 3</h5>
                <p class="product-price">$45.00</p>
                <div class="product-rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <button class="btn">Add to Cart</button>
            </div>
        </div>
                <div class="product-card">
            <div class="product-image">
                <img src="images/product_5.jpg" alt="Product 4">
            </div>
            <div class="product-info">
                <h5 class="product-name">Product 4</h5>
                <p class="product-price">$20.00</p>
                <div class="product-rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <button class="btn">Add to Cart</button>
            </div>
        </div>
                <div class="product-card">
            <div class="product-image">
                <img src="images/product_6.jpg" alt="Product 5">
            </div>
            <div class="product-info">
                <h5 class="product-name">Product 5</h5>
                <p class="product-price">$25.00</p>
                <div class="product-rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <button class="btn">Add to Cart</button>
            </div>
            
        </div>
        <div class="product-card">
            <div class="product-image">
                <img src="images/product_7.jpg" alt="Product 5">
            </div>
            <div class="product-info">
                <h5 class="product-name">Product 5</h5>
                <p class="product-price">$25.00</p>
                <div class="product-rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <button class="btn">Add to Cart</button>
            </div>
            
            
        </div>
        <div class="page-btn">
        <span>1</span>
        <span>2</span>
        <span>3</span>
        <span>4</span>
        <span>&#8594;</span>
        
        </div>
         </div>
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
<scriipt type="text/javascript" src="sort.js"></scriipt>