<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>

<%
    String firstname=request.getParameter("firstname");
    String lastname=request.getParameter("lastname");
    String contact=request.getParameter("contact");
    String email=request.getParameter("email");
    String message=request.getParameter("message");
    
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="w3css.css">
<title>Query Response</title>
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

.fa {
    padding: 20px;
    font-size: 30px;
    width: 30px;
    text-align: center;
    text-decoration: none;
    border-radius: 50%;
}
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

/* Avatar image */
img.avatar {
    width: 60%;
    border-radius: 50%;
}
</style>
</head>
<body>
    <div class="header w3-light-blue">
  <a href="#default" class="logo">ROZGAAR</a>
  <div class="header-right">
    <a class="active" href="#">Contact</a>
  </div>
</div><br><br>
<div class="w3-container w3-third"></div>
<div class="w3-container w3-third w3-animate-zoom">
   <div class="w3-card-4 w3-center">
      <div class="w3-header w3-light-green" ><h2>Query Sent Successfully !!</h2></div>
      <div class="imgcontainer">
    <img src="images\img28.jpg" alt="Avatar" class="avatar">
  </div><br>
      <h5 class="w3-light-blue">Hello, <%out.print(firstname);%> your query is sent successfully. You'll be responded soon on these :<%out.print(contact);%>,
      <%out.print(email);%> details.</h5>
   </div>
</div>
   <div class="w3-container w3-third"></div> 
    
</body>
</html>