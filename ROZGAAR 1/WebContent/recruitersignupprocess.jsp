<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*,java.util.*"%>

<%

  String orgid=request.getParameter("orgid");
  String orgname=request.getParameter("orgname");
  String orgcon=request.getParameter("orgcon");
  String orgemail=request.getParameter("orgemail");
  String orgusername=request.getParameter("orgusername");
  String orgpassword=request.getParameter("orgpassword");
  
 String connectionURL="jdbc:mysql://localhost:3306/rozgaar";
 Connection connection= null;
 PreparedStatement pstatement= null;
 Class.forName("com.mysql.jdbc.Driver");
 int updateQuery=0;
 connection=DriverManager.getConnection(connectionURL,"root","tiger");
 String queryString="insert into recruitersignup values(?,?,?,?,?,?)";
 pstatement=connection.prepareStatement(queryString);
 pstatement.setString(1,orgid);
 pstatement.setString(2,orgname);
 pstatement.setString(3,orgcon);
 pstatement.setString(4,orgemail);
 pstatement.setString(5,orgusername);
 pstatement.setString(6,orgpassword);
 
 updateQuery=pstatement.executeUpdate();
  
  try
  { if(updateQuery!=0){
     
	  response.sendRedirect("recruiterprofile.jsp");  
     
  }
  }
   catch(Exception e)
   {
	   out.print(e);
	   
   }
  
  finally
  {
	  pstatement.close();
	  connection.close();
  }
  %>
  
  