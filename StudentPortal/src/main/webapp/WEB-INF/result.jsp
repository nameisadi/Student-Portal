
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
                    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
  
      margin-left:100px;
      background-color:lightblue;
     }
   p{  
      text-align: center;  
      color: red;  
    }   
  #para{  
        text-align: center;  
        color: blue;  
        }   
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>result</title>
</head>
<body>
 
    <center>
      <h1><p><u>Check Result</u></p></h1><br>
      <form:form action="result" modelAttribute="show">
       <p id="para"> Roll Number :<form:input path="Roll_Number" required="true"/></p>
           <p id="para"> Semester : <form:select path="Semester">
               <form:option value="First Semester" label="First Semester"/>
               <form:option value="Second Semester" label="Second Semester"/>
      </form:select></p>
      <p id="para">  Stream : <form:select path="Stream">
               <form:option value="Arts" label="Arts"/>
               <form:option value="Commerce" label="Commerce"/>
               <form:option value="Science" label="Science"/>
               
      </form:select></p><br>
       <input type="submit" value="show result"/>
       
     
       </form:form>
    </center>

</body>
</html>