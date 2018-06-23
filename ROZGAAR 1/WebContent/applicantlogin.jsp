<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>

<%
    String Username=request.getParameter("Username");
    String Password=request.getParameter("Password");
    
    try{
      
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rozgaar","root","tiger");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from applicantsignup where APP_USERNAME='"+Username+"'");
        while(rs.next()){
            String id=rs.getString(1);      
         	String psw=rs.getString(6);
        if(Password.equals(psw))
               {
                  response.sendRedirect("applicantprofile.jsp");
                  session.setAttribute("idd",id);
               }
        else{
              response.sendRedirect("error.jsp");
        }
        }
        rs.close(); con.close(); stmt.close();
    }
     catch(Exception e){
        out.print(e);
        }
      %>  