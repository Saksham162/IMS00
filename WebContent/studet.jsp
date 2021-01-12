<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="icon" href="favicon.jpg">
<style type="text/css">
img{
width:50%;
height:50%;
}
</style>
<script>
     $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
	</script>
</head>
<body>
<nav class="navbar navbar-inverse" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><img class="img-responsive img-circle"       
           src="SSCBS_logo.jpg"></a>
           <a class="navbar-brand" href="index.html">SSCBS</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="about_us.html"><span class="glyphicon glyphicon-info-sign"></span> About</a>
                    </li>
                    <li>
                        <a href="feedback.html"><span class="glyphicon glyphicon-envelope"></span> Feedback</a>
                    </li>
                    <li>
                        <a href="contact_us.html"><span class="glyphicon glyphicon-phone-alt"></span> Contact</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
         		<li><a href="index.html"><button class="btn btn-sm btn-info"><span class="glyphicon glyphicon-user"></span>Log Out</button></a></li></ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav> 
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
<% 	
String i = (String)(session.getAttribute("roll"));
String u = (String)(session.getAttribute("u"));

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdata","root","admin"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from stureg where roll='"+i+"'"); 
if(rs.next()) 
{ 
%>
	<h1 style="color:red"><center>Welcome <%=u %></center></h1>
	<h2><center>Your Details</center></center></h2>
<DIV class="Container table-responsive">
<TABLE class="table table-bordered">
<TR>
   <TH>Name</TH><TD> <%= rs.getString(1) %> </TD>
</TR>
<TR>
   <TH>Roll No.</TH><TD> <%= rs.getString(2) %> </TD>
</TR>
<TR>
   <TH>Course</TH><TD> <%= rs.getString(3) %> </TD>
</TR>
<TR>
   <TH>Father's Name</TH><TD> <%= rs.getString(4) %> </TD>
</TR>
<TR>   
   <TH>E-mail</TH><TD> <%= rs.getString(5) %> </TD>
</TR>
<TR>
   <TH>DOB</TH><TD> <%= rs.getString(6) %> </TD>
</TR>
<TR>
   <TH>Password</TH><TD> <%= rs.getString(7) %> </TD>
</TR>
</TABLE>
</DIV>
<%
}

%>
<center><button class="btn btn-info btn-md"type="button" name="back" onclick="history.back()">Back</button></center>
<br>
<footer class="footer">
      <div style="display:inline;"class="container">
        <pre>Copyright &copy; Shaheed Sukhdev College of Business Studies 2016                           <i id="demo"></i></pre>

<script>
document.getElementById("demo").innerHTML = Date();
</script>
      </div>
    </footer>
</body>
</html>