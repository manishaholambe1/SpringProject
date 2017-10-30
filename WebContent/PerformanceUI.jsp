<%@page import="com.psl.FolderContents"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>




  <meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
  <script src="http://osvaldas.info/examples/main.js"></script>
	<script src="http://osvaldas.info/examples/drop-down-navigation-touch-friendly-and-responsive/doubletaptogo.js"></script>
	
	-->
	
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
	
	
	
	
		
</head>
<%
	FolderContents f=new FolderContents();
	f.generateJson();
%>
        
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
        
            body{
                margin: 0;
                padding: 0;
                font-family: cursive;
            }
            
            
            table{
                padding-left: 1%;	
                padding-bottom: 5%;                
            }

	    .paddingLeft{
                padding-left: 1%;
	    }
	    
            
            input[type="button"]{
                width: 8%;
                margin-left: 1%;
            }

	    .required:after {
	    	color: #e32;
	    	content: ' *';
	    	display:inline;
	    }
            
            
		select,option {
        width:250px;
        height:30px;
    }
    
		
            
        </style>
          
   

<script type="text/javascript">

/*
$("#my_form").submit(function(event){
    event.preventDefault(); //prevent default action 
    var post_url = $(this).attr("action"); //get form action url
    var request_method = $(this).attr("method"); //get form GET/POST method
    var form_data = $(this).serialize(); //Encode form elements for submission
    
    $.ajax({
        url : post_url,
        type: request_method,
        data : form_data,
        success: function(result) {
            alert("success");
        }
    }).done(function(response){ //
        $("#server-results").html(response);
    });
});*/


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







/*$( "#submitid" ).click(function() {
	
	alert("clicked");
	$.ajax({
        type: 'POST',
        url:  'http://localhost:8081/Performance/rest/user-form/register',
      
        async: true,
        success: function(result) {
            alert("success");
        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert(jqXHR.status + ' ' + jqXHR.responseText);
        }
    });
	   
});
/*function insertValues()
{
	  /* alert("inserting");
	   var xhttp = new XMLHttpRequest();
	    xhttp.open("POST", "/rest/file/insert", false);
	    xhttp.setRequestHeader("Content-type", "x-www-form-urlencoded");
	    xhttp.send();
	    var response = xhttp.responseText;
	    alert("inserted" +response);*/
	    
	   /* alert("Data: ");
	$.get("rest/user-form/register", function(data){
		  alert("Data: ");
		});
}*/



function resetAllValues()
{
document.forms[0].reset();


}	/*

function insertValues()
{
   $.ajax({
        type: 'POST',
        url:  'rest/Save/insert',
      
        async: true,
        success: function(result) {
            alert("success");
        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert(jqXHR.status + ' ' + jqXHR.responseText);
        }
    });
}*/


</script>

<!-- <script type="text/javascript">
	
	 $(function () {
      
         $('#enddatetime').datetimepicker({
            
              format: 'DD/MM/YYYY'
          });
     });

	 
	
	</script>
	-->

<style>
	
	img
	{
		width:1140px;
		height:150px;
	}
	
	</style>
			
			

    </head>
    
    <body class="container">
      
    
<div class="page-header"> <!--  style=background-position: center; background-repeat: no-repeat; background-size: cover; width: 95%;height:13%;margin-left:5.3%; margin-right:4%;">-->
	<img src="images\back_3.jpg">
		<!-- <div style="margin-left:80%; margin-bottom:5.1%;">
			<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Login As Admin </button>
		</div>-->
</div>

 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Performance Testing</a>
    </div>
    <ul class="nav navbar-nav">
     
    
	<li ><a href="#">Home</a></li>
      
		<li class="active"><a href="PerformanceUI.jsp">PerformanceUI</a></li>
		<li><a href="Reports.jsp">Reports</a></li>
		<li><a href="#!TestSuite">Test Suite</a></li>	
		<li><a href="Help.jsp">Help</a></li>
		
		</ul>
	
</div>
</nav>
    
        
		





<!-- <form action="Console1.exe" method="POST" onsubmit="return changeFunction()" target="_blank">
-->

<form action="rest/user-form/register" method="post" id="my_form">
<div class="col-md-10 col-md-offset-1"  style="margin-top:2%; margin-right:2%;">
	<div  class="row" style="margin-top:4%;">
        

           
				<div class="row" style="margin-top:12%;margin-right:2%;margin-left:2%; ">
				<div class="col-md-6">
				<div class="col-md-4"><label style="font-size:16px;color:#c6d2e7;">Select OS</label></div>
				<div class="col-md-8">
                    <select id="os" name="os" class="form-control">
                        <option>Windows</option>
                        <option disabled>Mac</option>
                        <option disabled>Linux</option>                        
                    </select>
				</div>
		</div>
		
		
		<div class="col-md-6">
				<div class="col-md-4"><label style="font-size:16px;color:#c6d2e7;">Select Tool</label></div>
					<div class="col-md-8">
                    		<select id="tool" name="tool" class="form-control">
                       		 <option>JMeter</option>
                        	<option disabled>VSTS</option>                        
                   			 </select>
					</div>
				</div>	
		
			</div> 
	
	
		 <div class="row" style="margin-top:4%;margin-right:2%;margin-left:2%; ">
				<div class="col-md-6">
					<div class="col-md-4"><label style="font-size:16px;color:#c6d2e7;">Select Application</label></div>
						<div class="col-md-8" class="form-control">
                  			 <select id="folder" name="folder">
									<option value="000">-Select Application-</option>
                   			 </select>
						</div>
					</div>
			
		
		
				<div class="col-md-6">
						<div class="col-md-4"><label style="font-size:16px;color:#c6d2e7;">Select Module</label></div>
							<div class="col-md-8" class="form-control">
                    			<select id="subfolder" name="subfolder">
									<option value="000">-Select Module-</option>
								</select>
                        </div>
				</div>	
		
		</div>
		
		
	
	
	<div class="row" style="margin-top:4%;margin-right:2%;margin-left:2%; ">
				<div class="col-md-6">
				<div class="col-md-4"><label style="font-size:16px;color:#c6d2e7;">Select Scenario</label></div>
		<div class="col-md-8">
                    <select id="files1" name="files1" class="form-control">
                    	<option value="000">-Select Files-</option>
                    </select>
		</div>
		</div>
		
		
		<div class="col-md-6">
				<div class="col-md-4"><label style="font-size:16px;color:#c6d2e7;">Number of Users</label></div>
		<div class="col-md-8">
                    <input id="numberOfUsers" name="numberOfUsers" type="number" value="1" onchange="changeFunction()" class="form-control" />
		</div>
		</div>	
		
		</div> <!--  row closed -->
	
	<div class="row" style="margin-top:4%;margin-right:2%;margin-left:8%;" > <a href="UploadScriptPage.jsp">Upload New Script</a></div>
	
	<!-- row start -->
	<div class="row" style="margin-top:4%; margin-left:4%;">

			<div class="panel-group">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapse1"><b>More Parameters</b> <span class="badge">+2</span></a>
						</h4>
					</div>
					<div id="collapse1" class="panel-collapse collapse">
						<div class="panel-body">
							<div class="row">
								
								
								<div class="col-sm-4 col-sm-offset-4">
								
										<div class="row" style="margin-top:4%;margin-left:2%;">
											<div class="form-inline">
												<div class="form-group">
														<label for="ramp" >Think Time  : </label>
														<input id="ramp" name="ramp" type="number" value="1" onchange="changeFunction()" class="form-control" />
												</div>
											</div>
										</div>
										<div class="row" style="margin-top:4%; margin-left:2%;">
											<div class="form-inline">
												<div class="form-group">
													<label for="loop" >Iteration : </label>
													<input id="loop" name="loop" type="number" value="1" onchange="changeFunction()" class="form-control" />
												</div>
											</div>
										</div>
								

								</div>
							</div>
							
						<div class="panel-footer">-</div>
						</div>
					
			
					</div>
				</div>
			</div>
	</div>
	

	<div class="row" style="margin-bottom:10%">
			
			<div class="col-sm-2 col-sm-offset-4">
	                    <!--<input type="submit" value="Submit" style="margin-top:10%" />-->
						<input type="submit" value="Submit"  id="submitid"  class="btn btn-success" />
			</div>
				<div class="col-sm-2 ">
				<button type="button" class="btn btn-success" onclick="resetAllValues()">Clear</button>
			</div>
		</div>
		
        
        
	</div>
</div>
	
	
	



   
        
        
 
  
        
              
        
     <!--    <script>
        
            //setting global variables
            var script;
            var d;
            var n;

          
            
            	
		//Sections IDs : guestContent adminLoginContent adminContent commonContent
		//Login as Admin
		function loginAsAdmin(){
			document.getElementById("adminLoginContent").style.display = 'block';
			document.getElementById("commonContent").style.display = 'none';
			document.getElementById("guestContent").style.display = 'none';
		}

		//Admin Page Back
		function adminBack(){
			document.getElementById("adminLoginContent").style.display = 'none';
			document.getElementById("commonContent").style.display = 'block';
			document.getElementById("guestContent").style.display = 'block';
		}

                function validate(){
                	var username = document.getElementById("username").value;
	                var password = document.getElementById("password").value;
        	        if(username === "admin" && password === "admin"){
                	    //alert("done");
			    //window.location.href = '/tools/admin/PerformanceUI.html';
				document.getElementById("adminContent").style.display = 'block';
				document.getElementById("commonContent").style.display = 'block';
				document.getElementById("adminLoginContent").style.display = 'none';
			}
                	else{
	                    alert("Incorrect Username or Password");
        	            document.getElementById("username").value = "";
                	    document.getElementById("password").value = "";
	                }
                }



                //Displaying HTML output
                function showResults(){
                    
                    if(script == null){
                        alert("Please execute required Script first to generate Result");
                        return;
                    }
                    var file = "Reports\\" + script + n + ".html";

                    /*location.href = file;*/
                    
                    var win = window.open(file, '_blank');
                    win.focus();
                    
                    //document.getElementById("resultBtn").disabled = true;

                }
            
            
                //Executing Batch files with required parameters
                function changeFunction(){
                    
                    d = new Date();
                    n = d.getTime();

                    
                    var users = document.getElementById("numberOfUsers").value;
                    var ramp = document.getElementById("ramp").value;
                    var loop = document.getElementById("loop").value;


                    
                    script = document.getElementById("scenario").value;

                    if(script === "Please Select"){
                        alert("Please Select a Valid JMeter Script Scenario to Execute");
                        return false;
                    } 

                                        
                }
                
        </script>
        -->
        
        
        <!-- </form>-->
        
        
        
       
        </form>
    </body>
</html>
