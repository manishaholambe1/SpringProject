<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <!DOCTYPE html>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>   
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
	
	
	
	
<style>

body,html{
   
    height: 100%;
    margin: 0;
     background-image: url("images/background.jpg");

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

<body   class="container">

<div class="page-header" >
		<img src="images\back_3.jpg">
</div>
	

  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Performance Testing</a>
    </div>
    <ul class="nav navbar-nav">
     
    
	<li ><a href="#">Home</a></li>
      
		<li><a href="PerformanceUI.jsp">PerformanceUI</a></li>
		<li><a href="Reports.jsp">Reports</a></li>
		<li><a href="#!TestSuite">Test Suite</a></li>	
		<li class="active"><a href="Help.jsp">Help</a></li>
		
		</ul>
	
</div>
</nav>


<div class="row" style="margin-top:10%">
	<div class="col-md-11 col-md-offset-1" style="font-size:18px !important ; color:#c6d2e7;" ><!--#c6d2e7;-->
		<div class="row">
			<div class="row">
				<h4> For Improvement Suggestions click here:</h4>
			</div>
		</div>
<div class="col-md-6 col-md-offset-4">

	<div class="row">

			<p>Web.Config
       		 <a href="http://sourcesafe/sites/MISERP/Shared%20Documents/ESG-QE/ESG%20Performance%20Testing/Performance%20improvement%20suggesions/Webconfig_changes.xlsx">
         	 <span class="glyphicon glyphicon-download-alt"></span>
       		 </a>
     		 </p>


		<!--<h4>  <a style="color:#c6d2e7;"  href="http://sourcesafe/sites/MISERP/Shared%20Documents/ESG-QE/ESG%20Performance%20Testing/Performance%20improvement%20suggesions/Webconfig_changes.xlsx"> Web Config </a></h4>-->
	</div>
	<div class="row" style="margin-top:2%">

			<p>Web Application
        	<a href="http://sourcesafe/sites/MISERP/Shared%20Documents/ESG-QE/ESG%20Performance%20Testing/Performance%20improvement%20suggesions/WebApplication_Changes.xlsx">
         	 <span class="glyphicon glyphicon-download-alt"></span>
       		 </a>
     		 </p>


		</div>

	<div class="row" style="margin-top:2%">

		<p>Database Operation
       		 <a href="http://sourcesafe/sites/MISERP/Shared%20Documents/ESG-QE/ESG%20Performance%20Testing/Performance%20improvement%20suggesions/DatabaseOperations_Changes.xlsx">
         		 <span class="glyphicon glyphicon-download-alt"></span>
        	</a>
     	 </p>
			</div>
	<div class="row" style="margin-top:2%">


			<p>General Changes
       		 <a href="http://sourcesafe/sites/MISERP/Shared%20Documents/ESG-QE/ESG%20Performance%20Testing/Performance%20improvement%20suggesions/General%20Changes.xlsx">
          	<span class="glyphicon glyphicon-download-alt"></span>
        	</a>
     		 </p>


	</div>
</div>
</div>
</div>


</div>
</body>
</html>