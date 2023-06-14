<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="Keywords" content="html, css, html tables, table">
    <meta name="Description" content="html table">
    <!-- add icon -->
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
   <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Mark Data</title>
</head>
<body>


<div class="sidenav">
         <div class="login-main-text">
            <h1>Student<br>Portal</h1>
            <p>Please update the required mark details</p>
             <img src="${pageContext.request.contextPath}/resources/image/logo.jpg"
                            height="250" width="250" class="img12" />
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               
	<div class="main">
				<a href="marks"><button class="btn btn-black">Back</button></a>

<br><br>
<h3><u>PLEASE INSERT THE MARKS DETAILS WITH THEIR RESPECTED "ID" :</u> - </h3><br>

<form:form action="save4" modelmethod="post" onsubmit="return alertname()">
		
		ID -<form:label path="id"></form:label>
			<form:input path="id" class="form-control" placeholder="Enter id No." />
			<br><br>

Roll No -<form:label path="roll"></form:label>
			<form:input path="roll" class="form-control"
				placeholder="Enter Roll No." />
			<br><br>
			
English -<form:label path="english"></form:label>
			<form:input path="english" class="form-control"
				placeholder="Enter English marks" required="true" />
			<br><br>
Math -<form:label path="math"></form:label>
			<form:input path="math" class="form-control"
				placeholder="Enter math marks" required="true"/>
			<br><br>
Computer Science -<form:label path="computer"></form:label>
			<form:input path="computer" class="form-control"
				placeholder="Computer Science marks" required="true"/>
			<br><br>
Social Studies -<form:label path="Social"></form:label>
			<form:input path="Social" class="form-control"
				placeholder="Social Studies marks" required="true" />
			<br><br>
Mark Obtained -<form:label path="markobt"></form:label>
			<form:input path="markobt" class="form-control"
				placeholder="Enter obtained marks" required="true" />
			<br><br>
			
Maximum Mark -<form:label path="maxmark"></form:label>
			<form:input path="maxmark" class="form-control"
				placeholder="Enter maximum marks" required="true" />
			<br><br>
			
			<input type="submit" value="Submit" class="btn btn-black" >
			
			
</form:form><br>

		

</div>

            </div>
         </div>
      </div>
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
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script type="text/javascript">

			function alertname() 
			{
			alert("Marks has been updated, Please click (Back)) to continue...........");
			}
   
	</script>
	
<style>

p{
font-size: 25px;
}
button{
margin-right: 50px;
}
	
.btn-black {

	padding:6px;
	border-radius: 9px;
	background-color: #000 !important;
	color: #fff;
}
body{
font-family: "Lato", sans-serif;
}
.form-control{
 border-radius:12px;
 padding:5px ;
 width:20%;
 margin-bottom:10px;
 }
.main-head{
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
    .sidenav {padding-top: 15px;}
}

@media screen and (max-width: 450px) {
    .login-form{
        margin-top: 10%;
    }

    .register-form{
        margin-top: 10%;
    }
}

@media screen and (min-width: 768px){
    .main{
        margin-left: 24%; 
    }

    .sidenav{
        width: 40%;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
    }

    .login-form{
        margin-top: 3%;
    }

    .register-form{
        margin-top: 20%;
    }
}


.login-main-text{
    margin-top: 20%;
    padding: 60px;
    color: #fff;
}

.login-main-text h2{
    font-weight: 300;
}

.footer {
	border-radius:12px;
    margin-left:40%;
	position: relative;
	width: 53%;
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
</style>
</html>