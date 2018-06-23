<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>
<%
Random rand = new Random();
int n1= rand.nextInt(276540) + 17800;
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="w3css.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Service Login </title>

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
    text-align: left;
    margin: 24px 0 12px 0;
}

/* Avatar image */
img.avatar {
    width: 13%;
    border-radius: 50%;
}
       </style>
</head>
<body>
<div class="header w3-light-blue">
  <a href="#default" class="logo">ROZGAAR</a>
  <div class="header-right">
    <a href="Home.jsp">Home</a>
    <a href="About.jsp">About</a>
    <a href="Contact.jsp">Contact</a>
    <a href="User.jsp">User</a>
    <a class="active" href="Services.jsp">Services</a>
    <a href="Others.jsp">Others</a>
  </div>
</div><br>

<div class="w3-container ">
  <div class="w3-card-4 w3-padding w3-grey w3-animate-zoom">     
       <h3 class="w3-center w3-wide w3-mystyle">For Accessing Services You've to Login First</h3>
       <h4 class="w3-mystyle w3-center">Please Login with your credentials under <b>Login Section</b>, If You're new to ROZGAAR then First <b>Register</b> Yourself.</h4>  
 </div>
</div><br><br><br>

<div class="w3-container" style="padding-left:300px">
         <div class="w3-row">
    <a href="javascript:void(0)" onclick="openevent(event, 'Login');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Login Section</div>
    </a>
    <a href="javascript:void(0)" onclick="openevent(event, 'Register');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Register Yourself</div>
    </a>
    
  </div>

  <div id="Login" class="w3-container  event" style="display:none">
   <div class="imgcontainer">
    <img src="images\img13.png" alt="Avatar" class="avatar">
  </div>
     <form class="w3-container" method="post" action="applicantservicelogin.jsp">
  <br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:400px" placeholder="Username" required="required" name="Username"><br>
  <input class="w3-input w3-animate-input" type="password" style="width:135px; max-width:400px" placeholder="Password" required="required" name="Password"><br>
  <button class="w3-btn w3-white w3-border w3-border-red w3-round-large" type="submit">Login</button>
   <button class="w3-btn w3-white w3-border w3-border-red w3-round-large" type="button" onclick="document.getElementById('id01').style.display='block'">Forgot Password ?</button>
   <p><br></p></form>
     
       <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:400px">
            
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-small w3-hover-red w3-display-topright" title="Close">&times;</span>
        <img src="images\img13.png" alt="Avatar" style="width:20%" class="w3-circle w3-margin-top">
      </div>

      <form class="w3-container" action="forgotpassword2.jsp">
        <div class="w3-section">
          <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Username" required="required" name="Username"><br>
           <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Contact No." required="required" name="Contact"><br>
            <button class="w3-btn w3-white w3-border w3-border-red w3-round-large" type="submit">Get Password</button>
        </div>
      </form>

    </div>
  </div>
  </div>

  <div id="Register" class="w3-container event" style="display:none">
       <div class="imgcontainer">
    <img src="images\img13.png" alt="Avatar" class="avatar">
  </div>
       <form class="w3-container" action="applicantsignupprocess.jsp" method="post">
  <br>
  <label>ROZGAAR ID</label>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="ROZGAAR ID" required="required" name="appid" value="<%=n1%>" pattern="{5,}" title="ROZGAAR ID gives you a unique identity"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:400px" placeholder="Name" required="required" name="empname"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:400px" placeholder="Contact" required="required" name="empcon"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:400px" placeholder="Email" name="empemail"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:400px" placeholder="Username" required="required" name="empusername"><br>
  <input class="w3-input w3-animate-input" type="password" style="width:135px; max-width:350px" placeholder="Password" required="required" name="emppassword"><br>
   <button class="w3-btn w3-white w3-border w3-border-red w3-round-large" type="submit" onclick="document.getElementById('id04').style.display='block'">Signup</button>
  <p><br></p>
   </form>
  
    <div id="id02" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:400px">
      
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id02').style.display='none'" class="w3-button w3-small w3-hover-red w3-display-topright" title="Close">&times;</span>
        <img src="images\img13.png" alt="Avatar" style="width:20%" class="w3-circle w3-margin-top">
      </div>

      <form class="w3-container" action="/action_page.php">
        <div class="w3-section">
          <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Username" required="required" name="Username"><br>
           <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Contact No." required="required" name="Contact No."><br>
            <button class="w3-btn w3-white w3-border w3-border-red w3-round-large" type="submit">Get Password</button>
        </div>
      </form>

    </div>
  </div>
  </div>
   
   
   </div>
 
<script>
function openevent(evt, cityName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("event");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
     tablinks[i].className = tablinks[i].className.replace(" w3-border-red", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.firstElementChild.className += " w3-border-red";
}
</script>

</body>
</html>