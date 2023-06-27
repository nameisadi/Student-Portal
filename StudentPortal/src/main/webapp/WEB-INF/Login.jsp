<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>


</head>
<body>
	<!-- <div class="btn-h">
			<button type="button" class="btn btn-black"
			onclick="history.back()">Back</button>
</div>
 -->
	<div class="sidenav">
		<div class="login-main-text">
			<h2>
				Student<br>Portal
			</h2>
			
			<p>Login here to access your data.</p>
			<img
				src="${pageContext.request.contextPath}/resources/image/logo.jpg"
				height="250" width="250" class="img12" />
		</div>
	</div>
	<div class="main">
		<div class="col-md-6 col-sm-12">

			<div class="login-form">
			<a href="File.jsp"><button class="btn btn-black">Back</button></a><br><br>
				<form:form name="myform" action="log" method="post" ModelAttribute="lb"
					onsubmit="return validateform()" autocomplete="off">
					<div class="form-group">
						<p>Enter Your Login Details Here </p>
						<label>Username</label>
						<form:input path="username" class="form-control"
							placeholder="Enter Username Here" required="true" />
					</div>
					<div class="form-group">
						<label>Password</label>
						<form:password path="password" class="form-control"
							placeholder="Enter Password Here" />

					</div>



					<%-- 						${pageContext.request.contextPath}/
 --%>					Captcha:<br>
					<tr>
						<td colspan='2' align="center"><img src="captcha.jpg"
							id="captcha_id"> <img id="img1" class="captcha_id">
							<%-- src="${pageContext.request.contextPath}/resources/image/refresh.png"
									 height="35" width="35" class="img12"> --%>
						<td align="left"><a href="javascript:;"
							title="change captcha text"
							onclick="document.getElementById('captcha_id').src = 'captcha.jpg?' + Math.random();  return false">
								<img
								src="${pageContext.request.contextPath}/resources/image/refresh.png"
								height="35" width="35" class="img12" />
						</a></td>


					</tr>
					<br>
					<br>
					<tr>
						<td>Captcha Code:</td> 	
						<td><form:input path="captcha" class="captcha-text1"
								placeholder="Enter Above Code Here" required="true" /> <form:errors
								path="captcha" class="error" /></td> <br>
					</tr>
					<tr>
						<td><br>
						<input type="submit" class="btn btn-black" value="Login" /></td>
					</tr>
					<br>
					<br>

				</form:form><br>
							<h5>Don't have an account?	<a href="registration"><button class="btn btn-black">Sign-Up</button></a>
							</h5>
				
			</div>
		</div>
	</div>
	<br><br>
	<footer class="footer">
    <!-- <div class="waves">
      <div class="wave" id="wave1"></div>
      <div class="wave" id="wave2"></div>
      <div class="wave" id="wave3"></div>
      <div class="wave" id="wave4"></div>
    </div>  -->
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
<script type="text/javascript">
 //console.log("abc");
			$(document).ready(function()
			{
				//console.log("abc", true);
				//alert("bjhkjhjhk",true);
				$("#img1").click(function()
			    {
					// alert("bjhkj",true);
					 $.get("captcha.jpg", function(data, status)
			        {
			              document.getElementById("captcha_id").src='captcha.jpg?p='+Math.random();
			        });
			    });
			});
			
			
			function validateform(){
				var username=document.myform.username.value;
				var password=document.myform.password.value;
				
				if(username==null||username==""){
					alert("---PLEASE ENTER USERNAME---");
					return false;
				}
				else if(password.length<6){
					alert("---PASSWORD MUST BE ATLEAST 6 CHARECTER LONG---");
					return false;
				}
			}
			</script>
			
 <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

<style>

body {
	font-family: "Lato", sans-serif;
}

.btn-h{
    margin-left:42%;
}
p{
font-weight:600;
font-size: 24px;
}


.main-head {
	height: 150px;
	background: #FFF;
}

.sidenav {
	height: 100%;
	background-color: #000;
	overflow-x: hidden;
	padding-top: 20px;
}

.main {
	padding: 0px 10px;
}

.footer {
    margin-left:40%;
	position: relative;
	width: 60%;
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
@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
}

@media screen and (max-width: 450px) {
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
		margin-top:30%;
		margin-bottom: 10%;
	}
	.register-form {
		margin-top: 20%;
	}
}

.login-main-text {
	margin-top: 20%;
	padding: 60px;
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
</style>
</html>