import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserLogin() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	    out.println("<br>hello");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
		    out.println("<br>hello");
		    //PrintWriter out= response.getWriter();
		

		         
		    final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
		    final String DB_URL = "jdbc:mysql://localhost/userdata";
		  

		   //  Database credentials
		    final String USER = "root";
		    final String PASS = "0123";
		    
		  
		    Connection conn = null;
		    Statement stmt = null;
		    Statement stmt2 = null;
		    
		   
		    try{
		      //STEP 2: Register JDBC driver
		      Class.forName("com.mysql.jdbc.Driver");
		      
		      

		      //STEP 3: Open a connection
		    
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		    
		      
		      //STEP 4: Execute a query
		      
		      stmt = conn.createStatement();
		      stmt2 = conn.createStatement();
		      String userid= request.getParameter("t1");
		      String password = request.getParameter("t2");
		      
		      //matching user mail
		      String Query = "select name from registration where email='"+userid+"'";
		      ResultSet rs = stmt.executeQuery(Query);
		      
		     
		      
		      if(rs.next()){
		    	  
		    	  String name = rs.getString(1);
		    	  
		    	  //matching password
		    	  
		    	  String PassQuery = "Select lastname from registration where password='"+password+ "' and email ='"+ userid+"'";
		    	  ResultSet rs2 = stmt2.executeQuery(PassQuery);
		    	  
		    	  if(rs2.next()){
		    		  
		    		  //if password is correct
		    		  
		    		  String lastname = rs2.getString(1);
		    		  HttpSession session=request.getSession(); 
		    		  
		    	      
		    	      session.setAttribute("logemail",userid);
		    	      RequestDispatcher rd=request.getRequestDispatcher("/resolution.jsp");            
		    		  rd.include(request, response);
		    		
		    	  }
		    	  else{
		    		  
		    		  //if password is incorrect
		    		
		    		  request.setAttribute("error","Invalid Password");
		    		  RequestDispatcher rd=request.getRequestDispatcher("/Stayhere.jsp");            
		    		  rd.include(request, response);
		    	  }
		      }
		      
		      else{
		    	  
		    	  //if username is incorrect
		    	  request.setAttribute("error","Invalid Username");
	    		  RequestDispatcher rd=request.getRequestDispatcher("/Stayhere.jsp");            
	    		  rd.include(request, response);  
		      }
	
	}catch(SQLException se){
	    
	      se.printStackTrace();
	      }catch(Exception e){
	      
	      e.printStackTrace();
	      }
	      
	      finally{
	     
	      try{
	         if(stmt!=null && stmt2!=null)
	            conn.close();
	      }catch(SQLException se){
	      }
	      try{
	         if(conn!=null)
	            conn.close();
	      }catch(SQLException se){
	      }
	      
	      }
	       
	    
       }
}
	
