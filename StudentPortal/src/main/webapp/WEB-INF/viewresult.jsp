<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
         <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recheck</title>
<style>
      p{  
    text-align: center;  
    color: red;  
     } 
     #para{  
    text-align: center;  
    color: blue;  
     }   
     body {
   background-image: url("ack.jpg");
   margin-left:100px;
   background-color:lightblue;
   }  

</style>

<script type="text/javascript">


function countCheck() {
	
	 var sub=${count }
	 var checked=sub/2;
	 var amount=50;
	var noOfCheckedSubject=document.querySelectorAll('input[type="checkbox"]:checked').length;
	
	 if(noOfCheckedSubject>=checked)
		{
		 amount=300;
		}
	 else{
		amount=noOfCheckedSubject*amount;	
		}   
	alert("you have applied for "+noOfCheckedSubject+" subjects and fee you have to pay is  "+amount)
	//$("#amount").val(amount);
	document.getElementById("amount").value = amount;
	
	

  
}


</script>

</head>
<body>

 <form:form action="recheck" method="post" modelAttribute="check" >
  <center>
     <h1><p><u> Apply For Recheck</u></p></h1><br>
   <table border="1" width="100">
    <c:forEach var="row" items="${message }">
                   
    
           <tr>
               <th><p id="para">Name</p></th>
           
              <th><p id="para">Roll number</p></th>
              <th><p id="para">Semester</p></th>
              <th><p id="para">Subject1</p></th>
              <th><p id="para">Subject2</p></th>
              <th><p id="para">Subject3</p></th>
              <th><p id="para">Subject4</p></th>
              <th><p id="para">Subject5</p></th>
           </tr>
     
           <tr>
               <th>${row.name }</th>
           
               <th>${row.roll_Number }</th>
               <th>${row.semester }</th>
              
           
               <th>
                   <c:if test="${not empty row.subject_I }"> <input id="recheck" type="checkbox" name="recheck" value="subject1" onclick="countCheck()" />
                   <c:out value="${row.subject_I}"></c:out>  
                   </c:if>
               </th>
         
               <th>
                   <c:if test="${not empty row.subject_II }"><input id="recheck" type="checkbox" name="recheck" value="subject2" onclick="countCheck()" /> 
                   <c:out value="${row.subject_II}"></c:out> 
                   </c:if>
               </th>
         
               <th>
                   <c:if test="${not empty row.subject_III }"><input id="recheck" type="checkbox" name="recheck" value="subject3" onclick="countCheck()" />
                   <c:out value="${row.subject_III}"></c:out> 
                   </c:if>
               </th>
         
               <th>
                   <c:if test="${not empty row.subject_IV }"><input id="recheck" type="checkbox" name="recheck" value="subject4" onclick="countCheck()" />
                     <c:out value="${row.subject_IV}"></c:out>
                   </c:if>
               </th>
                  
               <th>
                    <c:if test="${not empty row.subject_V }"> <input id="recheck" type="checkbox" name="recheck" value="subject5" onclick="countCheck()" />
                       <c:out value="${row.subject_V}"></c:out>
                    </c:if>
               </th>       
         </tr>
    
  </c:forEach>
           
           
           
         
<c:forEach var="row" items="${message }">
           

    <tr>
         <td>
              ${row.name}
              </td>
        <td> ${row.roll_Number }
                     <input type="hidden" id="hiddenroll" name = "hiddenroll" value = "${row.roll_Number }"/>
        </td>
        
        
        <td>${row.semester }
                     <input type="hidden" id="hiddensem" name = "hiddensem" value = "${row.semester }"/>
        </td> 
        
        <th>
             <c:if test="${row.subject1 ne 0 }"><c:out value="${row.subject1}"></c:out> </c:if>
        </th>
        
        <th>
            <c:if test="${row.subject2 ne 0 }"><c:out value="${row.subject2}"></c:out> </c:if>
        </th>
        
        <th>
            <c:if test="${row.subject3 ne 0 }"><c:out value="${row.subject3}"></c:out> </c:if>
        </th>
 
        <th>
            <c:if test="${row.subject4 ne 0 }"><c:out value="${row.subject4}"></c:out> </c:if>
        </th>
        
        <th>
            <c:if test="${row.subject5 ne 0 }"><c:out value="${row.subject5}"></c:out> </c:if>
        </th>
    </tr>
  
 </c:forEach>
       <tr><td>Amount</td>
            <td>
               <input name="amount" id="amount" />
            </td>
            
       </tr>
        <tr> 
            <td>
                <input type="submit"   onclick=" return countCheck()" value="apply"/>
            </td>
        </tr>
   
      </table>
    </center> 
           
    
   </form:form>
 
  </body>
</html>