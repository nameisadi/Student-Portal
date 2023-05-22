<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
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
			
				<div class="half-area">
				<br><br><br>
									<h2 data-text="Contact Us">C<u>ontact U</u>s</h2><br>
									
				
				 <img
				src="${pageContext.request.contextPath}/resources/image/contact.png"
				height="270" width="500" class="img" /><br><br>
				
				<ul>
				<li> <img
				src="${pageContext.request.contextPath}/resources/image/Gmail.png"
				height="30" width="50" class="img" /><p>  - <u>College.utkal@gmail.com</u> </p></li><br>
				<li><img
				src="${pageContext.request.contextPath}/resources/image/call.png"
				height="28" width="35" class="img" /><p> -   +<u>91-9000000008</u> </p></li>
				</ul>
												<h3>If You Have Questions Or Need Assistance,<br> Please Contact Us<br> And We Will Be In Touch With You. </h3>
			
      				</div><br><br>
      				
        				
    <footer class="footer">
   
    <h4><u>Find Us</u> - </h4>
    <li><a><iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d662.5651589393312!2d85.83445937174774!3d20.277672092975706!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a1909e5cfad9323%3A0x78fd24d40c792810!2sNational%20Informatics%20Centre!5e0!3m2!1sen!2sin!4v1682491693625!5m2!1sen!2sin" width="350" height="200" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </a></li> <br>
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

h3{
font-weigth: 800;
color:black;
margin-left:30%;
}
 .img {
        display: inline-block;
        vertical-align: left;
    }

ul{
        list-style-type: none;

}
p{
margin-left:10px;
display: inline-block;
font-weigth: 700;
font-size: 19px;
color:black;
}
h4{
color:white;
}
.map{
border-radius:14px;
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
		width:28%;
	}
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

.img{
margin-left:450px;

}
.btn-red{
margin-left:565px;
}

.half-area{
align-items:center;
padding:3px;
}
body {
padding:5px;
font-family: "Lato", sans-serif;
}

a{
margin: 65px ;
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

.btn-black{
    background-color: #000 !important;
    color: #fff;
}


nav {
    padding: 12px;
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
	background: white;
	border-radius:12px;
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