<%@ page import="java.sql.*,com.psl.*,java.util.*" %>

<!DOCTYPE html>
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
	
		
	
	<!--<style>
		.ui-datepicker {font-size:12px; }-->
	
		
	<style>
	
	
	img
	{
		width:1140px;
		height:150px;
	}
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
	
	</style>
	
		
	<script type="text/javascript">
	
	 $(function () {
         $('#startdatetime').datetimepicker({
          
             format: 'MM/DD/YYYY'
         });
         $('#enddatetime').datetimepicker({
            
              format: 'MM/DD/YYYY'
          });
     });

	 
	
	</script>
	
	
	
	
	<script type="text/javascript">
	
	

window.onload=function(){
	
	
	
		//alert("HIIIII");
		   
		   
		   var xhReq = new XMLHttpRequest();
		   xhReq.open("GET", "test.json", false);
		   xhReq.send(null);
		   var myJson = JSON.parse(xhReq.responseText); 
		  // alert(myJson);
		    
		   
		   $.each(myJson.folder, function (index, value) {
			    var folder_id;
			    var subfolder_id;
			    var  file_id;
			        
			        $("#folder").append('<option rel="' + index + '" value="'+value.id+'">'+value.name+'</option>');
			        
			        $("#folder").change(function () {
			            $("#subfolder, #files1").find("option:gt(0)").remove();
			            $("#subfolder").find("option:first").text("select folder");
			            
			            folder_id= $(this).find('option:selected').attr('rel');
			            console.log("folder INDEX : " + folder_id);
			            
			            $.each(myJson.folder[folder_id].subfolders, function (index1, value1) {
			               // $("#subfolder").find("option:first").text("Choisir");
			                $("#subfolder").append('<option rel="' + index1 + '" value="'+value1.id+'">'+value1.name+'</option>');
			            });
			            
			        });
			    
			         
			    
		
				
		   
	});



	

	
}


$(document).on("click", function(e){
    
	
    if($(e.target).is('#modelId')){
    	$('#modelDivId').show();
      
      
 	  }
   
   /* if($(e.target).is('#submitid')){
    	        
        window.location.href ="dir.jsp";
    
    }*/
 });


</script>
</head>
<body class="container" >

<div class="page-header"> <!--  style=background-position: center; background-repeat: no-repeat; background-size: cover; width: 95%;height:13%;margin-left:5.3%; margin-right:4%;">-->
	<img src="images\back_3.jpg">
		<!-- <div style="margin-left:80%; margin-bottom:5.1%;">
			<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Login As Admin </button>
		</div>-->
</div>

 <nav class="navbar navbar-inverse" id="navid">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Performance Testing</a>
    </div>
    <ul class="nav navbar-nav">
     
    
	<li ><a href="#">Home</a></li>
      
		<li><a href="PerformanceUI.jsp">PerformanceUI</a></li>
		<li class="active"><a href="Reports.jsp">Reports</a></li>
		<li><a href="#!TestSuite">Test Suite</a></li>	
		<li><a href="Help.jsp">Help</a></li>
		
		</ul>
	
</div>
</nav>




<!-- <form action="/rest/file/create" method="post">
<button type="button"  id="modelId" class="btn btn-default">Create Model</button>

<div class="form-group" id="modelDivId" style="display:none">
    	<div class="form-group">
    		<div class="col-sm-4">
    		Enter new Model name:<input type="text" class="form-control" name="modelname"  name="modelname"  placeholder="Enter new Model name">
    		</div>
    		<div class="col-sm-8"></div>
    	</div>
    	
<button type="submit" id="submitid" >Ok</button>
</div>

</form>-->

 <form action="rest/viewRecords1" method="post">

<!-- <form action="showdata.jsp" method="post">-->
<!--<form action="rest/user-form/show" method="post">-->
 <!-- <form action="showdata_correct.jsp" method="post">-->
 <!--<form action="ViewRecords.jsp" method="post">-->
 <!-- <form action="view.jsp" method="post">-->
<div class="row" style="margin-top:10%;">
       
				
	<div class="row" style="margin-top:5%;">
				
					<div class="col-sm-4 col-sm-offset-2">
						<div class="form-inline">
							<div class="form-group">
								<label style="font-size:16px; color:#c6d2e7!important;">
									Start Date :
								</label>
					
							<div class="form-group">
																
								
								<div class='input-group date' id='startdatetime' >
              							  <input type='text' class="form-control"  placeholder="mm/dd/yyyy" name='startdatetime'/>
                						  <span class="input-group-addon">
                   							 	<span class="glyphicon glyphicon-calendar"></span>
                    					  </span>
            						</div>
							
							</div>
							</div>
							
							
            						
							
							
						</div>
					</div>
        
		
		
		<div class="col-sm-4 ">
						<div class="form-inline">
							<div class="form-group">
								<label style="font-size:16px;color:#c6d2e7!important;">
									End Date :
								</label>
					
							<div class="form-group">
								
								
								<div class='input-group date' id='enddatetime' >
              							  <input type='text' class="form-control"  placeholder="mm/dd/yyyy"  name='enddatetime'/>
                						  <span class="input-group-addon">
                   							 	<span class="glyphicon glyphicon-calendar"></span>
                    					  </span>
            						</div>
							</div>
							</div>
						</div>
		</div>
        
		
		
		
    </div>
	<div class="row" style="margin-top:4%">
		<div class="col-sm-4 col-sm-offset-2 ">
						<div class="form-inline">
							<div class="form-group">
								<label style="font-size:16px;color:#c6d2e7!important;">
									Select Module :
								</label>
					
							<div class="form-group">
									<div class="col-md-8" class="form-control">
                    					<select id="folder" name="folder">
												<option value="000">-Select Module-</option>
										</select>
  									</div>
							</div>
							</div>
					</div>
		</div>
		</div>
	<div class="row" style="margin-top:4%;">
		<div class="col-sm-3 col-sm-offset-5">
			<button type="submit" class="btn btn-info">Submit</button>
		</div>
	</div>
	
	
	
	<div class="row" style="margin-top:4%;background-color:#c6d2e7">
		Your Report
	</div>
	
	
</div>


 </form>

</body>
</html>