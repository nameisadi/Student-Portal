<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
             <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%-- <link rel="stylesheet" href="<c:url value='/css/ack.css'/>" type="text/css" />
 --%>
 <style>
        body {
              background-image: url("ack.jpg");
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
<script type="text/javascript">

function printDiv(divName) {
    var printContents = document.getElementById(divName).innerHTML;
    var originalContents = document.body.innerHTML;

    document.body.innerHTML = printContents;

    window.print();

    document.body.innerHTML = originalContents;
} 
</script>
<title>Acknowledgement</title>
</head>
<body >
   <form autocomplete="off">
<%--  <h4><c:out value="${hii}"></c:out> <br><br></h4>  --%>
        
        <center>
              <div id="printableArea">          <h1>
              <p>
                 <u>Acknowledgement</u>
              </p>
          </h1><br>
    <table border="2" width="400">
        <c:forEach var="list" items="${acknowladgement }">
           <tr>
               <th> 
                   <p id="para">Name  </p>
               </th>   
               <td>
                   <c:out value="${list.name }"></c:out><br><br>
               </td>
          </tr> 
          <tr>
              <th>
                  <p id="para">Roll number</p>
              </th>  
              <td>
                  <c:out value="${list.roll_Number }"></c:out><br><br>
              </td>
          </tr>
          <tr>
              <th>
                  <p id="para">Semester</p>
              </th>  
               <td>
                    <c:out value="${list.semester }"></c:out><br><br>
               </td>
          </tr> 
          <c:if test="${not empty  list.subject_I}">
              <tr>
                  <th>
                      <p id="para">Subject_i</p>
                  </th>
                  <td> 
                      <c:out value="${list.subject_I }"></c:out><br><br>
                  </td>
              </tr>
          </c:if>
          <c:if test="${not empty  list.subject_II}">
               <tr>
                   <th>
                       <p id="para">Subject_ii</p>
                   </th>
                   <td>
                       <c:out value="${list.subject_II }"></c:out><br><br>
                   </td>
               </tr>
          </c:if>
          <c:if test="${not empty  list.subject_III}">
              <tr>
                  <th>
                      <p id="para">Subject_iii</p>
                  </th>
                  <td>
                      <c:out value="${list.subject_III }"></c:out><br><br>
                  </td>
              </tr>
          </c:if>
          <c:if test="${not empty  list.subject_IV}">
             <tr>
                 <th>
                     <p id="para">Subject_iv</p>
                 </th> 
                 <td> 
                     <c:out value="${list.subject_IV }"></c:out><br><br>
                 </td>
             </tr>
          </c:if>
          <c:if test="${not empty  list.subject_V}">
               <tr>
                   <th>
                       <p id="para">Subject_v</p>
                   </th>
                   <td> 
                       <c:out value="${list.subject_V }"></c:out><br><br>
                   </td>
              </tr>  
           </c:if>
                  <tr>
                      <th>
                          <p id="para">Amount</p>
                      </th>
                      <td>
                          <c:out value="${list.amount }"></c:out><br><br>
                      </td>
                </tr>
        </c:forEach>
   </table> 
   </div>
          <input type="button" value="Print this page" onClick=" printDiv('printableArea')">
   </center>


  </form>   
</body>
</html>