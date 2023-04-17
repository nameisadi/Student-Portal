<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About</title>
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
				<a href="#"><button class="btn btn-black">Contact Us</button></a>

			</ul>
		</h1>
</div>

	</nav>
			
				<div class="half-area">
				<br><br>
				 <img
				src="${pageContext.request.contextPath}/resources/image/online.png"
				height="270" width="470" class="img" />
					
               	<p >Step into the digital halls of knowledge and unlock the doors to your academic progress! By logging in here, you'll gain access to the virtual campus of your school website and be able to explore the inner workings of your academic journey. Discover your exam details and unearth the gems of your academic achievements from the comfort of your own screen. Don't wait any longer, join the online community of learners and embark on a journey of academic discovery.</p>
                    <br>
      				</div>
      				
      			
</body>

<style>
.img{
margin-left:450px;

}
.btn-red{
margin-left:565px;
}
h3{
color:white;
margin-left:450px;
}
.half-area{
align-items:center;
padding:3px;
background-color:black;
}
body {
background-color:black;
padding:5px;
font-family: "Lato", sans-serif;
}

a{
margin: 65px ;
}
p{
padding:1%;
margin-top:5%;
color:white;
font-size: 20px;
}
.main-head{
    height: 150px;
    background: #FFF;
   
}

.sidenav {
    height: 100%;
    width:50%;
    background-color: #000;
    overflow-x: hidden;
    padding-top: 10px;
}


.main {
    padding: 0px 25px;
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
        margin-left: 40%; 
    }

    .sidenav{
        width: 40%;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
    }

    .login-form{
        margin-top: 50%;
    }

    .register-form{
        margin-top: 20%;
    }
}


.login-main-text{
	padding: 1px;
    color: #fff;
}

.login-main-text h2{
    font-weight: 300;
}

.btn-black{
    background-color: #000 !important;
    color: #fff;
}


nav {
    padding-top: 25px;

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
	background: green;
	transition: .5s;
}	
    button{
    background-color: black;
    color: #fff;
   	height:30px;
    width:100px;
    }
     body {
           font-family: "Lato", sans-serif;
          }
         btn-red{
	    background-color: red;
	  }
 
</style>

</html>