<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" %>
<%@ page import="java.util.regex.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">

<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="Keywords" content="html, css, html tables, table">
    <meta name="Description" content="html table">
    <!-- add icon -->
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
        <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>UPDATE NOTICE BOARD</title>
</head>
<body>
<nav>
	<div class="login-main-text">
		<h1>
			Student Portal <img
				src="${pageContext.request.contextPath}/resources/image/logo.jpg"
				height="50" width="50" class="img1" />
			<ul>
				<a href="File.jsp"><button class="btn btn-black">Home</button></a>
				<a href="Admin"><button class="btn btn-black">Admin</button></a>
				<a href="File.jsp"><button class="btn btn-black">Login</button></a>

			</ul>
		</h1>
	</div>
	</nav>

<h4>Admin Panel</h4>

		<div class="sidebar">
			<header>MENU</header>
			<ul>
				<li><a href="Admin"><i class="fas fa-qrcode"></i>STUDENT'S DATA</a></li>
				<li><a href="marks"><i class="fas fa-link"></i>STUDENT MARKS</a></li>
				<li><a href="#"><i class="fas fa-calendar-week"></i>UPDATE NOTICE</a></li>
				<li><a href="logout"><i class="fas fa-calendar-week"></i>LOGOUT</a></li>
			</ul>
		</div>
		
		
		
<div class="main-notice">
			<h3>PLEASE ADD THE NOTICES TO BE DISPLAYED :</h3>
			<form:form name="myform2" action="save2" modelmethod="post" onsubmit="return validateform()">
			Notice 1 :
			<form:label path="notice"></form:label>
			<form:input  path="notice" class="form-control" placeholder="Enter Notice - 1" />
			Notice 2 :
			<form:label path="notice2"></form:label>
			<form:input  path="notice2" class="form-control" placeholder="Enter Notice - 2" />
			Notice 3 :
			<form:label path="notice3"></form:label>
			<form:input  path="notice3" class="form-control" placeholder="Enter Notice - 3" />
			Notice 4 :
			<form:label path="notice4"></form:label>
			<form:input  path="notice4" class="form-control" placeholder="Enter Notice - 4" />
			Notice 5 :
			<form:label path="notice5"></form:label>
			<form:input  path="notice5" class="form-control" placeholder="Enter Notice - 5" />
			Notice 6 :
			<form:label path="notice6"></form:label>
			<form:input  path="notice6" class="form-control" placeholder="Enter Notice - 6" />
			Notice 7 :
			<form:label path="notice7"></form:label>
			<form:input  path="notice7" class="form-control" placeholder="Enter Notice - 7" />
			Notice 8 :
			<form:label path="notice8"></form:label>
			<form:input  path="notice8" class="form-control" placeholder="Enter Notice - 8" />
			Notice 9 :
			<form:label path="notice9"></form:label>
			<form:input  path="notice9" class="form-control" placeholder="Enter Notice - 9" />
			Notice 10 :
			<form:label path="notice10"></form:label>
			<form:input  path="notice10" class="form-control" placeholder="Enter Notice - 10" />
			
			<input type="submit" value="Submit" class="btn btn-black"  >
			
			</form:form>
			<br>
			 
			
			<%-- <h5><u>To View Previous Notice's list</u> -  <a href="notice"><button class="btn btn-black">Click Here</button></a> <span class="sp"><u>To Delete Previous Notice's list</u> -  <a href="deletenotice/${e.id}"><button class="btn btn-black">Click Here</button></a> </span> </h5><br> --%>
		    <h5><u>To View Previous Notice's list</u> -  <a href="notice"><button class="btn btn-black">Click Here</button></a> <span class="sp"><u>To Delete Previous Notice's list</u> -  <a href="deletenotice.html"><button class="btn btn-black">Click Here</button></a> </span> </h5><br>
</div>


 <footer class="footer">

	<ul class="social-icon">
		<li class="social-icon__item"><a class="social-icon__link"
			href="#"> <ion-icon name="logo-facebook"></ion-icon>
		</a></li>
		<li class="social-icon__item"><a class="social-icon__link"
			href="#"> <ion-icon name="logo-twitter"></ion-icon>
		</a></li>
		<li class="social-icon__item"><a class="social-icon__link"
			href="#"> <ion-icon name="logo-linkedin"></ion-icon>
		</a></li>
		<li class="social-icon__item"><a class="social-icon__link"
			href="#"> <ion-icon name="logo-instagram"></ion-icon>
		</a></li>
	</ul>
	<ul class="menu">
		<li class="menu__item"><a class="menu__link" href="File.jsp">Home</a></li>
		<li class="menu__item"><a class="menu__link" href="about">About</a></li>
		<li class="menu__item"><a class="menu__link" href="contact">Contact</a></li>

	</ul>
	<p>&copy;2023 Aditya Tripathy | All Rights Reserved</p>
	</footer>  
      
</body>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	
<script type="text/javascript">

			
			function validateform()
			{
				   alert("Notice Page  has been updated Successfully");
	
			}
		</script>
 <style>
 
 
 .sp{
 margin-left:30px;
 }
 p{
 color: black;
 }
 .form-control{
 padding:5px ;
 width:60%;
 margin-bottom:20px;
 }
 .main-notice{
 margin-left:18%;
 }
.main-notice h3{
margin-left:0;
}
h4{
 border-radius:7px;
 margin-top:8px;
 color:white;
 margin-left:6px;
 margin-right:89%;
 background:#383d52;
 font-weight:700;
 }

h3{
font-weight:600;
padding:10px;
margin-left:25%;

}
 
table{
margin-left:268px;
}

.sidebar {
	margin:5px;
    position:fixed;
	border-radius:12px;
	left: 0;
	width: 260px;
	height: 45%;
	background: black;  /* #042331 */
}
.sidebar ul{
text-decoration: none;
list-style: none; 
}
.sidebar header {
	
	font-size: 22px;
	color: white;
	text-align: center;
	line-height: 70px;
	background: #063146;
    user-select: none;
}

.sidebar ul a {
	text-decoration: none;
    list-style: none; 
	display: block;
	height: 100%;
	width: 100%;
	line-height: 50px;
	font-size: 20px;
	color: white;
	padding-left: 5px;
	box-sizing: border-box;
	border-top: 1px solid rgba(255, 255, 255, .1);
	border-bottom: 1px solid black;
	transition: .4s;
}

.sidebar ul li:hover a {
	background-color: green;
	padding-left: 25px;
}

 .sidebar ul a i {
 	
	margin-right: 16px;
}	




.sidenav {
	height: 100%;
	width: 50%;
	background-color: #000;
	overflow-x: hidden;
	padding-top: 10px;
}

a {
	color: white;
}


.footer {
	margin-top:5%;
	border-radius: 25px;
	position: relative;
	width: 100%;
	background: black; /*  #3586ff */
	min-height: 100px;
	padding: 20px 50px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.social-icon, .menu {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 10px 0;
	flex-wrap: wrap;
}

.social-icon__item, .menu__item {
	
	list-style: none;
}

.social-icon__link {
	font-size: 2rem;
	color: #fff;
	margin: 0 10px;
	display: inline-block;
	transition: 0.5s;
}

.social-icon__link:hover {
	transform: translateY(-10px);
}

.menu__link {
	font-size: 1.2rem;
	color: #fff;
	margin: 0 10px;
	display: inline-block;
	transition: 0.5s;
	text-decoration: none;
	opacity: 0.75;
	font-weight: 300;
}

.menu__link:hover {
	opacity: 1;
}

.footer p {
	color: #fff;
	margin: 15px 0 10px 0;
	font-size: 1rem;
	font-weight: 300;
}

.wave {
	position: absolute;
	top: -100px;
	left: 0;
	width: 100%;
	height: 100px;
	background: url("https://i.ibb.co/wQZVxxk/wave.png");
	background-size: 1000px 100px;
}

.wave#wave1 {
	z-index: 1000;
	opacity: 1;
	bottom: 0;
	animation: animateWaves 4s linear infinite;
}

.wave#wave2 {
	z-index: 999;
	opacity: 0.5;
	bottom: 10px;
	animation: animate 4s linear infinite !important;
}

.wave#wave3 {
	z-index: 1000;
	opacity: 0.2;
	bottom: 15px;
	animation: animateWaves 3s linear infinite;
}

.wave#wave4 {
	z-index: 999;
	opacity: 0.7;
	bottom: 20px;
	animation: animate 3s linear infinite;
}

@keyframes animateWaves { 
0% {
	background-position-x: 1000px;
}

100%
{
background-positon-x:0px;
}
}
@keyframes animate { 
0%
 {
	background-position-x: -1000px;
}

100%
{
background-positon-x:0px;
}
}
.img12 {
	margin-left: 30%;
}

.btn-red {
	margin-left: 45%;
	border-radius: 8px;
	background-color: black;
}

.half-area {
	align-items: center;
	padding: 3px;
	background-color: white;
}

.half-area p {
	align-items: center;
	color: black;
}

.half-area h3 {
	align-items: center;
	font-weight: 700;
	color: black;
}

body {
	padding: 5px;
	font-family: "Lato", sans-serif;
}

nav a {
	margin: 50px;
}

p {
	padding: 1%;
	margin-top: 5%;
	color: white;
	font-size: 20px;
}

.main-head {
	height: 150px;
	background: #FFF;
}

.sidenav {
	height: 100%;
	width: 50%;
	background-color: #000;
	overflow-x: hidden;
	padding-top: 10px;
}

.main {
	padding: 0px 25px;
}

@media screen and (max-height: 450px) {
	.login-main-text{
	 
	}
	
	
	.sidenav {
		padding-top: 15px;
	}
}

@media screen and (max-width: 450px) {
	.half-area {
		margin-right: 10%;
	}
	.login-form {
		margin-top: 10%;
	}
	.register-form {
		margin-top: 10%;
	}
}

@media screen and (min-width: 768px) {
	.main {
		margin-left: 40%;
	}
	.sidenav {
		width: 40%;
		position: fixed;
		z-index: 1;
		top: 0;
		left: 0;
	}
	.login-form {
		margin-top: 50%;
	}
	.register-form {
		margin-top: 20%;
	}
}

.login-main-text {
	padding: 1px;
	color: #fff;
}

.login-main-text h2 {
	font-weight: 300;
}

.btn-black {

	padding:6px;
	border-radius: 9px;
	background-color: #000 !important;
	color: #fff;
}

nav {
	padding: 10px;
	border-radius: 12px;
	list-style-type: none;
	background: black;
	height: 80px;
	width: 100%;
}

label.logo {
	color: White;
	font-size: 35px;
	line-height: 80px;
	padding: 0 30px;
	font-weigth: bold;
}

nav ul {
	float: right;
	margin-right: 90px;
}

nav ul li {
	display: inline-block;
	font-size: 20px;
	line-height: 80px;
	margin: 0 5px;
}

nav ul li a {
	color: white;
	font-size: 18px;
	padding: 7px 13px;
	border-radius: 5px;
	text-transform: uppercase;
}

nav ul li a:active, nav ul li a:hover {
	background: brown;
	transition: .5s;
}


 a:active, a:hover {
	border-radius: 15px;
	transition: .5s;
	background: white;
}


body {
	font-family: "Lato", sans-serif;
}
 
 </style>
</html>