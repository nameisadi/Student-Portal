<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
<title>Semester Details</title>
</head>
<body>


<div class="sidenav">
         <div class="login-main-text">
            <h1>Student<br>Portal</h1>
            <p>Enter All The Subject Details Here</p>
             <img src="${pageContext.request.contextPath}/resources/image/logo.jpg"
                            height="250" width="250" class="img12" />
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               
		     		<button type="button" name="back" class="btn btn-black" onclick="history.back()">Back</button>
					<a href="File.jsp"><button class="btn btn-black">Home</button></a>
			   
<br><br><br>
<form:form action="savel" modelmethod="post" >

Roll No<form:label path="roll"></form:label>
			<form:input path="roll" class="form-control"
				placeholder="Enter Roll No." />
			<br><br>
			
English <form:label path="english"></form:label>
			<form:input path="english" class="form-control"
				placeholder="Enter English marks" required="true" />
			<br><br>
Math <form:label path="math"></form:label>
			<form:input path="math" class="form-control"
				placeholder="Enter math marks" required="true"/>
			<br><br>
Computer Science<form:label path="computer"></form:label>
			<form:input path="computer" class="form-control"
				placeholder="Computer Science marks" required="true"/>
			<br><br>
Social Studies <form:label path="Social"></form:label>
			<form:input path="Social" class="form-control"
				placeholder="Social Studies marks" required="true" />
			<br><br>
Mark Obtained <form:label path="markobt"></form:label>
			<form:input path="markobt" class="form-control"
				placeholder="Enter obtained marks" required="true" />
			<br><br>
			
Maximum Mark <form:label path="maxmark"></form:label>
			<form:input path="maxmark" class="form-control"
				placeholder="Enter maximum marks" required="true" />
			<br><br>
			
			<input type="submit" value="Submit" class="btn btn-black" onclick="alertname()" >
			
			
</form:form><br><br><br>
 <h3>ENTER HERE TO REDIRECT TO LOGIN PAGE</h3>
<a href="Login"><button class="btn-black">CLICK HERE</button></a>  

            </div>
         </div>
       </div>
</body>
<script type="text/javascript">
		
		function alertname() {
		alert("All Details has been submitted");
			}

		
	</script>
<style>
body {
    font-family: "Lato", sans-serif;
}
button{
margin-right:100px;
}

p{
font-size: 25px;
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
        margin-left: 50%; 
    }

    .sidenav{
        width: 40%;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
    }

    .login-form{
        margin-top: 5%;
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

.btn-black{
    background-color: #000 !important;
    color: #fff;
}
</style>
</html>