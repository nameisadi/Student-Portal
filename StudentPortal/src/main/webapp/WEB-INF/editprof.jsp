<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" %>
<%@ page import="java.util.regex.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
<title>Update Profile Details</title>
</head>
<body>
<div class="sidenav">
         <div class="login-main-text">
            <h1>Student<br>Portal</h1>
            <p>Please Update The Profile Details</p>
             <img src="${pageContext.request.contextPath}/resources/image/logo.jpg"
                            height="250" width="250" class="img12" />
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               
	<br><br>
	<div class="main">
	
	
		<a href="Admin"><button class="btn btn-black">Back</button></a><br><br>
			
		<form:form action="save9.html" modelAttribute="i" modelmethod="post"  >
		
			ID :<form:label path="id"></form:label>
			<form:input path="id" class="form-control" readonly="true"/>
			<br><br>
			Username :
			<form:label path="username"></form:label>
			<form:input path="username" class="form-control" placeholder="Enter Username"  readonly="true"/>
			<br>
			<br>
		
			Name :
			<form:label path="name"></form:label>
			<form:input path="name" class="form-control" placeholder="Enter Your Name" required="true"/>
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
			<form:label path="f_name"></form:label>
			<form:input path="f_name" class="form-control" placeholder="Enter Name" required="true"/>
			<br>
			<br>
				
				
			Date of Birth :
			<form:input type="date" path="Date_B"></form:input>
			<br>
			<br>
			
			 Email :   
			<form:label path="email"></form:label>
			<form:input path="email" class="form-control" placeholder="Enter Email" required="true"/>
			<br>
			<br>

			Mobile :
			<form:input text="text" path="mobile" class="form-control" required="true"/>
			<br>
			<br>
			
			Address :
			<form:input type="text" path="address" class="form-control" required="true"/>
			<br>
			<br>

			State : 
			<form:label path="state"></form:label>
			<form:input path="state" class="form-control"
				placeholder="Enter State" disabled="true"/>
			<form:select path="state" >
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
				   <c:choose>
            <c:when test="${i.state == null || i.state == ''}">
                <form:option value="" label="Select State" />
            </c:when>
            <c:otherwise>
                <form:option value="${i.state}" label="${i.state}" />
            </c:otherwise>
        </c:choose>
			</form:select>
			<br>
			<br> 
				
			District :
			<form:label path="dist"></form:label>
			<form:input path="dist" class="form-control"
				placeholder="Enter Distict" required="true"/>
			<br>
			<br>

			City :
					<%-- <form:label path="city"></form:label>
					<form:input path="city" class="form-control" placeholder="Enter City" required="true"/> --%>
			<form:label path="city"></form:label>
			<form:input path="city" class="form-control"
				placeholder="Enter City" disabled="true" />
			<form:select path="city" >
		    <option value="Select City">Select City</option>
		    <option value="Agra">Agra</option>
		    <option value="Ahmedabad">Ahmedabad</option>
		    <option value="Ajmer">Ajmer</option>
		    <option value="Aligarh">Aligarh</option>
		    <option value="Allahabad">Allahabad</option>
		    <option value="Amravati">Amravati</option>
		    <option value="Amritsar">Amritsar</option>
		    <option value="Asansol">Asansol</option>
		    <option value="Aurangabad">Aurangabad</option>
		    <option value="Bangalore">Bangalore</option>
		    <option value="Bareilly">Bareilly</option>
		    <option value="Belgaum">Belgaum</option>
		    <option value="Bhavnagar">Bhavnagar</option>
		    <option value="Bhiwandi">Bhiwandi</option>
		    <option value="Bhopal">Bhopal</option>
		    <option value="Bhubaneswar">Bhubaneswar</option>
		    <option value="Bikaner">Bikaner</option>
		    <option value="Bokaro Steel City">Bokaro Steel City</option>
		    <option value="Chandigarh">Chandigarh</option>
		    <option value="Chennai">Chennai</option>
		    <option value="Coimbatore">Coimbatore</option>
		    <option value="Cuttack">Cuttack</option>
		    <option value="Dehradun">Dehradun</option>
		    <option value="Delhi">Delhi</option>
		    <option value="Dhanbad">Dhanbad</option>
		    <option value="Durgapur">Durgapur</option>
		    <option value="Faridabad">Faridabad</option>
		    <option value="Firozabad">Firozabad</option>
		    <option value="Ghaziabad">Ghaziabad</option>
		    <option value="Gorakhpur">Gorakhpur</option>
		    <option value="Gulbarga">Gulbarga</option>
		    <option value="Guntur">Guntur</option>
		    <option value="Gurgaon">Gurgaon</option>
		    <option value="Guwahati">Guwahati</option>
		    <option value="Gwalior">Gwalior</option>
		    <option value="Howrah">Howrah</option>
		    <option value="Hubli-Dharwad">Hubli-Dharwad</option>
		    <option value="Hyderabad">Hyderabad</option>
		    <option value="Indore">Indore</option>
		    <option value="Jabalpur">Jabalpur</option>
		    <option value="Jaipur">Jaipur</option>
		    <option value="Jalandhar">Jalandhar</option>
		    <option value="Jammu">Jammu</option>
		    <option value="Jamnagar">Jamnagar</option>
		    <option value="Jamshedpur">Jamshedpur</option>
		    <option value="Jhansi">Jhansi</option>
		    <option value="Jodhpur">Jodhpur</option>
		    <option value="Kakinada">Kakinada</option>
		    <option value="Kannur">Kannur</option>
		    <option value="Kanpur">Kanpur</option>
		    <option value="Karnal">Karnal</option>
		    <option value="Kochi">Kochi</option>
		    <option value="Kolhapur">Kolhapur</option>
		    <option value="Kolkata">Kolkata</option>
		    <option value="Kollam">Kollam</option>
		    <option value="Kota">Kota</option>
		    <option value="Kozhikode">Kozhikode</option>
		    <option value="Kurnool">Kurnool</option>
		    <option value="Lucknow">Lucknow</option>
		    <option value="Ludhiana">Ludhiana</option>
		    <option value="Madurai">Madurai</option>
		    <option value="Malappuram">Malappuram</option>
		    <option value="Mathura">Mathura</option>
		    <option value="Meerut">Meerut</option>
		    <option value="Moradabad">Moradabad</option>
		    <option value="Mumbai">Mumbai</option>
		    <option value="Muzaffarnagar">Muzaffarnagar</option>
		    <option value="Muzaffarpur">Muzaffarpur</option>
		    <option value="Mysore">Mysore</option>
		    <option value="Nagpur">Nagpur</option>
		    <option value="Nanded">Nanded</option>
		    <option value="Nashik">Nashik</option>
		    <option value="Nellore">Nellore</option>
		    <option value="Noida">Noida</option>
		    <option value="Palakkad">Palakkad</option>
		    <option value="Patna">Patna</option>
		    <option value="Pondicherry">Pondicherry</option>
		    <option value="Pune">Pune</option>
		    <option value="Raipur">Raipur</option>
		    <option value="Rajahmundry">Rajahmundry</option>
		    <option value="Rajkot">Rajkot</option>
		    <option value="Ranchi">Ranchi</option>
		    <option value="Rourkela">Rourkela</option>
		    <option value="Salem">Salem</option>
		    <option value="Sangli">Sangli</option>
		    <option value="Siliguri">Siliguri</option>
		    <option value="Solapur">Solapur</option>
		    <option value="Srinagar">Srinagar</option>
		    <option value="Surat">Surat</option>
		    <option value="Thane">Thane</option>
		    <option value="Thiruvananthapuram">Thiruvananthapuram</option>
		    <option value="Thrissur">Thrissur</option>
		    <option value="Tiruchirappalli">Tiruchirappalli</option>
		    <option value="Tirunelveli">Tirunelveli</option>
		    <option value="Tirupati">Tirupati</option>
		    <option value="Tiruppur">Tiruppur</option>
		    <option value="Ujjain">Ujjain</option>
		    <option value="Vadodara">Vadodara</option>
		    <option value="Varanasi">Varanasi</option>
		    <option value="Vasai-Virar">Vasai-Virar</option>
		    <option value="Vijayawada">Vijayawada</option>
		    <option value="Visakhapatnam">Visakhapatnam</option>
		    <option value="Warangal">Warangal</option>
		   <c:choose>
            <c:when test="${i.city == null || i.city == ''}">
                <form:option value="" label="Select City" />
            </c:when>
            <c:otherwise>
                <form:option value="${i.city}" label="${i.city}" />
            </c:otherwise>
        </c:choose>
    </form:select>
		   
		<br>
		<br>
				
				
			Password:
			<form:label path="password"></form:label>
			<form:input id = "pswd" path="password" type="text" class="form-control"   name="password" 
				placeholder="Enter Password" required="true"/>
			<br>
			<br>
			


			<input type="submit" value="Submit" class="btn btn-black" onclick="alertname()" ><br><br>
	</form:form>

	
	</div><br>

            </div>
         </div>
      </div>
	
<footer class="footer">

	<ul class="social-icon">
		<li class="social-icon__item"><a class="social-icon__link"
			href="#"> <ion-icon name="logo-facebook"></ion-icon>
		</a></li>
		<li class="social-icon__item"><a class="social-icon__link"
			href="#"> <ion-icon name="logo-twitter"></ion-icon>
		</a></li>
		<li class="social-icon__item"><a class="social-icon__link"
			href="#"> <ion-icon name="logo-linkedin"></ion-icon>
		</a></li>
		<li class="social-icon__item"><a class="social-icon__link"
			href="#"> <ion-icon name="logo-instagram"></ion-icon>
		</a></li>
	</ul>
	<ul class="menu">
		<li class="menu__item"><a class="menu__link" href="File.jsp">Home</a></li>
		<li class="menu__item"><a class="menu__link" href="about">About</a></li>
		<li class="menu__item"><a class="menu__link" href="contact">Contact</a></li>

	</ul>
	<p>&copy;2023 Aditya Tripathy | All Rights Reserved</p>
	</footer> 		
</body>
	<script type="text/javascript">

			function alertname() 
			{
			alert("Form has been updated.");
			}
   
	</script>
	<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<style>

p{
font-size: 25px;
}
button{
margin-right: 50px;
}
	
.btn-black {

	padding:6px;
	border-radius: 9px;
	background-color: #000 !important;
	color: #fff;
}
body{
font-family: "Lato", sans-serif;
}
.form-control{
 border-radius:12px;
 padding:5px ;
 width:35%;
 margin-bottom:10px;
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
        margin-top: 10px;
    }

    .register-form{
        margin-top: 5px;
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

.footer {
	border-radius:12px;
    margin-left:40%;
	position: relative;
	width: 53%;
	background: black; /*  #3586ff */
	min-height: 100px;
	padding: 20px 50px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.social-icon, .menu {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 10px 0;
	flex-wrap: wrap;
}

.social-icon__item, .menu__item {
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

footer a:active, footer a:hover {
	border-radius: 15px;
	background: blue;
	transition: .5s;
}

</style>
</html>