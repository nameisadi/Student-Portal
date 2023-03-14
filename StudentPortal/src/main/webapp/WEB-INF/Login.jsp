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
	<center>
	<br>
			<button type="button" class="btn btn-black"
			onclick="history.back()">Back</button>

	</center>

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
				<form:form name="myform" action="log" method="post" ModelAttribute="lb"
					onsubmit="return validateform()" autocomplete="off">
					<div class="form-group">
						<label>User Name</label>
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

<style>
body {
	font-family: "Lato", sans-serif;
}
p{
font-size: 25px;
}
button{
margin-right:50px;
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
		margin-top: 40%;
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
	background-color: #000 !important;
	color: #fff;
}
</style>
</html>