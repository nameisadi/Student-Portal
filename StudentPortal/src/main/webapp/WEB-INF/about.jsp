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

<div id="loader">
<img alt="" src="${pageContext.request.contextPath}/resources/image/loader.gif"></div>	
<div id="content">
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
			
				
				<br><br><br>
									<h2 data-text="About Us">A<u>bout U</u>s</h2><br>
				
				
				
				
				<div class="inner-area">
		
		
		<img alt="" src="${pageContext.request.contextPath}/resources/image/back.jpg" class="img-school" >
		
		 <div class="inner-text">
		<p>The "Student Portal" project is a comprehensive platform designed to streamline the management of exams and academic activities for students. The portal allows students to log in and access all their course materials, including lecture notes, assignments, and announcements.</p>
	    <p >Step into the digital halls of knowledge and unlock the doors to your academic progress! By logging in here, you'll gain access to the virtual campus of your school website and be able to explore the inner workings of your academic journey. Discover your exam details and unearth the gems of your academic achievements from the comfort of your own screen. Don't wait any longer, join the online community of learners and embark on a journey of academic discovery.</p>
        <p>The exam management system is a key feature of the portal, which enables students to view their exam schedules, submit online assignments, and receive their exam results. The system also provides real-time updates on exam dates, changes, and any other important announcements related to the exams.</p>
      	<p>The portal is user-friendly and easy to navigate, making it simple for students to access the information they need. It is also highly secure, with password-protected access and advanced security protocols in place to safeguard student data.</p>
		</div>
		
		
	
	
	</div>
	<br>
				
      				
      				  				
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
  </div>			
</body>
<script type="text/javascript">
window.onload=function(){
	
	document.getElementById('loader').style.display="none";
	document.getElementById('content').style.display="block";

}
</script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

<style>

.inner-area
{
position:relative;
}

.inner-area img{
padding:10px;
border-radius:25px;
width: 100%;
height: 90rem;
}
.inner-text{
margin-top:15%;
position:absolute;
top:0;
color:#fff;
padding:20px;

}

.inner-text p{
font-weight:700;
color:white;
text-shadow:1px -1px black, -1px 2px 1px black, -2px 4px 1px black, -3px 6px 1px black	;
font-size:20px;
text-transform:uppercase;

}

#loader{
position:absolute;
margin: auto;
top: 0;
right: 0;
bottom: 0;
left: 0;
width: 150px;
height: 150px;
}
#loader img{
border-radius:35px;
width: 150px;
}
 .footer {
  border-radius:25px;
  position: relative;
  width: 100%;
  background: black;  /*  #3586ff */
  min-height: 100px;
  padding: 20px 50px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}

.social-icon,
.menu {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 10px 0;
  flex-wrap: wrap;
}

.social-icon__item,
.menu__item {
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
		width:20%;
	}
}
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
background-color:white;
}

.half-area p {
color:black;
}


body {
padding:5px;
font-family: "Lato", sans-serif;
}

a{
margin: 65px ;
}
p{
font-weight:500;
padding:2%;
margin-top:1%;
color:white;
font-size: 26px;
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
    font-weight: 800;
}

.btn-black{
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
 	border-radius:12px;
	background: white;
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