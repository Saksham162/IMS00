<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IT Quiz</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="icon" href="favicon.jpg">
<style type="text/css">
img{
width:50%;
height:50%;
}
#form{
text-align:center;
}

</style>
<script>
     $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
	</script>
</head>

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
    <div id="form" class="conatiner">
    	<h2>IT Quiz</h2>
    	<form method="get" action="quiz1.jsp">
    		<label>What does the term MIME stand for?</label><br>
    		<input type="radio" name="one" value="a"> Mail Internet Mail Exchange<br>
    		<input type="radio" name="one" value="b"> Mail Interleave Method Exchange<br>
    		<input type="radio" name="one" value="c"> Multipurpose Internet Mail Extensions<br>
    		<input type="radio" name="one" value="d"> Multipurpose Interleave Mail Exchange<br><br><br>
    		<label>The Intel Pentium bug was an issue with what part of the CPU?</label><br>
    		<input type="radio" name="two" value="a"> Cache<br>
    		<input type="radio" name="two" value="b"> FPU<br>
    		<input type="radio" name="two" value="c"> Socket<br>
    		<input type="radio" name="two" value="d"> There was no Bug/Flaw.<br><br><br>

<%
String n = (String)session.getAttribute("u");
out.println("this is u : "+n);
if(n!=null){


%>



    		<label>What does the term IRQ stand for?</label><br>
    		<input type="radio" name="three" value="a"> Input Request Que<br>
    		<input type="radio" name="three" value="b"> Interrupt Request Que<br>
    		<input type="radio" name="three" value="c"> Interrupt Request<br>
    		<input type="radio" name="three" value="d"> Input Request<br><br><br>
    		<label>What is degauss?</label><br>
    		<input type="radio" name="four" value="a"> Attachment for CPU<br>
    		<input type="radio" name="four" value="b"> Creating magnetic media<br>
    		<input type="radio" name="four" value="c"> Erasing magnetic media<br>
    		<input type="radio" name="four" value="d"> Medical Software<br><br><br>
    		<label>Why was the first Intel Celeron processor not as popular as expected?</label><br>
    		<input type="radio" name="five" value="a"> Had errors<br>
    		<input type="radio" name="five" value="b"> No level 2 cache<br>
    		<input type="radio" name="five" value="c"> Caused errors<br>
    		<input type="radio" name="five" value="d"> Caused Excess heat<br><br><br>
    		<input class="btn btn-md btn-Success" type="submit">
    	</form>
    </div>
    <% }
          
            else{
	                 out.println("please log in first");
	
                 }    


    %>
    <footer class="footer">
      <div style="display:inline;"class="container">
        <pre>Copyright &copy; Shaheed Sukhdev College of Business Studies 2016                           <i id="demo"></i></pre>

<script>
document.getElementById("demo").innerHTML = Date();
</script>
      </div>
    </footer>
<body>

</body>
</html>