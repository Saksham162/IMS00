<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
     $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
	</script>
</head>
<body>
<%
String n = (String)session.getAttribute("u");

out.println("before invalidate : "+n);
session.invalidate();

out.println("before invalidate : "+n);

//RequestDispatcher rd = request.getRequestDispatcher("index.html");
//rd.include(request, response);

  
out.close();  
%>
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