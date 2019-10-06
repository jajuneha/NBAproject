<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>login2</title>
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
     #nv
     {
         height:5vh;
     }
     .header{
         height:5vh;
         width: 100%;
        background-color: rgb(242, 253, 193);
        color: white;
        font-family: zebrazil;
        
        
     }
     .header2{
         height:5vh;
         width: 100%;
        background-color: rgb(235, 247, 171);
        color: white;
     }
     footer{
         height:12vh;
        position: fixed;
        left: 0;
        bottom: 0;
        width: 100%;
        background-color: rgb(221, 216, 216);
        color: white;
        text-align: center;
     }
     #bdy
     {
         height:72vh;
     }
     #navbar {
 
 
  height:5vh;
        
         width: 100%;
  background-color: rgb(250, 253, 236);
  overflow: hidden;
  font-family: zebrazil;
  font-size:25px;
}
#nv a {
  float: left;
  display: block;
  color: #252323;
  text-align: center;
 padding :0px;
 margin:0px;
  text-decoration: none;
  font-size: 30px;
  width:100%;
}

#nv a:hover {
  background-color: rgb(36, 236, 18);
  color: black;
}

#nv a.active {
  background-color: rgb(75, 216, 79);
  color: rgb(29, 20, 20);
}

#navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

#navbar a:hover {
  background-color: #000;
  color: black;
}

#navbar a.active {
  background-color: rgb(75, 216, 79);
  color: white;
}




img{
    height:10vh;
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
form{
    background-color: rgba(248, 255, 214, 0.9);
    padding: 50px 30px;
    border-radius:30px;
    border-style:solid ;
    border-width:1px;
    
}
select {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  border-style:solid;
  border-width:1px;
  background: #fff;
}
input{
    width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  border-style:solid;
  border-width:1px;
  background: #fff;
}


optgroup{
    background-color: #939e93;
    
}
option{
    background-color:white;
}

  </style>
</head>
<body>


<%
	System.out.print(session.getAttribute("username"));
	if(session.getAttribute("username")== null)
	{
		response.sendRedirect("index.jsp");
	}
%>
    <div class="container-fluid">
       
        
<div class="row" >
            
                <div class="col-lg-1">
                    <img src="pict.jpg">
                </div>
                   <div class="col-lg-10 ">
    
                        <div id="navbar" >
                                <div class="row">
                                     
                                    <div class="col-lg-3" id="nv"></div>
                                    <div class="col-lg-8" id="nv">PUNE INSTITUTE OF COMPUTER TECHNOLOGY</div>
                                    
                                </div>
                        </div>
                        
                            <div class="header">
                                    <div class="row">
                                            <div class="col-lg-10" id="nv" style="text-align:center;padding-left:20vh;color:black;font-size:12px;">
                                                    Affiliated to University Pune.AICTE Approved.NAAC Accredited.ISO-9001-2008
                                          </div>
                                           
                                          
                                           
                                           
                                       </div>
                            </div>
                   </div>
                    
            </div>
            
            <div class="row">
                <div class="header2">
                   
                </div>
            </div>

        <div class="row">
            <div class="col-lg-4"></div>
            
            <div class="col-lg-4">
                    <br><br>
                <form action="login2">
                        
                    <div class="row">
                        <div class="col-lg-2"></div>
                        <br>
                        <div class="col-lg-8">
                           <h4 >Login as:</h4>
                            <select name="designation">
                                    <option value="teacher" >Teacher</option>
                                    <option value="coordinator" >Subject-Coordinator</option>
                                    <option value="hod">HOD</option>
                                    <option value="admin" >Admin</option>
                            </select>
                            <br>
                            <h4>Select Class:</h4>
                            <select name="class">
                                    <optgroup label="SE">
                                      <option value="21" >9</option>
                                      <option value="22" >10</option>
                                      <option value="23" >11</option>
                                    </optgroup>
                                    <optgroup label="TE">
                                            <option value="31">9</option>
                                            <option value="32" >10</option>
                                            <option value="33">11</option>
                                          </optgroup>
                                          <optgroup label="BE">
                                                <option value="41">9</option>
                                                <option value="42" >10</option>
                                                <option value="43">11</option>
                                              </optgroup>
                            </select>
                            <br>
                           <h4> Subject:</h4>
                            <input type="number" placeholder="Enter subject ID" name="subject"></input>

                            <br><br>
                            
                
                         <input type="submit" name="submit" value="Submit">
                
                        </div>
                    </div>
                </form>
            </div>
        </div>


         <%@include file="footer.jsp" %>
    </div>


</body>
</html>
    