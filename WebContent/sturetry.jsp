<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Sign in</title>
<link rel="stylesheet" href="bootstrap-3.3.6-dist/bootstrap-3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="bootstrap-3.3.6-dist/bootstrap-3.3.6/js/bootstrap.min.js"></script>
<link rel="icon" href="favicon.jpg">
<style>
body {
  background: url(stusignin.png); 
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
  -webkit-font-smoothing: antialiased;
  font: normal 14px Roboto,arial,sans-serif;
}

.container {
    padding: 30px;
    position: fixed;
}

.form-login {
    background-color: #EDEDED;
    padding-top: 20px;
    padding-bottom: 30px;
    padding-left: 30px;
    padding-right: 30px;
    border-radius: 15px;
    border-color:#d2d2d2;
    border-width: 15px;
    box-shadow:0 1px 0 #cfcfcf;
}

h4 { 
 border:0 solid #fff; 
 border-bottom-width:1px;
 padding-bottom:10px;
 text-align: center;
}

.form-control {
    border-radius: 10px;
}

.wrapper {
    text-align: center;
}

</style>
</head>
<body>
<nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="index.html"><img class="img-circle img-responsive" src="SSCBS_logo.jpg" alt="logo" height="100" width="100"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="index.html"><span class="glyphicon glyphicon glyphicon-home"></span> Home</a></li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon glyphicon-education"></span>
         Student <span class="caret"></span></a>
         <ul class="dropdown-menu">
         	<li><a href="srform.html">Registration</a></li>
         	<li><a href="#">Fees</a></li>
       		<li><a href="#">Marks</a></li>
       		<li><a href="#">ID</a></li> 
         </ul>
         </li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-cog"></span> Administrator <span class="caret"></span></a>
         <ul class="dropdown-menu">
         	<li><a href="#">Page 1-2</a></li>
         	<li><a href="#">Page 1-2</a></li>
       		<li><a href="#">Page 1-3</a></li> 
         </ul>
         </li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-pencil"></span> Employee <span class="caret"></span></a>
         <ul class="dropdown-menu">
         	<li><a href="#">Page 1-2</a></li>
         	<li><a href="#">Page 1-2</a></li>
       		<li><a href="#">Page 1-3</a></li> 
         </ul>
         </li>
         <li><a href="contact_us.html"><span class="glyphicon glyphicon-phone-alt"></span> Contact us</a></li>
         <li><a href="about_us.html"><span class="glyphicon glyphicon-info-sign"></span> About Us</a></li>
         <li><a href="feedback.html"><span class="glyphicon glyphicon-envelope"></span> Feedback</a></li>   
      </ul>
      <ul class="nav navbar-nav navbar-right">
  		<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> Sign Up <span class="caret"></span></a>
       		<ul class="dropdown-menu">
         		<li><a href="#">Student</a></li>
         		<li><a href="#">Admin</a></li>
   	    		<li><a href="#">Employee</a></li> 
       		</ul>
        <li class="dropdown active"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-log-in"></span> Login <span class="caret"></span></a>
       		<ul class="dropdown-menu">
         		<li class="active"><a href="stusignin.html">Student</a></li>
         		<li><a href="adminsignin.html">Admin</a></li>
   	    		<li><a href="empsignin.html">Employee</a></li> 
       		</ul>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-5">
            <div class="form-login">
            <form action="stusignin.jsp">
            <h4>Sign in <small>Student</small></h4>
            <input type="text" id="rollno" name="roll" maxlength="11" class="form-control input-sm chat-input" placeholder="Roll no....." />
            <br>
            <input type="password" id="Password" name="password" class="form-control input-sm chat-input" placeholder="password" />
            <br>
            <div class="wrapper">
            <button class="btn btn-info">Sign in</button>
            </div>
            </form>
            </div>
        
        </div>
    </div>
</div>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
String roll=request.getParameter("roll"); 
session.setAttribute("roll",roll);
String password=request.getParameter("password"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdata","root","admin"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from stureg where roll='"+roll+"'"); 
if(rs.next()) 
{ 
if(rs.getString(7).equals(password)) 
{ 
String u=rs.getString(1);
%>
<div class="jumbotron">
    <div class="container text-center">
	     <h1>welcome<%= u %>></h1>
	     <h2><a href="studet.jsp">View your Details</a></h2>
		 <h4><a href="fees.html" >View Fees Details</a></h4>
		 <h4><a href="marks.html" >View your Marks</a></h4>
		 <h4><a href="att.jsp" >View Attendance</a></h4>
		  </div><!--end container-->
      </div><!--end jumbotron-->	
<%
 } 
else 
{ 
out.println("Invalid password try again");
%>
<a href="index.html"><button>Try again</button></a>
<%
} 
} 
else{
	String site = new String("sturetry.jsp");
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site);
out.println(session.getAttribute("roll"));
}
%>
<a href="studet.jsp"><button>Show</button></a>
</body>
</html>