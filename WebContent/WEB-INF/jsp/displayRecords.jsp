<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	


<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"></script>

<script type="text/javascript">

          
           
           $(document).ready(function() {
        	    
        	    
        	    $('#example').DataTable({
            	    
            	    "lengthMenu": [ [2, 4, 8, -1], [2, 4, 8, "All"] ],
            	    "pageLength": 4
            	    });
            	} );
        


           
</script>
<style>
 body
 {
 
 	    height: 100%;
    margin: 0;
     background-image: url("../images/background.jpg");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
 }
 
 img
	{
		width:1140px;
		height:150px;
	}
	

</style>

</head>
<body class="container">
 
 
<div class="page-header" >

		<img src="../images/back_3.jpg">
</div>
	

  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Performance Testing</a>
    </div>
    <ul class="nav navbar-nav">
     
    
	<li class="active"><a href="#">Home</a></li>
      
		<li><a href="/SpringPagination/PerformanceUI.jsp">PerformanceUI</a></li>
		<li><a href="/SpringPagination/Reports.jsp">Reports</a></li>
		<li><a href="#!TestSuite">Test Suite</a></li>	
		<li><a href="/SpringPagination/Help.jsp">Help</a></li>
		
		</ul>
	
</div>
</nav>

 
 
 
 
 
<table id="example"   class="table table-bordered" cellspacing="0" width="100%" style="overflow-x:auto">
 
<thead>

	<tr>
        <th>Application Name</th>
        <th>Module Name</th>
        <th>File Name</th>
        <th>Report Date</th>
        
      </tr>
</thead>      

   
   
  
	
	<tbody>
	
	    <c:forEach var="application" items="${list}">
   <tr>  
   <td>${application.appName}</td>  
   <td>${application.moduleName}</td>  
   <!-- <td><a href="${application.pathLink}">${application.fileName}</a></td>  -->

	<td>${application.fileName}</td>
   
   <td>${application.reportdate}</td>
   
   </tr>  
   </c:forEach> 
   </tbody> 
 
</table>


</body>
</html>