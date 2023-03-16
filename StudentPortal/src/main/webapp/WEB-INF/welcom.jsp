<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="Keywords" content="html, css, html tables, table">
    <meta name="Description" content="html table">
    <!-- add icon -->
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> --%>

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
<title>HOME PAGE</title>
</head>
<body>


<nav>
			<label class="logo">Student Portal <img height="25px" width="25px" alt="logo" src="${pageContext.request.contextPath}/resources/image/logo.jpg"></label>
			<ul>
			<button type="button" name="back" class="btn btn-black" onclick="history.back()">Back</button>
						<a href="File.jsp"><button class="btn btn-black">Login/Register</button></a>
			
			
			</ul>
</nav>


		<div class="sidebar">
			<header>MENU</header>
			<ul>
				<li><a href="#"><i class="fas fa-qrcode"></i>PROFILE</a></li>
				<li><a href="updtsem"><i class="fas fa-link"></i>UPDATE
						PROFILE</a></li>
				<li><a href="view"><i class="fas fa-stream"></i>VIEW
						MARK</a></li>
				<li><a href="updt"><i class="fas fa-calendar-week"></i>UPDATE
						MARK</a></li>
				<li><a href="notice"><i class="fas fa-calendar-week"></i>NOTICE BOARD</a></li>
				<li><a href="logout"><i class="fas fa-calendar-week"></i>LOGOUT</a></li>
			</ul>
		</div>



		

				 <h3 align="center"> YOUR PROFILE DATA AS SHOWN BELOW:</h3>
				
 
                <TABLE align="center" width="25%" cellpadding="2" BORDER="2">
                
                     <c:forEach  var="e" items="${list}">

           <tr>
           		 <TH>ID</TH>
           		 <td>${e.id}</td>
           	</tr>
           <tr>
           	<TH>USERNAME</TH>
			<td>${e.username}</td>
		   </tr>
		   
            <tr>
             <TH>NAME</TH>
             <td>${e.name}</td>
            </tr>
            
            <tr>
                 <TH>GENDER</TH>
                 <td>${e.gender}</td>
             </tr>
             <tr>
                 <TH>FATHER NAME</TH>
  				 <td>${e.f_name}</td>
              </tr>
              
              <tr>
                 <TH>DATE OF BIRTH</TH>
                 <td>${e.date_B}</td>
                 
                 </tr>
                 
                 <tr>
                  <TH>EMAIL</TH>
                  <td>${e.email}</td>
                  </tr>
                  <tr>
                 <TH>MOBILE</TH>
                 <td>${e.mobile}</td>
                 
                 </tr>
                 
                 <tr>
                 <TH>ADDRESS</TH>
                 <td>${e.address}</td>
                 
                 </tr>
                 <tr>
                 <TH>STATE</TH>
                 <td>${e.state}</td>
                 
                 </tr>
                 
                 <tr>
                 <TH>DISTRICT</TH>
                 <td>${e.dist}</td>
                 
                 </tr>
                 <tr>
                 <TH>CITY</TH>
                 <td>${e.city}</td>
                 
                 </tr>
                 
               <%--   <tr>
                 <TH>PASSWORD</TH>
                 <td>${e.password}</td>
                 </tr> --%>
			  
		</c:forEach>
		 </TABLE>
          <br><br>
          
          <!-- <a href="updtsem"><button class="btn-black">update</button></a><br>
          		
          
          	<br>	
          
          
         <h3 align="center">VIEW THE DETAILS OF EACH SUBJECT - <a href="view"><button class="btn-black">Click Here</button></a></h3>
		<br><br><br>
		 -->
   
</body>

 <style>
 
 h3{
 color:red;
 }	
.sidebar {
	
	position: fixed;
	left: 0;
	width: 350px;
	height: 100%;
	background: black;  /* #042331 */
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
	padding-left: 40px;
	box-sizing: border-box;
	border-top: 1px solid rgba(255, 255, 255, .1);
	border-bottom: 1px solid black;
	transition: .4s;
}

ul li:hover a {
	padding-left: 50px;
}

 .sidebar ul a i {
	margin-right: 16px;
}	


nav {
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
	margin-right: 20px;
}

 nav ul li {
	display: inline-block;
	font-size: 20px;
	line-height: 80px;
	margin: 0 5px;
	
}

nav ul li a {
	color: white;
	font-size: 17px;
	padding: 7px 13px;
 	border-radius: 3px;
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
    margin-right:10rem;
    height:20px;
    width:96px;
    }
     body {
           font-family: "Lato", sans-serif;
          }
         btn-black{
         background-color: #000 !important;
    		color: #fff;
  }
 
 </style> 
 
</html>



