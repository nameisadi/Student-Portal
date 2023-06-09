<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Marks</title>
</head>
<body>	


<nav>
	<div class="login-main-text">
		<h1>
			Student Portal 
			<img src="${pageContext.request.contextPath}/resources/image/logo.jpg"
				height="50" width="50" class="img1" /><ul>
				<a href="File.jsp"><button class="btn btn-black">Home</button></a>
				<a href="about"><button class="btn btn-black">About</button></a>
				<a href="contact"><button class="btn btn-black">Contact Us</button></a>

			</ul>
		</h1>
</div>

	</nav>

<h4>Admin Panel</h4>

		<div class="sidebar">
			<header>MENU</header>
			<ul>
			    <li><a href="editprof"><i class="fas fa-qrcode"></i>PROFILE DETAILS</a></li>
				<li><a href="Admin"><i class="fas fa-qrcode"></i>STUDENT'S DATA</a></li>
				<li><a href="#"><i class="fas fa-link"></i>STUDENT MARKS</a></li>
				<li><a href="updtnotice"><i class="fas fa-calendar-week"></i>UPDATE NOTICE</a></li>
				<li><a href="logout"><i class="fas fa-calendar-week"></i>LOGOUT</a></li>
			</ul>
		</div>



		

    <h5><u>TO INSERT MARK OF THE STUDENTS THROUGH THERE ID  </u> - <a href="insertmark"><button class="btn btn-black"> Click Here</button></a> </h5><br>

 <h3> All STUDENT'S MARKS SHOWN BELOW:</h3>
    
                  
<TABLE align="center" width="20%" cellpadding="3" BORDER="10">
  <thead>
  <tr>
  	<th>ID</th>
 <!--  	<th>USERNAME</th> -->
    <th>ROLL</th>
    <th>ENGLISH</th>
    <th>MATH</th>
    <th>COMPUTER</th>
    <th>SOCIAL SCIENCE</th>
    <th>MARK OBTAINED</th>
    <th>MAXIMUM MARKS</th>
    <th>EDIT</th>
	<th>DELETE</th>
		
  </tr>
  </thead>
  <tbody>
  <c:forEach var="e" items="${list1}" >   
	   <tr>  <td>${e.id}</td>
	   		
		  	<td>${e.roll}</td>
		   <td>${e.english}</td>  
		   <td>${e.math}</td>  
		   <td>${e.computer}</td>  
		   <td>${e.social}</td>  
		   <td>${e.markobt}</td>  
		   <td>${e.maxmark}</td> 
		   <td><a class="edit-tab" href="editmark.html?id=${e.id}">Edit</a></td>  
   		   <td><a class="edit-tab" href="deletemark.html?id=${e.id}">Delete</a></td>  
	   </tr>  
	   </c:forEach>  
	   </tbody>
	   </TABLE>
<br>
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

<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


 <style>
 
 h5{
 margin-left: 19%;
 font-weight:700;
 }
.edit-tab{
border-radius:9px;
background:black;
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
margin-left:18%;

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
	height: 50%;
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
	margin-top:12%;
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
	
	width: 100px;
	padding:5px;
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

