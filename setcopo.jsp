<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>CO-POmapping</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
     div 
     {
        
         padding:0px 0px 0px 0px;
         
     }
     body{
         height:100%;
         margin: 0;
         background-color:rgb(250, 253, 236);
     }
     #bdy
     {
         height:72vh;
     }
input
{
	width:8vh;
	 padding: 0px,0px,0px,0px;	 
}
#a1{
    background-color : rgb(198, 235, 155);
    height:6vh;
    text-align:center;
    font-size:20px;
    font-style:bold;
}
#a2{
    background-color : rgb(198, 235, 155);
    text-align:center;
    font-size:20px;
    font-style:bold;
}

#even{
    background-color:rgb(205, 252, 193);
}
#odd{
    background-color:rgb(170, 211, 160);
}


input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  width:100%;
}

input[type=submit]:hover {
  background-color: #45a049;
}
input[type=reset] {
  background-color: red;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  width:100%;
}

input[type=reset]:hover {
  background-color:red;
}


  </style>
</head>
<body>

    <div class="container-fluid">
     
       
       <%@include file="header.jsp" %>
         
        
        <div class="row" id="bdy">
            <br><br>
            <div class="col-lg-2" >

                    <br><br>
								<%@include file="dashboardoriginal.jsp" %> 
                         
              
            </div>
            
            <div class="col-lg-9" >
            
            
            <form action="copomapping">

 			<br><br>
					  <div class="row" >
					  
					      <div class="col-lg-1" id="a1">COs</div>
					      <div class="col-lg-10" id="a1">
					      <div class="row">
					      	<div class="col-lg-1">PO1</div>
					      	<div class="col-lg-1">PO2</div>
					      	<div class="col-lg-1">PO3</div>
					      	<div class="col-lg-1">PO4</div>
					      	<div class="col-lg-1">PO5</div>
					      	<div class="col-lg-1">PO6</div>
					      	<div class="col-lg-1">PO7</div>
					      	<div class="col-lg-1">PO8</div>
					      	<div class="col-lg-1">PO9</div>
					      	<div class="col-lg-1">PO10</div>
					      	<div class="col-lg-1">PO11</div>
					      	<div class="col-lg-1">PO12</div>
					      	</div>
					      </div>
					      
					    </div>
					    
    					
                   <br><br>
                   <% 
                   int i;
                   for(i=1;i<=6;i++)
                   {
                	   
                   %>
   
							    <div class="row" >
							      <div class="col-lg-1" id="a2">CO<%=i%></div>
							      <div class="col-lg-10">
							      <div class="row " >
							      <% 
							      int j;
							      for(j=1;j<=12;j++)
							      {
							    	  %>
							      
							      	<div class="col-lg-1" ><input type="text" name="<%=i%><%=j%>"  ></div>
							      	
							      	<% 
							      }
							      	%>
							      	
							      	</div>
							      </div>
							      
							    </div>
							    <br>
   					 <% 
                   }
                  %> 
    
    <br>
    
	
    <div class="row">
      <div class="col-lg-4"></div>
      <div class="col-lg-5">
        <br>
             
      </div>
    </div>
   
       
       
       <div class="row">
		<div class="col-lg-2"></div>
		
		<div class="col-lg-3">
	<input type="submit" value="Submit">
	</div>
	<div class="col-lg-2"></div>
		
		<div class="col-lg-3">
	<input type="reset" value="Reset">
	</div>
</div>
</form>




            </div>
            
            
        </div>
         <%@include file="footer.jsp" %>
    </div>


  
</body>
</html>
    