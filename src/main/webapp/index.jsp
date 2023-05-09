<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RBS</title>
 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" > 
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style.css"> 
<style>
#trains{
  width:715px;
  height:230px;
  margin:50px auto;
}
/* .button-1{
  width:140px;
  height:50px;
  border:2px solid #34495e;
  float:left;
  text-align:center;
  cursor:pointer;
  position:relative;
  box-sizing:border-box;
  overflow:hidden;
  margin:0 0 40px 0;
}
.button-1 .booktr{
  font-family:arial;
  font-size:16px;
  text-decoration:none;
  line-height:50px;
 background-color: transparent;
  transition:all .5s ease;
  z-index:2;
  position:relative;
  border:none;
}
.eff-1{
  width:140px;
  height:50px;
  top:-2px;
  right:-140px;
  background-color: #FEE140;
	background-image: linear-gradient(90deg, #FEE140 0%, #FA709A 100%);
  position:absolute;
  transition:all .5s ease;
  z-index:1;
}
.button-1:hover .eff-1{
  right:0;
}
.button-1:hover .booktr{
  color:white;
  
} */


.booktr{
background-color: #FEE140;
	background-image: linear-gradient(90deg, #FEE140 0%, #FA709A 100%);
  position:absolute;
  font-family:arial;
  font-size:16px;
  text-decoration:none;
  line-height:50px;
 background-color: transparent;
  transition:all .5s ease;
  z-index:2;
  position:relative;
  border:0.2;
  
}
.booktr:hover {
  color:white;
  
}</style>
</head>
<body >

<!------ Include the above in your HEAD tag ---------->
<!-- As a heading -->
	<nav class="navbar navbar-dark bg-dark" id="navbar">
	  <span class="navbar-brand mb-0 h1">STR's Public Transport Reservation System</span>
	</nav>
		<div id="trains">
				  <h1>Available trains</h1>
				 <!-- <div class="button-1">
				    <div class="eff-1"></div>
				    <button  onClick="booktickets()"> Touch me </button>
				  </div>
				   <div class="button-1">
				    <div class="eff-1"></div>
				     <button class="train" onClick="booktickets()"> Touch me </button>
				  </div>
				   <div class="button-1">
				    <div class="eff-1"></div>
				     <button class="train" onClick="booktickets()"> Touch me </button>
				  </div>  -->
				  
				  
				</div>
		<div class="container" >
		
		        <div class="row centered-form" id="regform">
		        <div class="col-xs-4 col-sm-4 col-md-4 col-sm-offset-2 col-md-offset-1">
		        	<div class="panel panel-default">
		        		<div class="panel-heading">
					    		<h3 class="panel-title centered">Ticket Availability</h3>
					 			</div>
					 			<div class="panel-body">
					    		<table class="table table-hover" >
					    <thead class="thead-primary">
					      <tr>
					      	<th>Station-id</th>
					        <th>Station</th>
					        <th>Tickets Available</th>
					      </tr>
					    </thead>
					    <tbody id="availist">
					      
					    </tbody>
					  </table>
					    	</div>
			    		</div>
		    		</div>
		    		<div class="col-xs-4 col-sm-4 col-md-3 col-sm-offset-2 col-md-offset-1">
		        	<div class="panel panel-default">
		        		<div class="panel-heading">
					    		<h3 class="panel-title centered">Passenger List</h3>
					 			</div>
					 			<div class="panel-body">
					    		<div class="buttons" id="buttono">
							      <!-- <button class="slist" id="sA" >A</button>
							      <button class="slist" id="sB">B</button>
							      <button class="slist" id="sC" >C</button>
							      <button  class="slist" id="sD">D</button> -->
							      
							    </div>
					    	</div>
			    		</div>
		    		</div>
		    		<div class="col-xs-4 col-sm-4 col-md-4 col-sm-offset-2 col-md-offset-1">
		        	<div class="panel panel-default">
		        		<div class="panel-heading">
					    		<h3 class="panel-title">Buy Ticket</h3>
					 			</div>
					 			<div class="panel-body">
					    		<form id="Buy">
					    		<div class="row">
					    			<div class="col-xs-12 col-sm-12 col-md-12">
					    					<div class="form-group">
					    						<input type="text" name="phone" id="phone" class="form-control input-sm" placeholder="Phone Number">
					    					</div>
					    				</div>
									</div>	
					    			<div class="row">
					    			<div class="col-xs-12 col-sm-12 col-md-12">
					    					<div class="form-group">
					    						<input type="number" name="total" id="total" class="form-control input-sm" placeholder="Total Number of Tickets">
					    					</div>
					    				</div>
									</div>	
					    			<div class="row">
					    				<div class="col-xs-6 col-sm-6 col-md-6">
					    					<div class="form-group">
					    					<!-- 	<input type="text" name="source" id="source" class="form-control input-sm" placeholder="Source"> -->
					    						<select class="form-select input-sm"  name="source" id="source" aria-label="Default select example">
													 <!--  <option selected>Source</option> -->
													 <!--  <option value="A">A</option>
													  <option value="B">B</option>
													  <option value="C">C</option>
													  <option value="D">D</option>
													  <option value="E">E</option> -->
													</select>
					    					</div>
					    				</div>
					    				<div class="col-xs-6 col-sm-6 col-md-6">
					    					<div class="form-group">
					    					<!-- 	<input type="text" name="destination" id="destination" class="form-control input-sm" placeholder="Destination"> -->
					    						<select class="form-select input-sm" name="destination" id="destination" aria-label="Destination">
													  <!-- <option selected>Destination</option> -->
													  <!-- <option value="A">A</option>
													  <option value="B">B</option>
													  <option value="C">C</option>
													  <option value="D">D</option> -->
													</select>
					    					</div>
					    				</div>
					    			</div>
					    			
					    			<input type="submit" id="buy_0" value="Buy" class="btn btn-info btn-block">
					    		
					    		</form>
					    	</div>
			    		</div>
		    		</div>
		    	</div>
		    </div>
		<div class="table-wrap" id="tables">
			<div class="row justify-content-center">
				<div class="col-md-12 text-center mb-5">
				<hr />
					<h2 class="heading-section" >Tickets Table</h2>
					<hr />
				</div>
			</div>
			<div class="row">
			<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4" id="stationlist">
					<h4 class="text-center mb-4" id="details"></h4>
						<table class="table table-hover" id="view">
					    <thead class="thead-primary">
					      <tr>
					        <th>Ticket-ID</th>
					        <th>Phone Number</th>
					        <th>Total Tickets</th>
							<th>S-Station</th>
							<th>D-Station</th>
					      </tr>
					    </thead>
					    <tbody id="stable">
					      
					    </tbody>
					  </table>
					  <input type="button" id="show_0" value="Back" class="btn btn-danger btn-block">
					</div>
					
				<div class="col-md-6" id="confirmlist">
					<h4 class="text-center mb-4">Confirmed Tickets</h4>
						<table class="table table-hover" id="view">
					    <thead class="thead-primary">
					      <tr>
					        <th>Ticket-ID</th>
					        <th>Phone Number</th>
					        <th>Number of Tickets</th>
							<th>S-Station</th>
							<th>D-Station</th>
							<th>Price</th>
							<th>Status</th>
							<th>Cancel</th>
					      </tr>
					    </thead>
					    <tbody id="ctable">
					      
					    </tbody>
					  </table>
					</div>
					
					<div class="col-md-6" id="pendlist">
					<h4 class="text-center mb-4">Pending Tickets</h4>
						<table class="table table-hover" id="view">
					    <thead class="thead-primary">
					      <tr>
					        <th>Ticket-ID</th>
					        <th>Phone Number</th>
					        <th>Number of Tickets</th>
							<th>S-Station</th>
							<th>D-Station</th>
							<th>Price</th>
							<th>Status</th>
							<th>Cancel</th>
					      </tr>
					    </thead>
					    <tbody id="ptable">
					      
					    </tbody>
					  </table>
					</div>
					</div>
					</div>
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  		<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
 		<script >

  //Getting Station and Train Options
  /* function getOptions(){
	  $.ajax({
			url:"viewstat",
			type:'GET',
			success:function (response) {
				
				  $("#source").append("<option>Source</option>");
				  $("#destination").append("<option>Destination</option>");
				for(var i=0;i<response.length;i++)
					{
		             $(".buttons").append("<button class=\"slist\" id=\"s"+response[i].id+"\" onClick=\"statclick('s"+response[i].id+"')\">"+response[i].station+"</button>");
					}  
				for(var i=0;i<response.length;i++)
					{
						$("#source").append("<option value="+response[i].id+">"+response[i].station+"</option>");
						$("#destination").append("<option value="+response[i].id+">"+response[i].station+"</option>");
					}
				
			},
			error: function(jqXHR, textStatus, errorThrown){
				console.log(data);
				console.log("error");
			}
		})
 } */
  //Getting Confimed and Pending Tickets
  function getAll(trainid)
   {
	 var res="trainid="+trainid
 	  $.ajax({
 			url:"viewc",
 			type:'POST',
 			data:res,
 			success:function (response) {
 				console.log(response);
 				console.log("Getting table")
 				for(var i=0;i<response.length;i++)
 					{
 					 $("#ctable").append("<tr>");
 		             $("#ctable").append("<th scope=\"row\" class=\"scope\" id=\"c"+response[i].Uid+"\">"+response[i].Uid+"</th>");
 		            $("#ctable").append("<td>"+response[i].phone+"</td>");
 		         	 $("#ctable").append("<td>"+response[i].total+"</td>");
 		        	 $("#ctable").append("<td>"+response[i].Source+"</td>");
 		      		 $("#ctable").append("<td >"+response[i].Destination+"</td>");
 		   			 $("#ctable").append("<td>"+response[i].price+"</td>");
 		   		 	$("#ctable").append("<td>"+response[i].Status+"</td>");
 		   			$("#ctable").append("<td><button class=\"btn btn-danger deletb\"id=\"dc"+response[i].Uid+"\" onClick=\"delrr('dc"+response[i].Uid+"')\">Cancel</button></td>"); 
 		   			$("#ctable").append("</tr>");
 					} 
 				//console.log("success");
 			},
 			error: function(jqXHR, textStatus, errorThrown){
 				console.log(data);
 				console.log("error");
 			}
 		})
 		 $.ajax({
 			url:"viewp",
 			type:'POST',
 			data:res,
 			success:function (response) {
 				//console.log(response);
 				
 				for(var i=0;i<response.length;i++)
 					{
 					
 					 $("#ptable").append("<tr>");
 		             $("#ptable").append("<th id=\"p"+response[i].Uid+"\">"+response[i].Uid+"</th>");
 		            
 		           	 $("#ptable").append("<td >"+response[i].phone+"</td>");
 		             $("#ptable").append("<td>"+response[i].total+"</td>");
 		        	 $("#ptable").append("<td>"+response[i].Source+"</td>");
 		      		 $("#ptable").append("<td >"+response[i].Destination+"</td>");
 		   			 $("#ptable").append("<td>"+response[i].price+"</td>");
 		   		 	$("#ptable").append("<td>"+response[i].Status+"</td>");
 		   			$("#ptable").append("<td><button class=\"btn btn-danger deletp\" id=\"dp"+response[i].Uid+"\" onClick=\"delpr('dp"+response[i].Uid+"')\">Cancel</button></td>");
 		   			$("#ptable").append("</tr>");
 					} 
 				//console.log("success");
 			},
 			error: function(jqXHR, textStatus, errorThrown){
 				console.log(data);
 				console.log("error");
 			}
 		})
 		
  	 }  
  //Getting Station Availabilty
		 function stall(a){
	 	 var res="tid="+a;
	 	 console.log(res)
		  $.ajax({
				url:"viewavail",
				data:res,
				type:'POST',
				success:function (response) {
					console.log(response);
					//var count=1;
					 $("#source").append("<option>Source</option>");
				  $("#destination").append("<option>Destination</option>");
					for(var i=0;i<response.length;i++)
						{
						$("#source").append("<option value="+response[i].id+">"+response[i].station+"</option>");
						$("#destination").append("<option value="+response[i].id+">"+response[i].station+"</option>");
						 $(".buttons").append("<button class=\"slist\" id=\"s"+response[i].id+"\" onClick=\"statclick('s"+response[i].id+"')\">"+response[i].station+"</button>");
						 $("#availist").append("<tr>");
			             $("#availist").append("<th>"+response[i].id+"</th>");
			             $("#availist").append("<td>"+response[i].station+"</td>");
			        	 $("#availist").append("<td>"+response[i].seats+"</td>");
			      		 $("#availist").append("</tr>");
			      		 //count++;
						} 
					//console.log("success");
				},
				error: function(jqXHR, textStatus, errorThrown){
					
					console.log("error");
				}
			})
			
		 }
  function getTrains()
  {
	  $.ajax({
			url:"gettrain",
			type:'GET',
			success:function (response) {
				console.log(response);
				traincount=response.length
				//var count=1;
				for(var i=0;i<response.length;i++)
					{
					
					 $("#trains").append("<div class=\"button-1\">");
		             $("#trains").append("<div class=\"eff-1\"></div>");
		             $("#trains").append("<button class=\"booktr\" id=\""+response[i].id+"\" onClick=\"booktickets('"+response[i].id+"')\">"+response[i].name+"</button>");
		      		 $("#trains").append("</div>");
		      		 //count++;
					}  
				//console.log("success");
			},
			error: function(jqXHR, textStatus, errorThrown){
				console.log(data);
				console.log("error");
			}
		})
  }
   
   	$(document).ready(function () {
   		var traincount;
   		getTrains();
   		$(".container").hide()
   		$("#tables").hide()
   		var trainid
   			//console.log("page is Ready");
   		
   			$(".booktr").click( booktickets=(a)=>{
   				trainid=a
   				$("#trains").hide()
   			  $(".container").show()
   			  $("#tables").show()
   			  $("#stationlist").hide()
   		 		$("#show_0").hide()
   		 		stall(trainid);
   
   		 		getAll(trainid); 
	  		})
	  		
   			//Buying Ticket
 	  		$("#Buy").on('submit',function(event){
 	  			event.preventDefault();
 	  			var ele1=document.getElementById("Buy").elements[0].value
 	  			var ele2=document.getElementById("Buy").elements[1].value
 	  			var ele3=document.getElementById("Buy").elements[2].value
 	  			var ele4=document.getElementById("Buy").elements[3].value
 	  			//console.log(ele3,ele4);
 	 				
 	  			if(ele1.length == 0||ele2.length == 0||ele3=="Source"||ele4 == "Destination" )
 	  				alert("Enter all Details");
 	  			else if(ele3 == ele4)
 	  				alert("Enter Proper Station Details");
 	  			/* else if(ele4.charCodeAt(0) > 69)
 	  				alert("Enter Proper Destination Station") */
 	  	
 	  			else
 	  				{
 	  				var f=$(this).serialize()+"&trainid="+trainid;
 	  			
 	  				console.log(f);
 	  				$.ajax({
 	 	  				url:"Buy",
 	 	  				data: f,
 	 	  				type:'POST',
 	 	  				success:function (response) {
 	 	  					alert(response)
 	 	  					console.log(response);
 	 	  					$("#ptable").empty();  
 	 	  					$("#ctable").empty();  
 	 	  					$(".buttons").empty();  
 	 	  					$("#source").empty();
 	 	  					$("#destination").empty();
 	 	  					$("#availist").empty();
 	 	  				document.getElementById("Buy").reset()
 	 	  				stall(trainid);
 	 	  	   		getAll(trainid); 
 	 	  					//console.log("success");
 	 	  				},
 	 	  				error: function(jqXHR, textStatus, errorThrown){
 	 	  					console.log("error");
 	 	  				}
 	 	  			})
 	  				}
 	  			
 	  		})
 	  		
   			//Deleting Pending Tickets
 		  	 $(".deletp").click( delpr=(a)=>{
 		  		console.log(a);
 				  var x=a.slice(2,a.length); 
 				  console.log(x)
 				  var uid=document.getElementById("p"+x).innerHTML;
 				  
 				 console.log(phone);
 				  var res="Uid="+uid
				//  console.log(res);
				  $.ajax({
		  				url:"Cancelp",
		  				data: res,
		  				type:'POST',
		  				success:function (response) {
		  					alert("Canceled ticket ID :" + uid)
		  					$("#ptable").empty();  
	 	  					$("#ctable").empty();
	 	  					$("#availist").empty();
 	 	  					$(".buttons").empty();  
 	 	  					$("#source").empty();
 	 	  					$("#destination").empty();
		 	 	  			stall(trainid);
		 	 	  	   		getAll(trainid); 
		  					//console.log(response);
		  					
		  					//console.log("success");
		  				},
		  				error: function(jqXHR, textStatus, errorThrown){
		  					console.log(data);
		  					console.log("error");
		  				}
		  			})
 				});
   			
 	  		//Deleting Confirmed Tickets Tickets
 	  		$(".deletb").click( delrr=(a)=>{
 		  		  //console.log(a);
 		  		var x=a.slice(2,a.length); 
 				  var uid=document.getElementById("c"+x).innerHTML;
 				  
 				  //console.log(phone);
 				  var res="Uid="+uid+"&trainid="+trainid
				  //console.log(res);
				  $.ajax({
		  				url:"Cancelc",
		  				data: res,
		  				type:'POST',
		  				success:function (response) {
		  					alert("Canceled ticket ticket ID :" + uid)
		  					$("#ptable").empty();  
	 	  					$("#ctable").empty();
	 	  					$("#availist").empty();
	 	  				  
 	 	  					$(".buttons").empty();  
 	 	  					$("#source").empty();
 	 	  					$("#destination").empty();
		 	 	  				stall(trainid);
		 	 	  	   		getAll(trainid); 
		  					//console.log("success");
		  				},
		  				error: function(jqXHR, textStatus, errorThrown){
		  					console.log(data);
		  					console.log("error");
		  				}
		  			})
 				});
 	  		
 	  		//Getting passenger list
 	  		$(".slist").click(statclick=(a)=>{
 	  			$("#stable").empty();  
 	  			$(".buttons").empty();
 	  			$("#show_0").show()
				var x=a.slice(1,a.length); 
				console.log(x)
				 var res="station="+x
				$.ajax({
		  				url:"stlist",
		  				data: res,
		  				type:'POST',
		  				success:function (response) {
		  				//alert("V" + phone)
		  					//console.log(response);
		  					console.log("Getting data yaay");
		  					$("#details").html("Passengers List of Station "+x);
	 	  					$("#ctable").empty();
	 	  					$("#ptable").empty();
	 	  					$("#availist").empty();
	 	  					$("#confirmlist").hide();
	 	  					$("#pendlist").hide();
 	 	  					$(".buttons").empty();  
 	 	  					$("#source").empty();
 	 	  					$("#destination").empty();
	 	  					$("#stationlist").show();
	 	  				  
	 	  					stall(trainid);
	 	  					for(var i=0;i<response.length;i++)
	 	 					{
	 	 					 $("#stable").append("<tr>");
	 	 		             $("#stable").append("<th scope=\"row\" class=\"scope\" >"+response[i].Uid+"</th>");
	 	 		          
	 	 		            $("#stable").append("<td >"+response[i].phone+"</td>");
	 	 		          $("#stable").append("<td>"+response[i].total+"</td>");
	 	 		        	 $("#stable").append("<td>"+response[i].source+"</td>");
	 	 		      		 $("#stable").append("<td >"+response[i].destination+"</td>");
	 	 		   			 $("#stable").append("</tr>");
	 	 		   			 
	 	 					} 
	 	  					//console.log("success");
		  				},
		  				error: function(jqXHR, textStatus, errorThrown){
		  					console.log(data);
		  					console.log("error");
		  				}
		  			})
 	  		});
		  	
 	  		$("#show_0").click( function(){
		  		  $("#show_0").hide()
		     	  $("#stationlist").hide();
		   		  $("#confirmlist").show();
	 	  		  $("#pendlist").show();
	 	  	      $("#ctable").empty();
	 	  	   $("#availist").empty();
	 	  		  $("#ptable").empty(); 
	 	  		  $(".buttons").empty();  
	 	  		  $("#source").empty();
	 	  	      $("#destination").empty();
	 	  		  console.log("Going back");
	 	  		stall(trainid);
		  		  getAll(trainid);
		  			})
			 
 		  		})
  
  </script> 
</body>
</html>