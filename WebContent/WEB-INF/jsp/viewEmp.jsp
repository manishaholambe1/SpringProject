<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<h1>Employees List</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>Name</th><th>Salary</th></tr>  
   
    <c:forEach var="login" items="${list}">  
   <tr>  
   <td>${login.id}</td>  
   <td>${login.username}</td>  
   <td>${login.password}</td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
  
   
   <a href="/SpringPagination/viewEmp/1">1</a>   
   <a href="/SpringPagination/viewEmp/2">2</a>   
   <a href="/SpringPagination/viewEmp/3">3</a>  
</body>
</html>


  

  