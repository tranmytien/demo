<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>  
 <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
 <title>View Batch</title>  
 </head>  
 <body>  
      <form:form id="mainForm" method="post" commandName="model">  
           <strong>Choose the batch:</strong>  
           <form:select path="selectedBatch.id" onchange="submitForm()">  
                <form:options items="${model.batches }" itemValue="id" itemLabel="name"/>  
           </form:select>  
           <br/><br/>  
           <strong>Students engaged to the batch: </strong><br/>  
           <c:forEach items="${model.selectedBatch.students }" var="student">  
                ${student.id } - ${student.name } <br/>  
           </c:forEach>            
      </form:form>  
 </body>  
 <script type="text/javascript">  
      function submitForm(){  
           document.getElementById('mainForm').submit();  
      }  
 </script>  
 </html>  