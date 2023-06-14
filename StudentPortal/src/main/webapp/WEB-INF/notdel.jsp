<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="Keywords" content="html, css, html tables, table">
    <meta name="Description" content="html table">
    <!-- add icon -->
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
        <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Notice List Deleted</title>
</head>
<body>

 <script>
        alert("Notice List Deleted"); // Display the alert message
    </script>
    <div class="field">
   
     <img src="${pageContext.request.contextPath}/resources/image/Deleted.jpg"
                            height="250" width="250" class="img" />
        <div class="field-inner">                    
    <h3>Notice List Deleted</h3>
   </div>
    <a href="Admin"><button class="btn btn-black">Back</button></a>
   </div> <br><br>
</body>
<style>

body {
	padding: 5px;
	font-family: "Lato", sans-serif;
}

.field{
position:relative;

}
.field img{

padding:20px;
border-radius:50px;
width: 100%;
height: 30rem;
}
.field-inner{
margin-top:15%;
position:absolute;
top:0;
color:#fff;
padding:20px;
}
.field-inner h3{
margin-left:20px;
font-weight:700;
color:white;
text-shadow:1px -1px black, -1px 2px 1px black, -2px 4px 1px black, -3px 6px 1px black;
font-size:50px;
text-transform:uppercase;

}
.btn-black {
	margin-top:10px;
	margin-left:50%;
	padding:6px;
	border-radius: 9px;
	background-color: #000 !important;
	color: #fff;
}
</style>
</html>