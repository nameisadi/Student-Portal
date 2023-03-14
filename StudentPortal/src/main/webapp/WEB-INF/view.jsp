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
<title>View Data</title>
</head>
<body>

<nav>
			<label class="logo">Student Portal <img height="25px" width="25px" alt="logo" src="${pageContext.request.contextPath}/resources/image/logo.jpg"></label>
			<ul>
							    
			    <button type="button" name="back" class="btn btn-black" onclick="history.back()">Back</button>
			
			</ul>
</nav>

<h3 align="center">SUBJECT DETAILS SHOWN BELOW:</h3>  
<table align="center" border="2" width="70%" cellpadding="2">
	<tr>
		<th>Roll_No</th>
		<th>English</th>
		<th>Math</th>
		<th>Computer Science</th>
		<th>Social Science</th>
		<th>Mark Obtained</th>
		<th>Maximum Mark</th>
	</tr>
		<c:forEach var="sem" items="${list}">   
   <tr>  
  	<td>${sem.roll}</td>
   <td>${sem.english}</td>  
   <td>${sem.math}</td>  
   <td>${sem.computer}</td>  
   <td>${sem.social}</td>  
   <td>${sem.markobt}</td>  
   <td>${sem.maxmark}</td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>
   		
    
</body>
<style>

nav {
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
 	


  	.btn-black{
    background-color: #000 !important;
    color: #fff;
    }
    button{
    margin-right: 15rem;
    }
     body {
           font-family: "Lato", sans-serif;
           margin-left:50px ;
          }
</style>
</html>