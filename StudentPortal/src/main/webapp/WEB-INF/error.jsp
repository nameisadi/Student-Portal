<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>ERROR</title>
</head>
<body>
  <br><br><br>
    <center> <h2> <c:out value="${msg}"></c:out></h2>/<br>
    
    
    
    <img src="${pageContext.request.contextPath}/resources/image/err.png" height="400px" width="75%" class="img12" /><br><br>
                            
    			<button type="button" name="back" class="btn-black" onclick="history.back()">Back</button>
    
    </center><br><br>
  
  <br><br>
</body>
<style>
	.btn-black {
	padding:8px;
	font-size:20px;
	border-radius: 9px;
	background-color: #000 !important;
	color: #fff;
}
</style>
</html>