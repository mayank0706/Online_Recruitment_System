<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="w3css.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Home Page</title>
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

</style>
</head>
<body>
  <div class="header w3-light-blue">
  <a href="#default" class="logo">ROZGAAR</a>
  <div class="header-right">
    <a class="active" href="Home.jsp">Home</a>
    <a href="About.jsp">About</a>
    <a href="Contact.jsp">Contact</a>
    <a href="User.jsp">User</a>
    <a href="Services.jsp">Services</a>
    <a href="Others.jsp">Others</a>
  </div>
</div>

<div class="w3-container">
   <img src="images/emp.jpg" style="height:600px;widht:100%">
 </div>
 
<div class=" w3-container w3-blue w3-text-black">
  <h3 class="w3-center"><b>Job Listings, Career Resources, Ongoing Education</b></h3>
     <p>The No.1 job provider for freshers in India. ROZGAAR is the top rated jobsite for freshers in India with more than 
        3500+ top companies including MNC's hiring through ROZGAAR. ROZGAAR is a one stop place for all. Your career needs, right
        from your campus interview preparation till the final selection in your dream company.</p>
</div>

<div class="w3-container ">
  <p class="w3-center"><a href="https://www.facebook.com/" class="fa fa-facebook"></a>
<a href="https://twitter.com/login" class="fa fa-twitter w3-center"></a>
<a href="https://www.instagram.com/accounts/login/?next=/accounts/edit/" class="fa fa-instagram"></a><p>

 <p class="w3-myfont1 w3-center">All rights reserved @2018 ROZGAAR</p>
</div>


</body>
</html>