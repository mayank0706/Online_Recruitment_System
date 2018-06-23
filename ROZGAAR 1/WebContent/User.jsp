<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>
<%
Random rand = new Random();
int n = rand.nextInt(900000) + 15000;
int n1= rand.nextInt(276540) + 17800;
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="w3css.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>User Page</title>

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
    width: 20%;
    border-radius: 50%;
}

<!-- Password Validation Styling -->
  /* The message box is shown when the user clicks on the password field */
#message {
    display:none;
    background: #f1f1f1;
    color: #000;
    position: relative;
    padding: 20px;
    margin-top: 10px;
}

#message p {
    padding: 10px 35px;
    font-size: 14px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
    color: green;
}

.valid:before {
    position: relative;
    left: -35px;
    content: "*";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
    color: red;
}

.invalid:before {
    position: relative;
    left: -35px;
    content: "X";
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
    <a class="active" href="User.jsp">User</a>
    <a href="Services.jsp">Services</a>
    <a href="Others.jsp">Others</a>
  </div>
</div><br>

<div class="w3-container ">
  <div class="w3-card-4 w3-padding w3-grey">     
       <h3 class="w3-center w3-wide w3-mystyle">LOGIN SECTION</h3>
       <h5 class="w3-mystyle">Rozgaar has two kinds of users accounts that access the site, the <b>Applicant</b> and the <b>Recruiters</b></h5>
       <h5 class="w3-mystyle">Applicants are those who apply for the jobs. Recruiters, which require access to the system in order to add new jobs.
                The recruiter matches the skills of its applicant with the skills required by the company for a particular job.</h5>
       <h3 class="w3-center w3-mystyle w3-wide">SIGNUP SECTION</h3>
       <h5 class="w3-mystyle">If a new user wanted to use the fascilities of job, you have to register first. Select your category as a applicant or recruiter
                        and register under the section.</h5>
 <p><br></p>
 </div>
</div><br><br>
   
 
     <div class="w3-container w3-half">
       <h5><b>Login Section</b></h5>
  <div class="w3-row">
    <a href="javascript:void(0)" onclick="openevent(event, 'Recruiters Login');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Recruiters Login</div>
    </a>
    <a href="javascript:void(0)" onclick="openevent(event, 'Applicant Login');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Applicant Login</div>
    </a>
    
  </div>

  <div id="Recruiters Login" class="w3-container  event" style="display:none">
   <div class="imgcontainer">
    <img src="images\img12.png" alt="Avatar" class="avatar">
  </div>
     <form class="w3-container" action="recruiterlogin.jsp" >
  <br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Username" required="required" name="Username"><br>
  <input class="w3-input w3-animate-input" type="password" style="width:135px; max-width:350px" placeholder="Password" required="required" name="Password"><br>
  <button class="w3-btn w3-white w3-border w3-border-red w3-round-large" type="submit">Login</button>
   <button class="w3-btn w3-white w3-border w3-border-red w3-round-large" type="button" onclick="document.getElementById('id01').style.display='block'">Forgot Password ?</button>
   <p><br></p></form>
     
       <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:400px">
            
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-small w3-hover-red w3-display-topright" title="Close">&times;</span>
        <img src="images\img12.png" alt="Avatar" style="width:20%" class="w3-circle w3-margin-top">
      </div>

      <form class="w3-container" action="forgotpassword1.jsp" method="post" target="_blank" >
        <div class="w3-section">
          <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Username" required="required" name="Username"><br>
           <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Contact No." required="required" name="Contact"><br>
            <button class="w3-btn w3-white w3-border w3-border-red w3-round-large" type="submit">Get Password</button>
        </div>
      </form>

    </div>
  </div>
  </div>

  <div id="Applicant Login" class="w3-container event" style="display:none">
       <div class="imgcontainer">
    <img src="images\img13.png" alt="Avatar" class="avatar">
  </div>
       <form class="w3-container" action="applicantlogin.jsp">
  <br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Username" required="required" name="Username"><br>
  <input class="w3-input w3-animate-input" type="password" style="width:135px; max-width:350px" placeholder="Password" required="required" name="Password"><br>
  <button class="w3-btn w3-white w3-border w3-border-red w3-round-large" type="submit">Login</button>
  <button class="w3-btn w3-white w3-border w3-border-red w3-round-large" type="button" onclick="document.getElementById('id02').style.display='block'">Forgot Password ?</button>
   <p><br></p></form>
    <div id="id02" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:400px">
      
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id02').style.display='none'" class="w3-button w3-small w3-hover-red w3-display-topright" title="Close">&times;</span>
        <img src="images\img13.png" alt="Avatar" style="width:20%" class="w3-circle w3-margin-top">
      </div>

      <form class="w3-container" action="forgotpassword2.jsp" method="post" target="_blank" >
        <div class="w3-section">
          <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Username" required="required" name="Username"><br>
           <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Contact No." required="required" name="Contact"><br>
            <button class="w3-btn w3-white w3-border w3-border-red w3-round-large" type="submit">Get Password</button>
        </div>
      </form>

    </div>
  </div>
  </div>
   
   
   </div>
 

<div class="w3-container w3-half">
   <h5><b>Signup Section</b></h5>
      <div class="w3-row">
          <a href="javascript:void(0)" onclick="openevent(event, 'Recruiters Signup');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Recruiters Signup</div>
    </a>
    <a href="javascript:void(0)" onclick="openevent(event, 'Applicant Signup');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Applicant Signup</div>
    </a>
    </div>
       
       <div id="Recruiters Signup" class="w3-container event" style="display:none">
         <div class="imgcontainer">
    <img src="images\img12.png" alt="Avatar" class="avatar">
  </div>
       <form class="w3-container" action="recruitersignupprocess.jsp">
  <br>
  <label>ROZGAAR ID</label>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="ROZGAAR ID" required="required" name="orgid" value="<%=n%>"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Organisation Name" required="required" name="orgname"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Contact" required="required" name="orgcon"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Email" name="orgemail"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Username" required="required" name="orgusername"><br>
  <input class="w3-input w3-animate-input" type="password" style="width:135px; max-width:350px" placeholder="Password" required="required" name="orgpassword" id="psw2"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"><br>
  <input class="w3-btn w3-white w3-border w3-border-red w3-round-large" type="submit" value="Signup" >
   <p><br></p></form>
    <div id="message2">
  <h3>Password must contain the following:</h3>
  <p id="letter2" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital2" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number2" class="invalid">A <b>number</b></p>
  <p id="length2" class="invalid">Minimum <b>8 characters</b></p>
</div>
  </div>
 <!-- Script for Password Validation -->
  <script>
var myInput = document.getElementById("psw2");
var letter = document.getElementById("letter2");
var capital = document.getElementById("capital2");
var number = document.getElementById("number2");
var length = document.getElementById("length2");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
    document.getElementById("message2").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
    document.getElementById("message2").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
</script>

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
   <div id="Applicant Signup" class="w3-container event" style="display:none">
       <div class="imgcontainer">
    <img src="images\img13.png" alt="Avatar" class="avatar">
  </div>
       <form class="w3-container" action="applicantsignupprocess.jsp">
  <br>
  <label>ROZGAAR ID</label>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="ROZGAAR ID" required="required" name="appid" value="<%=n1%>" pattern="{5,}" title="ROZGAAR ID gives you a unique identity"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Name" required="required" name="appname"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Contact" required="required" name="appcon"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Email" name="appemail"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:350px" placeholder="Username" required="required" name="appusername"><br>
  <input class="w3-input w3-animate-input" type="password" style="width:135px; max-width:350px" placeholder="Password" required="required" name="apppassword" id="psw1"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"><br>
  <input class="w3-btn w3-white w3-border w3-border-red w3-round-large" type="submit" value="Signup">
  <p><br></p>
   </form>
  <div id="message1">
  <h3>Password must contain the following:</h3>
  <p id="letter1" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital1" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number1" class="invalid">A <b>number</b></p>
  <p id="length1" class="invalid">Minimum <b>8 characters</b></p>
</div>
  </div>
 <!-- Script for Password Validation -->
  <script>
var myInput = document.getElementById("psw1");
var letter = document.getElementById("letter1");
var capital = document.getElementById("capital1");
var number = document.getElementById("number1");
var length = document.getElementById("length1");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
    document.getElementById("message1").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
    document.getElementById("message1").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
</script>

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