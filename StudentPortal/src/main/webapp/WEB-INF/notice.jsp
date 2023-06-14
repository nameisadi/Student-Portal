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
<title>Notice Board</title>
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
	<br>
	<a href="javascript:window.history.back();"><button class="btn btn-black">Back</button></a>
	<h2 data-text="Notice Board">N<u>otice Boar</u>d</h2>
	
	<div class="not">
	<ul>
	
	
	
	<!-- <li>Tomorrow there will be a holiday</li>	
	<li>New Admission's Form Fill-up is going on.</li>
	<li> Reminder: The deadline for submitting your final project is May 15th. Make sure to get it in on time! </li>
	<li> Student Government Association (SGA) meeting will be held on May 10th at 3pm in the Student Center. All are welcome to attend. </li>
	<li>Graduation rehearsal will take place on May 20th at 10am in the gymnasium. All graduating students are required to attend.  </li>
	<li> Campus Health Services will be offering free flu shots on May 25th from 1pm to 4pm. Don't miss this opportunity to protect yourself from the flu! </li>
	<li> Attention all graduating seniors! The deadline to order your cap and gown is May 10th. Don't miss out on this important graduation tradition! </li>
	
	<li>Attention Students! The library will be closed for maintenance on May 5th. We apologize for any inconvenience.</li>
	
	<li>Kindly,  Do your Last Year Form Fillup.</li>
	<li> The Career Services office will be hosting a job fair on June 1st from 10am to 2pm in the Student Center. Dress professionally and bring copies of your resume! </li>
	 -->
	
	 <c:forEach  var="e" items="${list}">
	 <li>${e.notice}</li>
	 <li>${e.notice2}</li>
	 <li>${e.notice3}</li>
	 <li>${e.notice4}</li>
	 <li>${e.notice5}</li>
	 <li>${e.notice6}</li>
	 <li>${e.notice7}</li>
	 <li>${e.notice8}</li>
	 <li>${e.notice9}</li>
	 <li>${e.notice10}</li>
	 </c:forEach>
	
	</ul>
	</div>

	

	<footer class="footer">
  
    <ul class="social-icon">
      <li class="social-icon__item"><a class="social-icon__link" href="#">
          <ion-icon name="logo-facebook"></ion-icon>
        </a></li>
      <li class="social-icon__item"><a class="social-icon__link" href="#">
          <ion-icon name="logo-twitter"></ion-icon>
        </a></li>
      <li class="social-icon__item"><a class="social-icon__link" href="#">
          <ion-icon name="logo-linkedin"></ion-icon>
        </a></li>
      <li class="social-icon__item"><a class="social-icon__link" href="#">
          <ion-icon name="logo-instagram"></ion-icon>
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
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

<style>
.not{
padding-bottom:5%;
}



.footer {
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
  100% {
    background-positon-x: 0px;
  }
}

@keyframes animate {
  0% {
    background-position-x: -1000px;
  }
  100% {
    background-positon-x: 0px;
  }
}
.img12 {
	margin-left: 30%;
}






.half-area {
	align-items: center;
	padding: 3px;
	background-color: white;
 }
 
 .half-area p {
 align-items:center;
 color:black;
 }
 .half-area h3 {
 align-items:center;
 font-weight: 700;
 color:black;
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
	.sidenav {
		padding-top: 15px;
	}
	
}

@media screen and (max-width: 450px) {
	
	.half-area {
	margin-right:10%;
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
		border-radius:9px;
		background-color: #000 !important;
		color: #fff;
}

nav {
	padding: 10px;
	border-radius:12px;
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
	background: white;
	transition: .5s;
}

button {
	background-color: black;
	color: #fff;
	height: 30px;
	width: 100px;
}

body {
	font-family: "Lato", sans-serif;
}
h2{
margin-left:30%;
position:relative;
font-size:2.5vw;
color:#252839;
-webkit-text-stroke: 0.3vw #383d52;
text-transform: uppercase;
}

h2::before{
content: attr(data-text);
position: absolute;
top:0;
left:0;
width:0;
height:100%;
color:white;
-webkit-text-stroke: 0vw #383d52;
border-right: 2px solid white;
overflow: hidden;
animation: animate 6s linear infinite;
}

@keyframes animate
{
	0%,10%,100%
	{
		width: 0;
	}
	70%
	{
		width:34%;
	}
}

</style>

</html>
	