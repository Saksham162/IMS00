<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<title>Quiz Result</title>
<style>
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
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

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
                
                <% response.setHeader("Cache-Control", "private,no-store,no-cache"); %>
                
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


<hr><br>
<div class="container">
<div class="jumbotron">
<%
String q1=request.getParameter("one");
String q2=request.getParameter("two"); 
String q3=request.getParameter("three"); 
String q4=request.getParameter("four"); 
String q5=request.getParameter("five");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdata",
"root","admin"); 
Statement st= con.createStatement();
Statement s4=con.createStatement();
s4.executeUpdate("truncate table it");
ResultSet r1;
ResultSet r2;
st.executeUpdate("insert into it values ('"+q1+"','"+q2+"','"+q3+"','"+q4+"','"+q5+"')");
out.println("<h2><center>Submitted Successfully</center></h2>");
Statement s1= con.createStatement();
r1=s1.executeQuery("select * from itsol");

if(r1.next()){}
Statement s2= con.createStatement();

r2=s2.executeQuery("select * from it");
if(r2.next()){}

%>
<center><h3>
<% 
	
if(r1.getString(1).equals(r2.getString(1)))
{
	out.println("1.Correct answer.");
}
else
{
	out.println("<br>1.OOps!! Incorrect answer");
	out.println(" Correct answer is :"+r1.getString(1));
}
if(r1.getString(2).equals(r2.getString(2)))
{
	out.println("<br>2.Correct answer.<br>");
}
else
{
	out.println("<br>2.OOps!! Incorrect answer");
	out.println(" Correct answer is :"+r1.getString(2));
}
if(r1.getString(3).equals(r2.getString(3)))
{
	out.println("<br>3.Correct answer.");
}
else
{
	out.println("<br>3.OOps!! Incorrect answer");
	out.println(" Correct answer is : "+r1.getString(3));
}
if(r1.getString(4).equals(r2.getString(4)))
{
	out.println("<br>4.Correct answer.");
}
else
{
	out.println("<br>4.OOps!! Incorrect answer");
	out.println(" Correct answer is :"+r1.getString(4));
}
if(r1.getString(5).equals(r2.getString(5)))
{
	out.println("<br>5.Correct answer.");
}
else
{
	out.println("<br>5.OOps!! Incorrect answer");
	out.println(" Correct answer is : "+r1.getString(5));
}


%>
</h3></center>
</div>
<br>
  <footer class="footer">
      <div style="display:inline;"class="container">
        <pre>Copyright &copy; Shaheed Sukhdev College of Business Studies 2016                           <i id="demo"></i></pre>

<script>
document.getElementById("demo").innerHTML = Date();
</script>
      </div>
    </footer>
</div>
</body>
</html>