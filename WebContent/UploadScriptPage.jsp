<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>  
<html>  
 <head>  
	 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	 <meta name="viewport" content="width=device-width,initial-scale=1" />

	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
  <script src="http://osvaldas.info/examples/main.js"></script>
	<script src="http://osvaldas.info/examples/drop-down-navigation-touch-friendly-and-responsive/doubletaptogo.js"></script>
		
		 
 <title> File Upload</title>  
 
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

 select,option {
        width:250px;
        height:30px;
    }
    
 	img
	{
		width:1140px;
		height:150px;
	}
	
	

.navbar-inverse {
    background-color:
   }
   
   select,option {
        width:195px;
        height:30px;
    }
    
	#label1,#label2,a
	{
		float:right;
	}
    
	
 </style>
 </head>  
 
 <script type="text/javascript">
 



 $(document).on("click", function(e){
     
 	
     if($(e.target).is('#modelId')){
     	$('#modelDivId').show();
       
       
  	  }
     
     if($(e.target).is('#modelOKId')){
         
    	
    	 var modelname= $("#modelname").val();
	 	 var folder= $("#folder1").val();
    	 alert(modelname + "  "+folder);
    	
	 	window.location.replace("dir.jsp?modelname="+modelname+"&folder1="+folder);
    	
     }
     
     
 });

 
 function changeSymbol()
 {
 	
 	var s=document.getElementById("symbol").innerHTML;
 	
 	if(s=='+' || s=='-')
 	{
 		if(s=='+')
 			document.getElementById("symbol").innerHTML='-';
 		else
 			document.getElementById("symbol").innerHTML='+';
 			
 	}

 }

 
window.onload=function(){
	
	
	
		   
		 
		   var xhReq = new XMLHttpRequest();
		  // xhReq.open("GET", "file.json", false);
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
			    
			        
			$("#folder1").append('<option rel="' + index + '" value="'+value.id+'">'+value.name+'</option>');
			        
			        $("#folder1").change(function () {
			            $("#subfolder, #files1").find("option:gt(0)").remove();
			            $("#subfolder").find("option:first").text("select folder");
			            
			            folder_id= $(this).find('option:selected').attr('rel');
			            console.log("folder INDEX : " + folder_id);
			            
			            $.each(myJson.folder[folder_id].subfolders, function (index1, value1) {
			               // $("#subfolder").find("option:first").text("Choisir");
			                $("#subfolder").append('<option rel="' + index1 + '" value="'+value1.id+'">'+value1.name+'</option>');
			            });
			            
			        });
			        
			        
			        $("#subfolder").change(function () {
			            $("#files1").find("option:gt(0)").remove();
			            $("#files1").find("option:first").text("select file");
			            
			            subfolder_id= $(this).find('option:selected').attr('rel');
			            console.log("subfolder INDEX : " + subfolder_id);
			                        
			            $.each(myJson.folder[folder_id].subfolders[subfolder_id].files, function (index2, value2) {
			              //  $("#files1").find("option:first").text("");
			                $("#files1").append('<option rel="' + index2 + '" value="'+value2.id+'">'+value2.name+'</option>');
			            });
			            
			                   
			        });     
			    
		
				
		   
	});



		 
	
}


</script>
 
 
 
 <body class="container"> <!-- class="container" style="background-image: url('bootstrap/Images/bk1.jpg');">  -->


<div class="page-header" >
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
		<li><a href="Help.jsp">Help</a></li>
		
		</ul>
	
</div>
</nav>


<!-- 
<div class="form-group">
<button type="button"  id="modelId" class="btn btn-default">Create Model</button>
</div>

<div class="form-group" id="modelDivId" style="display:none">

    	<div class="form-group">
			<div class="row">
    		<div class="col-sm-2"><label> Model name:</label></div>
    		<div class="col-sm-2">
    		<input type="text" class="form-control" id="modelname"  name="modelname"  placeholder="Enter new Model name">
    		</div>
    		<div class="col-sm-8"></div>
    	</div>
    	</div>
    	<div class="form-group">
    	<div class="row">
    		<label style="font-size:16px;color:#c6d2e7;">Select Application</label>
			<div class="col-md-8">
              <select id="folder1" name="folder1"  class="form-control">
					<option value="000">-Select Application-</option>
				</select>
			<div>
    	</div>
    	</div>
    	
    	
	<button type="button"   id="modelOKId">Ok</button>
</div>
</div>
</div>
-->






 <form action="rest/savefile" method="post" enctype="multipart/form-data"> 
		
  <!-- <form action="rest/user-form/register" method="post" enctype="multipart/form-data">  -->
		<div class="col-md-10 col-md-offset-1"  style="margin-top:10%; margin-right:2%;">	
			<div class="row" style="margin-top:8%;margin-right:2%;margin-left:2%; ">
				<div class="col-md-6">
						<div class="col-md-4"><label style="font-size:16px;color:#c6d2e7;">Select Application</label></div>
						<div class="col-md-8">
                            <select id="folder" name="folder">
								<option value="000">-Select Application-</option>
							</select>
						</div>
				</div>
		
				<div class="col-md-6">
						<div class="col-md-4"><label style="font-size:16px;color:#c6d2e7;">Select Module</label></div>
							<div class="col-md-8">
		       					<select id="subfolder" name="subfolder">
									<option value="000">-Select Module-</option>
								</select>
                  			</div>
					</div>			
				</div> 
				
				
				
				
		<div class="row" style="margin-top:4%;margin-right:2%;margin-left:2%; ">
	 
			<div class="col-md-2 col-md-offset-1 " style="margin-left:2%;"><label style="font-size:16px;color:#c6d2e7" for="image">Select File</label> </div>
				<div class="col-md-2"><input type="file" name="file" /></div>  
					<div class="col-md-6">
					<div class="col-md-3 col-md-offset-1">
						<input type="submit" value="Upload File" class="btn btn-success">
					</div>
					</div> 

	
		</div>
		<div class="row" style="margin-top:4%;margin-right:2%;margin-left:2%; "></div>
		
		</div>  
		
		
					
		
	
		
</form>


<div class="container">
  
 
   
  <div class="row">
  <div class="col-sm-2"></div>
   <div class="col-sm-4">
  
  <div class="panel panel-default">
    <div class="panel-heading" >Create Model (If model does not exist)
    	<label id="label1">]</label>
    	<a id="symbol" data-toggle="collapse" data-target="#modelpanel" onclick=" return changeSymbol();">+</a>
    	<label id="label2">[</label>
    	
    	
    	
    </div>
    
    <div id="modelpanel" class="collapse">
    <div class="panel-body" style=margin:10px;>
  	
  	  <div class="row">
  	  		<div class="form-group">
  	  				
  	  				<div class="col-md-4">Model Name</div>
            		<div class="col-md-8">
            				<input type="text" class="form-control" id="modelname"  name="modelname"  placeholder="Enter new Model name">
            		</div>
            		
         	 </div>
   		 </div> 
   		 <br>
   		 <div class="row">
  	  		<div class="form-group">
  	  				  	  				
            		<div class="col-md-4">Application Name</div>
            		<div class="col-md-8">
            				<select id="folder1" name="folder1" >
								<option value="000">-Select Application-</option>
							</select>
					</div>
            		
         	 </div>
   		 </div> 
   		 
   		 <div class="row">
  	  		<div class="form-group">
  	  				
  	  				
            		<div class="col-md-5"></div>
            		<div class="col-md-4">
            				<button type="button"   id="modelOKId">Ok</button>
					</div>
					<div class="col-md-3"></div>
            		
         	 </div>
   		 </div> 
   		 
   		  
   	</div>
	</div>
     
</div>
</div>
</div>
</div>



</body>  
</html>  

 