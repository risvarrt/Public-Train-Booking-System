<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RSA-Admin</title>
 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> 
 <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

<!--  <link rel="stylesheet" href="adminstyle.css"> -->
<style>
#navbar{
	background: linear-gradient(90deg, #d53369 0%, #daae51 100%)
	
}
/* .nav-pills .nav-link {
    color: #555
}

.nav-pills .nav-link.active {
    color: white
}
.head{
padding-left:200px;
padding-bottom:10px;
} */
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

/* section {
  min-height: 100vh;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: aliceblue;
}
.container {
  max-width: 400px;
  width: 90%;
  padding: 20px;
  box-shadow: 0px 0px 20px #00000020;
  border-radius: 8px;
  background-color: white;
} */
.step {
  display: none;
}
.step.active {
  display: block;
}
.form-group {
  width: 100%;
  margin-top: 20px;
}
.form-group input {
  width: 25%;
  border: 1.5px solid rgba(128, 128, 128, 0.418);
  padding: 5px;
  font-size: 18px;
  margin-right:20px;
  margin-left:20px;
  margin-top: 5px;
  border-radius: 15px;
}
#etitle,#mtitle,#ctitle{
	width: 85%;
	
}
button.next-btn,
button.previous-btn,
button.submit-btn {
  float: right;
  margin-top: 20px;
  padding: 10px 30px;
  border: none;
  outline: none;
  background-color: rgb(180, 220, 255);
  font-family: "Montserrat";
  font-size: 18px;
  cursor: pointer;
  /* text-align: right; */
}
button.previous-btn {
  float: left;
}
button.submit-btn {
  background-color: aquamarine;
}

</style>
</head>
<body>
<!-- As a heading -->
	<nav class="navbar navbar-dark bg-dark" id="navbar">
	  <span class="navbar-brand mb-0 h1">STR's ADMIN PANEL</span>
	</nav>
	
  <div class="container">
            <div class="row centered-form" id="buy">
            <div class="col-xs-12 col-sm-8 col-md-5 col-sm-offset-2 col-md-offset-4">
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h3 class="panel-title">Buy Action</h3>
                </div>
                
                <div class="d-grid gap-1 col-6 mx-auto">
                <input type="button" id="ptbtn" value="Points" class="btn btn-outline-info btn-block" onClick="showp()">
                 <input type="button" id="cncbtn" value="Cancel" class="btn btn-outline-warning btn-block" >
                 </div>
				    <div id="points">
				    <form id="buyaction" >
				 	<h3 id="title">Enter Points Range</h3>
				      <div class="step step-1 active">
				        <div class="form-group">
				        <label for="trainid">Train-ID</label>
				          <input type="text" id="trainid" name="trainid">
				          </div>
				          <div class="form-group">
				          <label for="from">FROM</label>
				          <input type="number" id="from" name="from">
				            <label for="to">TO</label>
				          <input type="number" id="to" name="to">
				          
				        </div>
				       
				        
				        
				        <button type="button" class="next-btn" id="firstpage">Next</button>
				      </div>
				
				      <div class="step step-2" id="checkboxes">
				        <div class="form-group">
				          	<input type="checkbox" id="email" name="email">
				  			<label for="email">Email</label>
				        </div>
				        <div class="form-group">
				          	<input type="checkbox" id="call" name="call">
				  			<label for="phone">Call</label>
				        </div>
				        <div class="form-group">
				          	<input type="checkbox" id="message" name="message">
				  			<label for="message">Message</label>
				        </div>
				        <button type="button" class="previous-btn">Prev</button>
				        <button type="button" class="next-btn" id="secondpage">Next</button>
				      </div>
				
				      <div class="step step-3">
				        		<div id="emailb">
				                 	<h3 class="head">Email</h3>
				                  
				                    <div class="form-group row">
				                      <label for="title" class="col-sm-2 col-form-label">Title</label>
				                      <div class="col-sm-10">
				                        <input type="text" class="form-control" name="etitle" id="etitle" placeholder="Title">
				                      </div>
				                    </div>
				                    <div class="form-group row">
				                      <label for="message" class="col-sm-2 col-form-label">Message</label>
				                      <div class="col-sm-10">
				                        <textarea class="form-control" id="emessage" name="emessage" rows="5"></textarea>
				                      </div>
				                    </div>
				                </div>
				                <div id="messageb">
				                   <h3 class="head">Message</h3>
				                    <div class="form-group row">
				                      <label for="title" class="col-sm-2 col-form-label">Title</label>
				                      <div class="col-sm-10">
				                        <input type="text" class="form-control" name="mtitle" id="mtitle" placeholder="Title">
				                      </div>
				                    </div>
				                    <div class="form-group row">
				                      <label for="message" class="col-sm-2 col-form-label">Message</label>
				                      <div class="col-sm-10">
				                        <textarea class="form-control" id="mmessage" name="mmessage" rows="5"></textarea>
				                      </div>
				                    </div>
				                </div>
				                <div id="callb">
				                   <h3 class="head">Call</h3>
				                    <div class="form-group row">
				                      <label for="title" class="col-sm-2 col-form-label">Title</label>
				                      <div class="col-sm-10">
				                        <input type="text" class="form-control" name="ctitle" id="ctitle" placeholder="Title">
				                      </div>
				                    </div>
				                    <div class="form-group row">
				                      <label for="message" class="col-sm-2 col-form-label">Message</label>
				                      <div class="col-sm-10">
				                        <textarea class="form-control" id="cmessage" name="cmessage" rows="5"></textarea>
				                      </div>
				                    </div></div>
				        <button type="button" class="previous-btn">Prev</button>
				        <button type="submit" class="submit-btn">Submit</button>
				      </div>
				
				    </form>
				    </div>
 			 </div>

	</div></div>
		<div class="table-wrap" id="ptstable">
			<div class="row justify-content-center">
				<div class="col-md-12 text-center mb-5">
				<hr />
					<h2 class="heading-section" >Buy Action Table</h2>
					<hr />
				</div>
			</div>
			<div class="row">
			<div class="col-xs-12 col-sm-8 col-md-8 col-sm-offset-2 col-md-offset-2" id="actionlist">
					<h4 class="text-center mb-4" id="details"></h4>
						<table class="table table-hover" id="buyview">
					    <thead class="thead-primary" >
					     <tr>
					        <th>Action-ID</th>
					        <th>Train-ID</th>
					        <th>Points Range</th>
							<th>E-Title</th>
							<th>E-Message</th>
							<th>M-Title</th>
							<th>M-Message</th>
							<th>P-Title</th>
							<th>P-Message</th>
							<th>Edit</th>
							<th>Delete</th>
					      </tr>
					    </thead>
					    <tbody id="btable">
					      
					    </tbody>
					  </table>
					
					</div>
					</div>
	</div></div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  		<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
		<script>
		function showp(){
			$("#points").show();
			$("#ptbtn").hide();
			$("#ptstable").show();
			stall();
			document.getElementById("buyaction").reset()
			$("#cncbtn").hide();
			
		}
		 function stall(){
			  $.ajax({
					url:"buyactions",
					type:'GET',
					success:function (response) {
						console.log(response);
						//var count=1;
						 for(var i=0;i<response.length;i++)
							{
							 $("#btable").append("<tr>");
				             $("#btable").append("<th>"+response[i].aid+"</th>");
				           	 $("#btable").append("<th>"+response[i].trainid+"</th>");
				             $("#btable").append("<td id=\"r"+response[i].aid+"\">"+response[i].from+"-"+response[i].to+"</td>");
				        	 $("#btable").append("<td>"+((response[i].etitle.length==0)?"NIL":response[i].etitle)+"</td>");
				        	 $("#btable").append("<td>"+((response[i].emessage.length==0)?"NIL":response[i].emessage)+"</td>");
				        	 $("#btable").append("<td>"+((response[i].mtitle.length==0)?"NIL":response[i].mtitle)+"</td>");
				        	 $("#btable").append("<td>"+((response[i].mmessage.length==0)?"NIL":response[i].mmessage)+"</td>");
				        	 $("#btable").append("<td>"+((response[i].ctitle.length==0)?"NIL":response[i].ctitle)+"</td>");
				        	 $("#btable").append("<td>"+((response[i].cmessage.length==0)?"NIL":response[i].cmessage)+"</td>");
				        	 $("#btable").append("<td><button class=\"btn btn-primary editp\"id=\"ep"+response[i].aid+"\" onClick=\"editpr('ep"+response[i].aid+"')\">Edit</button></td>");
				        	 $("#btable").append("<td><button class=\"btn btn-danger deletp\"id=\"dp"+response[i].aid+"\" onClick=\"delpr('dp"+response[i].aid+"')\">Delete</button></td>");
				        	 $("#btable").append("</tr>");
				      		 //count++;
							} 
						//console.log("success"); 
					},
					error: function(jqXHR, textStatus, errorThrown){
					//	console.log(data);
						console.log("error");
					}
				})
				
			 }
		$(document).ready(function(){
			$("#ptstable").hide();
			$("#points").hide();
			$("#callb").hide()
			$("#messageb").hide()
			$("#emailb").hide()
			var selected = [];
			
			console.log("Page is Ready")
			const steps = Array.from(document.querySelectorAll("form .step"));
			const nextBtn = document.querySelectorAll("form .next-btn");
			const prevBtn = document.querySelectorAll("form .previous-btn");
			const form = document.querySelector("form");
			
			$("#firstpage").on('click',function(event){
			var x1=document.getElementById("from").value;
			var x2=document.getElementById("to").value;
			if(x1.length==0 || x2.length == 0)
				alert("Enter all details")
			else
				{
				selected = []
				$('#email').attr('checked', false);
				$('#message').attr('checked', false);
				$('#call').attr('checked', false);
				changeStep("next");
				}
				
			})
			
			$("#secondpage").on('click',function(event){
			var x1=document.getElementById("email");
			var x2=document.getElementById("message");
			var x3=document.getElementById("call");
			if(!x1.checked && !x2.checked && !x3.checked)
				alert("Choose atleast 1 option")
			else
				{
				
				$('#checkboxes input:checked').each(function() {
				    selected.push($(this).attr('name'));
				});
				//console.log(selected)
				changeStep("next");
				 $("#callb").hide()
					$("#messageb").hide()
					$("#emailb").hide()
				selected.forEach(myFunction);

				function myFunction(value) {
					$("#"+value+"b").show()
				}
				}	
			})
			
			prevBtn.forEach((button) => {
			  button.addEventListener("click", () => {
				  $("#callb").hide()
					$("#messageb").hide()
					$("#emailb").hide()
			    changeStep("prev");
			  });
			});
			
			
			
			function changeStep(btn) {
			  let index = 0;
			  const active = document.querySelector(".active");
			  index = steps.indexOf(active);
			  steps[index].classList.remove("active");
			  if (btn === "next") {
			    index++;
			  } else if (btn === "prev") {
			    index--;
			  }
			  steps[index].classList.add("active");
			}

			$("#buyaction").on('submit',function(event){
				
 	  			event.preventDefault();
 	  			var res;
 	  			function myFunction(value) {
					var ele1=document.getElementById(value.charAt(0)+"title").value
	 	  			var ele2=document.getElementById(value.charAt(0)+"message").value	
	 	  			console.log(ele1,ele2)
	 	  			if(ele1.length==0 ||ele2.length==0)
	 	  				res=0
	 	  			else
	 	  				res=1
	 	  					
				}
 	  			selected.forEach(myFunction);

				console.log(res)
 	  		
 	  			if(res==0)
 	  				alert("Enter All Details")
 	  			else{
 	  				var f="action=buy&"+$("#buyaction").serialize()
 	  				console.log(f)
 					$.ajax({
 	  				url:"adminbuy",
 	  				data: f,
 	  				type:'POST',
 	  				success:function (response) {
 	  					alert("Admin Message has been set")
 	  					prevBtn.forEach((button) => {
 	  					changeStep("prev");
 	  					document.getElementById("buyaction").reset()
 	  					});
 	  					
 	  					$("#btable").empty();  
 	  					$("#points").hide();
 	  					$("#ptbtn").show();
 	  					$("#cncbtn").show();
 	  					$("#title").html("Enter Point Range")
 	  					$("#ptstable").hide();
 	  			/* 		$("#callb").hide()
 	  					$("#messageb").hide()
 	  					$("#emailb").hide() */
 	  				},
 	  				error: function(jqXHR, textStatus, errorThrown){
 	  					console.log("error");
 	  				}
 	  			}) 
 	  			}
 	  			
			})
			 $(".deletp").click( delpr=(a)=>{
				 $("#callb").hide()
					$("#messageb").hide()
					$("#emailb").hide()
	 		  		console.log(a);
	 				  var x=a.slice(2,a.length); 
	 				  console.log(x)
	 				  var range=document.getElementById("r"+x).innerHTML;
	 				 
	 				  var res="range="+range
					console.log(res);
					  $.ajax({
			  				url:"detlbaction",
			  				data: res,
			  				type:'POST',
			  				success:function (response) {
			  					alert("Canceled Range Action for range :" + range)
			  					$("#btable").empty();  
		 	  					
			 	 	  			stall();
			  					//console.log(response);
			  					
			  					//console.log("success");
			  				},
			  				error: function(jqXHR, textStatus, errorThrown){
			  					console.log(data);
			  					console.log("error");
			  				}
			  			})
	 				});
			 $(".editp").click( editpr=(a)=>{
				 document.getElementById("buyaction").reset()
	 		  		//console.log(a);
	 				  var x=a.slice(2,a.length); 
	 				 // console.log(x)
	 				  var range=document.getElementById("r"+x).innerHTML.split("-");
	 				 // console.log(range)
	 				 var from=range[0];
	 				 var to=range[1];
	 				$("#title").html("Edit for the range :" +from+"-"+to);
	 				$("#from").val(from);
	 				$("#to").val(to);
	 				});
		})</script>
</body>
</html>