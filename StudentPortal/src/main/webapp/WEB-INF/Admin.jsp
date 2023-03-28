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
<title>Admin Panel</title>
</head>
<body>


<nav>

			<label class="logo">Student Portal<img height="25px" width="25px" alt="logo" src="${pageContext.request.contextPath}/resources/image/logo.jpg"></label>
			<ul>
			<button type="button" name="back" class="btn btn-black" onclick="history.back()">Back</button>
			<a href="File.jsp"><button class="btn btn-black">Login/Register</button></a>
			
			
			</ul>
</nav>


		<div class="sidebar">
			<header>MENU</header>
			<ul>
				<li><a href="#"><i class="fas fa-qrcode"></i>STUDENT PROFILE DATA</a></li>
				<li><a href="#"><i class="fas fa-link"></i>UPDATE STUDENT PROFILE</a></li>
				<li><a href="#"><i class="fas fa-stream"></i>DELETE STUDENT</a></li>
				<li><a href="#"><i class="fas fa-calendar-week"></i>UPDATE NOTICE BOARD</a></li>
				<li><a href="logout"><i class="fas fa-calendar-week"></i>LOGOUT</a></li>
			</ul>
		</div>



		

				 <h3 align="center"> All STUDENT'S DATA SHOWN BELOW:</h3>
				
 
                <TABLE align="center" width="30%" cellpadding="3" BORDER="3">
                
<tr>
		<th>ID</th>
		<th>USERNAME</th>
		<th>NAME</th>
		<th>GENDER</th>
		<th>FATHER NAME</th>
		<th>DATE OF BIRTH</th>
		<th>EMAIL</th>
		<th>MOBILE</th>
		<th>ADDRESS</th>
		<th>STATE</th>
		<th>DISTRICT</th>
		<th>CITY</th>
	</tr>
    
    <c:forEach var="e" items="${list}">
           
     <tr>
           	
        <td>${e.id}</td>
        <td>${e.username}</td>
		<td>${e.name}</td>
        <td>${e.gender}</td>
        <td>${e.f_name}</td>
        <td>${e.date_B}</td>
        <td>${e.email}</td>
        <td>${e.mobile}</td>
        <td>${e.address}</td>
        <td>${e.state}</td>
        <td>${e.dist}</td>
        <td>${e.city}</td>
                 
     </tr>
                 
             <%--     <tr>
                 <TH>PASSWORD</TH>
                 <td>${e.password}</td>
                 </tr>
                 --%>
			 	  
	   </c:forEach>		 	     
   </TABLE>
                 <%-- <TABLE align="center" width="25%" cellpadding="2" BORDER="2">
                
                     <c:forEach  var="e" items="${list}">

           <tr>
           	<TH>Roll</TH>
			<td>${e.roll}</td>
		   </tr>
		   
            <tr>
             <TH>English</TH>
             <td>${e.English}</td>
            </tr>
            
            <tr>
                 <TH>Math</TH>
                 <td>${e.Math}</td>
             </tr>
             <tr>
                 <TH>Computer</TH>
  				 <td>${e.Computer}</td>
              </tr>
              
              <tr>
                 <TH>Social<TH>
                 <td>${e.Social}</td>
                 
                 </tr>
                 
                 <tr>
                  <TH>Mark obtained</TH>
                  <td>${e.Markobt}</td>
                  </tr>
                  <tr>
                 <TH>Maximum mark</TH>
                 <td>${e.Maxmark}</td>
                 
                 </tr>
                
			 
			 	     </c:forEach>
			 
			 
		 </TABLE> --%>
          <br><br>
      
</body>

 <style>
 table{
 margin-left: 390px;
 }
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
