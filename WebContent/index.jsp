<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular-route.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">



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
	
	.navbar-inverse {
    background-color: #3090C7;
    border-color: #E7E7E7;
}
</style>
	

</head>
   
   
   <body class="container">
      
      
      <div class="page-header">
			
			<img src="images\back_3.jpg">
			
	</div>
	
      <nav class="navbar navbar-inverse">
  	<div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Performance Testing</a>
    </div>
    <ul class="nav navbar-nav">
     
    
	<li class="active"><a href="#">Home</a></li>
      
		<li><a href="PerformanceUI.jsp">PerformanceUI</a></li>
		<li><a href="Reports.jsp">Reports</a></li>
		<li><a href="#!TestSuite">Test Suite</a></li>	
		<li><a href="#Help.jsp">Help</a></li>
		
		</ul>
	
</div>
</nav>



<!-- 
<body data-ng-app="myApp"  >




<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Performance Testing</a>
    </div>
    <ul class="nav navbar-nav">
     
    
	<li class="active"><a href="#">Home</a></li>
      
		<li><a href="PerformanceUI.jsp">PerformanceUI</a></li>
		<li><a href="Reports.jsp">Reports</a></li>
		<li><a href="#!TestSuite">Test Suite</a></li>	
		<li><a href="#!Help.jsp">Help</a></li>
		<li><a href="UploadScriptPage.jsp">Upload</a></li>
		</ul>
	
</div>
</nav>


<div data-ng-view></div>

<script>

 
var app = angular.module("myApp", ["ngRoute"]);
app.config(function($routeProvider) {
    $routeProvider
    .when("/", {
        templateUrl : "main.html"
    })
    .when("/PerformanceUI", {
        templateUrl : "PerformanceUI.jsp"
    })
    .when("/Reports", {
        templateUrl : "Reports.jsp"
    })
    .when("/UploadScriptPage", {
        templateUrl : "UploadScriptPage.jsp"
    });
    
});



</script>
-->
</body>

</html>




