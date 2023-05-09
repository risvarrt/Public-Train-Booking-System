/**
 * 
 */
function getAll()
  {
	  $.ajax({
			url:"viewrecords",
			type:'GET',
			success:function (response) {
				//var obj=JSON.parse(response);
				console.log(response);
				for(var i=0;i<response.length;i++)
					{
					 $("#mytable").append("<tr>");
		             $("#mytable").append("<th scope=\"row\" class=\"scope\">"+response[i].eid+"</th>");
		         	 $("#mytable").append("<td>"+response[i].ename+"</td>");
		        	 $("#mytable").append("<td>"+response[i].age+"</td>");
		      		 $("#mytable").append("<td id=\"email"+response[i].eid+"\">"+response[i].email+"</td>");
		   			 $("#mytable").append("<td>"+response[i].salary+"</td>");
		   			$("#mytable").append("<td><button class=\"btn btn-primary editb\"id=\"b"+response[i].eid+"\" onClick=\"editrr('b"+response[i].eid+"')\">Edit</button></td>");
		   			$("#mytable").append("<td><button class=\"btn btn-danger deletb\"id=\"d"+response[i].eid+"\" onClick=\"delrr('d"+response[i].eid+"')\">Delete</button></td>"); 
		   			$("#mytable").append("</tr>");
					}
				console.log("success");
			},
			error: function(jqXHR, textStatus, errorThrown){
				console.log(data);
				console.log("error");
			}
		})
  }
  	$(document).ready(function () {
  		$("#editform").hide();
  			getAll();
  			console.log("page is Ready");
	  		
	  		$("#Register").on('submit',function(event){
	  			event.preventDefault();
	  			var f=$(this).serialize();
	  			console.log(f);
	  			$.ajax({
	  				url:"Register",
	  				data: f,
	  				type:'POST',
	  				success:function (response) {
	  					alert("Resgistered")
	  					console.log(response);
	  					$("#mytable").empty();  
	  					getAll();
	  					console.log("success");
	  				},
	  				error: function(jqXHR, textStatus, errorThrown){
	  					console.log(data);
	  					console.log("error");
	  				}
	  			})
	  		})
  		/* $("#view").click(function(event){
  			event.preventDefault();
  			console.log("button clicked");
  			
  		})
  	}) */
		  	$(".editb").click( editrr=(a)=>{
		  		console.log(a);
				  var x=a.charAt(a.length-1); 
				  var email=document.getElementById("email"+x).innerHTML;
				  var xid='d'+x
				  console.log(email);
				  $("#edit_email").val(email);
				  $("#panel-title").html("Edit details of "+ email)
				  $("#xid").hide();
				  $("#editform").show();
				  $("#regform").hide();
				});
	  		$(".aadd").click( revert=()=>{
		  		
				  $("#editform").hide();
				  $("#regform").show();
				  //$("#show").empty();
				});
	  		$(".deletb").click( delrr=(a)=>{
		  		console.log(a);
				  var x=a.charAt(a.length-1); 
				  var email1=document.getElementById("email"+x).innerHTML;
				  
				  email=email1.replace('@','%40')
				  var res="email="+email
				  console.log(res);
				  $.ajax({
		  				url:"Delete",
		  				data: res,
		  				type:'POST',
		  				success:function (response) {
		  					alert("Deleted " + email1)
		  					$("#mytable").empty();  
	  						getAll();
		  					console.log(response);
		  					
		  					console.log("success");
		  				},
		  				error: function(jqXHR, textStatus, errorThrown){
		  					console.log(data);
		  					console.log("error");
		  				}
		  			})
				});
  	
		  		$("#Edit").on('submit',function(event){
		  			event.preventDefault();
		  			var f=$(this).serialize();
		  			console.log(f);
		  			$.ajax({
		  				url:"Edit",
		  				data: f,
		  				type:'POST',
		  				success:function (response) {
		  					alert("Edited...!")
		  					$("#mytable").empty();  
	  						getAll();
		  					console.log(response);
		  					
		  					console.log("success");
		  				},
		  				error: function(jqXHR, textStatus, errorThrown){
		  					console.log(data);
		  					console.log("error");
		  				}
		  			})
		  		})  
		  		})