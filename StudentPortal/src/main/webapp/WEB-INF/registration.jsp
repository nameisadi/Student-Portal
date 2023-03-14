<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" %>
<%@ page import="java.util.regex.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="Keywords" content="html, css, html tables, table">
    <!-- add icon -->
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
        <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
<div class="sidenav">
         <div class="login-main-text">
            <h1>Student<br>Portal</h1>
            <p>Please fill in the required information</p>
             <img src="${pageContext.request.contextPath}/resources/image/logo.jpg"
                            height="250" width="250" class="img12" />
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               
		<center>
		<button type="button" name="back" class="btn btn-black" onclick="history.back()">Back</button>
		<a href="Login"><button class="btn btn-black">Login</button></a>
	</center><br><br>
	<div class="main">
	
	
	
		<form:form action="save" modelmethod="post">
		
		
			Username :
			<form:label path="Username"></form:label>
			<form:input path="Username" class="form-control" placeholder="Enter Username" required="true"/>
			<br>
			<br>
		
			Name :
			<form:label path="Name"></form:label>
			<form:input path="Name" class="form-control" placeholder="Enter Your Name" required="true"/>
			<br>
			<br> 
				 
			Gender :
			<form:label path="Gender"></form:label>
			<form:radiobutton path="Gender" value="Male" label="Male" />
			<form:radiobutton path="Gender" value="Female" label="Female" />
			<form:radiobutton path="Gender" value="other" label="Others" />
			<br>
			<br> 	 
				  
			Father Name :
			<form:label path="F_Name"></form:label>
			<form:input path="F_Name" class="form-control" placeholder="Enter Name" required="true"/>
			<br>
			<br>
				
				
			Date of Birth :
			<form:input type="date" path="Date_B"></form:input>
			<br>
			<br>
			
			 Email :   
			<form:label path="Email"></form:label>
			<form:input path="Email" class="form-control" placeholder="Enter Email" required="true"/>
			<br>
			<br>

			Mobile :
			<form:input text="text" path="Mobile" class="form-control" required="true"/>
			<br>
			<br>
			
			Address :
			<form:input type="text" path="Address" class="form-control" required="true"/>
			<br>
			<br>

			State : 
			<form:select path="State" >
				<option value="Select State">Select State</option>
				<option value="Andhra Pradesh">Andhra Pradesh</option>
				<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
				<option value="Arunachal Pradesh">Arunachal Pradesh</option>
				<option value="Assam">Assam</option>
				<option value="Bihar">Bihar</option>
				<option value="Chandigarh">Chandigarh</option>
				<option value="Chhattisgarh">Chhattisgarh</option>
				<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
				<option value="Daman and Diu">Daman and Diu</option>
				<option value="Delhi">Delhi</option>
				<option value="Lakshadweep">Lakshadweep</option>
				<option value="Puducherry">Puducherry</option>
				<option value="Goa">Goa</option>
				<option value="Gujarat">Gujarat</option>
				<option value="Haryana">Haryana</option>
				<option value="Himachal Pradesh">Himachal Pradesh</option>
				<option value="Jammu and Kashmir">Jammu and Kashmir</option>
				<option value="Jharkhand">Jharkhand</option>
				<option value="Karnataka">Karnataka</option>
				<option value="Kerala">Kerala</option>
				<option value="Madhya Pradesh">Madhya Pradesh</option>
				<option value="Maharashtra">Maharashtra</option>
				<option value="Manipur">Manipur</option>
				<option value="Meghalaya">Meghalaya</option>
				<option value="Mizoram">Mizoram</option>
				<option value="Nagaland">Nagaland</option>
				<option value="Odisha">Odisha</option>
				<option value="Punjab">Punjab</option>
				<option value="Rajasthan">Rajasthan</option>
				<option value="Sikkim">Sikkim</option>
				<option value="Tamil Nadu">Tamil Nadu</option>
				<option value="Telangana">Telangana</option>
				<option value="Tripura">Tripura</option>
				<option value="Uttar Pradesh">Uttar Pradesh</option>
				<option value="Uttarakhand">Uttarakhand</option>
				<option value="West Bengal">West Bengal</option>
			</form:select>
			<br>
			<br> 
				
			District :
			<form:label path="Dist"></form:label>
			<form:input path="Dist" class="form-control"
				placeholde="Enter Distict" required="true"/>
			<br>
			<br>

			City :
			<form:label path="City"></form:label>
			<form:input path="City" class="form-control" placeholder="Enter City" required="true"/>
			<br>
			<br>
				
				
			Password:
			<form:label path="Password"></form:label>
			<form:input id = "pswd" path="Password" type="password" class="form-control"   name="password" 
				placeholder="Enter Password" required="true"/>
			<br>
			<br>
			
			Confirm Password:
			<form:label path="Password2"></form:label>
			<form:input path="Password2" type="password" class="form-control" name="confirm-password" 
				placeholder="Confirm Password" onsubmit="pass()" required="true"/>
				
			<br>
			<br>


			<input type="submit" value="Submit" class="btn btn-black" onclick="alertname()" >
			
	</form:form>
	
   <h3>AFTER SUBMISSION - ENTER ALL THE SUBJECT DETAILS HERE  - <a href="Semester"><button class="btn btn-black">Click Here</button></a></h3>
	
	</div><br>

            </div>
         </div>
      </div>
	

</body>
	<script type="text/javascript">

			function alertname() 
			{
			alert("Form has been submitted");
			}
   
		</script>

<style>
p{
font-size: 25px;
}
button{
margin-right: 230px;
}
	
.btn-black{
    background-color: #000 !important;
    color: #fff;
    }
body{
font-family: "Lato", sans-serif;
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

</style>
</html>