<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*,java.util.*"%>

<%

  String appid=request.getParameter("appid");
  String appname=request.getParameter("appname");
  String appcon=request.getParameter("appcon");
  String appemail=request.getParameter("appemail");
  String appusername=request.getParameter("appusername");
  String apppassword=request.getParameter("apppassword");
  
 String connectionURL="jdbc:mysql://localhost:3306/rozgaar";
 Connection connection= null;
 PreparedStatement pstatement= null;
 Class.forName("com.mysql.jdbc.Driver");
 int updateQuery=0;
 connection=DriverManager.getConnection(connectionURL,"root","tiger");
 String queryString="insert into applicantsignup values(?,?,?,?,?,?)";
 pstatement=connection.prepareStatement(queryString);
 pstatement.setString(1,appid);
 pstatement.setString(2,appname);
 pstatement.setString(3,appcon);
 pstatement.setString(4,appemail);
 pstatement.setString(5,appusername);
 pstatement.setString(6,apppassword);
 
 updateQuery=pstatement.executeUpdate();
  
  try
  { if(updateQuery!=0){
     
	  response.sendRedirect("applicantprofile.jsp");  
     
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
  
  