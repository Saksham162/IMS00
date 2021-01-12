<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Registration</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String username=request.getParameter("username"); 
session.putValue("username",username); 
String password=request.getParameter("password"); 
String dob=request.getParameter("dob");
String eduqual=request.getParameter("eduqual");
String email=request.getParameter("email"); 
String contact_no=request.getParameter("contact_no");
String address=request.getParameter("address");
String dept=request.getParameter("dept");
String doa=request.getParameter("doa");
String salary=request.getParameter("salary");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdata",
"root","234567"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into empreg values ('"+username+"','"+password+"','"+dob+"','"+eduqual+"','"+email+"','"+contact_no+"','"+address+"','"+dept+"','"+doa+"','"+salary+"')"); 

out.println("Registered"); 

%>
</body>
</html>