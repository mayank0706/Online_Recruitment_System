<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>

<%
  String Username=request.getParameter("Username");
  String Contact=request.getParameter("Contact");
%> 


<html>
<head><title>Password</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="w3css.css">
  <style>
* {box-sizing: border-box;}

body { 
  margin: 0;
  font-family: Arial;
  background color:hsla(120, 60%, 70%, 0.2);
}

.header {
  overflow: hidden;
  background-color:#f1f1f1;
  padding: 20px 10px;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 8px;
  text-decoration: none;
  font-size: 13px; 
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 30px;
  font-weight: bold;
}

.header a:hover {
  background-color:hsla(120, 60%, 70%, 0.3);
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  .header-right {
    float: none;
  }
}
<!-- Avatar Styling -->
.imgcontainer {
    text-align: left;
    margin: 24px 0 12px 0;
}

/* Avatar image */
img.avatar {
    width: 20%;
    border-radius: 50%;
}
</style>
</head>
<body>
<div class="header w3-light-blue">
  <a href="#default" class="logo">ROZGAAR</a>
  <div class="header-right">
    <a class="active" href="forgotpassword1.jsp">Forgot Password</a>
  </div>
</div><br>
    <%
        try{
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rozgaar","root","tiger");
        	Statement stmt=con.createStatement();
        	ResultSet rs=stmt.executeQuery("select * from recruitersignup where ORG_USERNAME='"+Username+"' && ORG_CONTACT='"+Contact+"'");
      %>
    
    
        <% while(rs.next()) { String username=rs.getString(5); String password=rs.getString(6);%>
     <div class="w3-container w3-third"></div>
     <div class="w3-container w3-third">
     <div class="w3-card-4 w3-center" style="max-width:400px padding-left:300px">
        <br><div class="imgcontainer">
          <br><img src="images\img12.png" alt="Avatar" class="avatar">
        </div><br>
        <form class="w3-container">
  <br>
  <label class="w3-left">USERNAME</label><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Username" required="required" name="Username" value="<%=username%>"><br>
  <label class="w3-left">PASSWORD</label><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Password" required="required" name="Password" value="<%=password%>"><br>
    </form> 
     </div></div>
    <div class="w3-container w3-third"></div>
    <%} %>
    <% 
        rs.close();
        stmt.close();
        con.close();
        }
    catch(Exception e){
    %>
    <% out.print(e);} %>
    </table>
    </body>
    </html>
    
    
    
    
    