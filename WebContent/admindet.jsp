<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Accounts</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="icon" href="favicon.jpg">
<style type="text/css">
img{
width:50%;
height:50%;
}
form{
text-align:center;
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
         		<li><a href="reg.html"><button class="btn btn-warning"><span class="glyphicon glyphicon-cog"></span>Change Password</button></a></li>
         		<li><a href="reg.html"><button class="btn btn-info"><span class="glyphicon glyphicon-user"></span>Log Out</button></a></li>
      			</ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav> 
<form action="admindel.jsp">
<br>
delete employee account
<input type="text" name="ename" >
<input class="btn btn-danger" type="submit" value='delete employee'><br><br>
delete student account
<input type="number" name="sroll">
<input class="btn btn-danger" type="submit" value='delete student'><br>
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

</form>
</body>
</html>