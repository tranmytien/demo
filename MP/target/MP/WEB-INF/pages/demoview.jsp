<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<html>
 <head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <title>Department List</title>
 </head>
 <body>
     <div align="center">
         <h1>Department List</h1>
         <table border="1">
             <th>id</th>
             <th>name</th>
             <th>price</th>
             <th>image</th>
             <th>des</th>
             <th>type</th>
            
             <c:forEach var="pr" items="${pr}" varStatus="status">
             <tr>
                 <td>${pr.PRODUCT_ID}</td>
                 <td>${pr.PRODUCT_NAME}</td>
                 <td>${pr.PRODUCT_PRICE}</td>
                 <td>${pr.PRODUCT_IMAGE}</td>   
                 <td>${pr.PRODUCT_DESCRIPTION}</td>  
                 <td>${pr.PRODUCT_TYPE}</td>                           
             </tr>
             </c:forEach>                
         </table>
     </div>
 </body>
</html>