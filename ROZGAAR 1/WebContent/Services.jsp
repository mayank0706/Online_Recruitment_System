<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="w3css.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Services Page</title>
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

<!-- services styling -->
.collapsible {
    background-color: #777;
    color: white;
    cursor: pointer;
    padding: 18px;
    width: 100%;
    border: none;
    text-align: left;
    outline: none;
    font-size: 15px;
}

.active, .collapsible:hover {
    background-color: #555;
}

.content {
    padding: 0 18px;
    display: none;
    overflow: hidden;
    background-color: w3-blue;
}

<!-- Text resume comparison table styling -->
  table {
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 1px solid #ddd;
}

th, td {
    text-align: center;
    padding: 16px;
}

th:first-child, td:first-child {
    text-align: left;
}

tr:nth-child(even) {
    background-color: #f2f2f2
}

.fa-check {
    color: green;
}

.fa-remove {
    color: red;
}

<!-- Subscription pricing styling -->
  * {
    box-sizing: border-box;
}

.columns {
    float: left;
    width: 300px;
    padding: 8px;
}

.price {
    list-style-type: none;
    border: 1px solid #eee;
    margin: 0;
    padding: 0;
    -webkit-transition: 0.3s;
    transition: 0.3s;
}

.price:hover {
    box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2)
}

.price .header {
    background-color: #111;
    color: white;
    font-size: 25px;
}

.price li {
    border-bottom: 1px solid #eee;
    padding: 20px;
    text-align: center;
}

.price .grey {
    background-color: #eee;
    font-size: 20px;
}

.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 25px;
    text-align: center;
    text-decoration: none;
    font-size: 18px;
}

@media only screen and (max-width: 600px) {
    .columns {
        width: 100%;
    }
}

<!-- Courses/certifications styling -->
div.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 180px;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: 200px;
}

div.desc {
    padding: 15px;
    text-align: center;
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

<!-- Our Services Image -->
<div class="w3-container">
 <img src="images/img21.png" class="w3-animate-fading w3-padding-small" style="widht:100%">
</div><br>

<!-- Services -->
 <!-- Resume Writing -->
    <button onclick="myFunction('Demo1')" class="w3-btn w3-block w3-blue w3-left-align"><h5 class="w3-wide">Resume Writing</h5></button>
<div id="Demo1" class="w3-container w3-hide"><br>
  
   
   <!-- Resume Services Tabs -->
      <div class="w3-container">
  <div class="w3-row">
    <a href="javascript:void(0)" onclick="openCity(event, 'textresume');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Text Resume</div>
    </a>
    <a href="javascript:void(0)" onclick="openCity(event, 'visualresume');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Visual Resume</div>
    </a>
  </div>
    <!-- Text Resume Service -->
  <div id="textresume" class="w3-container city" style="display:none">
    <br><div class="w3-container w3-third"><br><br>
            <div class="columns w3-animate-zoom">
  <ul class="price">
    <li class="header">Subscription</li>
    <li>For 3 months  : 600  INR</li>
    <li>For 6 months  : 1000 INR</li>
    <li>For 1 year    : 1800 INR</li>
    <li class="grey"><a href="serviceslogin.jsp" class="w3-btn w3-white w3-border w3-border-red w3-round-large">Get Subscription</a></li>
  </ul>
</div>
         </div>
    
 <div class="w3-container w3-twothird">
       <h2>Comparison Table</h2>

<table class="w3-animate-zoom">
  <tr>
    <th style="width:50%">Features</th>
    <th>Free Resume</th>
    <th>ROZGAAR Text Resume</th>
  </tr>
  <tr>
    <td>CV visible to all recruiters</td>
    <td><i class="fa fa-check"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Impress recruiters with professionally written resume</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Highlight skills valued by recruiters in your domain</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Attractive & Recruiter-friendly resume format</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Error-free resume through 65+ quality checks</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
</table><br>
   </div>
  </div>
  
<!-- Visual Resume Service -->
  <div id="visualresume" class="w3-container city" style="display:none">
         <br><div class="w3-container w3-third"><br><br>
            <div class="columns w3-animate-zoom">
  <ul class="price">
    <li class="header">Subscription</li>
    <li>For 3 months  : 698  INR</li>
    <li>For 6 months  : 1199 INR</li>
    <li>For 1 year    :  2000 INR</li>
    <li class="grey"><a href="serviceslogin.jsp" class="w3-btn w3-white w3-border w3-border-red w3-round-large">Get Subscription</a></li>
  </ul>
</div>
         </div>
     
     <div class="w3-container w3-twothird">
       <h2>Comparison Table</h2>

<table class="w3-animate-zoom">
  <tr>
    <th style="width:50%">Features</th>
    <th>Free Resume</th>
    <th>ROZGAAR Visual Resume</th>
  </tr>
  <tr>
    <td>CV visible to all recruiters</td>
    <td><i class="fa fa-check"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Impress recruiters in 30 seconds</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Grab attention with visually appealing resume</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Highlight skills valued by recruiters in your domain</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Showcase your career path with active timelines</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Attractive & Recruiter-friendly resume format</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Error-free resume through 65+ quality checks</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
</table><br>
 
   </div>
       </div><br><br></div></div>

<script>
function openCity(evt, cityName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("city");
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
      
   
<!-- onDoorJobs -->
    <button onclick="myFunction('Demo2')" class="w3-btn w3-block  w3-left-align"><h5 class="w3-wide">onDoorJobs</h5></button>
<div id="Demo2" class="w3-container w3-hide">
  <h3 class="w3-text-blue w3-animate-fading"><b>Benefits of buying onDoorJobs service from ROZGAAR</b></h3>
      <br><div class="w3-container w3-third"><br><br>
            <div class="columns w3-animate-zoom">
  <ul class="price">
    <li class="header">Subscription</li>
    <li>For 3 months  : 900  INR</li>
    <li>For 6 months  : 1650 INR</li>
    <li>For 1 year    : 2900 INR</li>
    <li class="grey"><a href="serviceslogin.jsp" class="w3-btn w3-white w3-border w3-border-red w3-round-large">Get Subscription</a></li>
  </ul>
</div>
         </div>
     
     <div class="w3-container w3-twothird">
       <h2>Comparison Table</h2>

<table class="w3-animate-zoom">
  <tr>
    <th style="width:50%">Features</th>
    <th>Free Alerts</th>
    <th>onDoorJobs Alerts</th>
  </tr>
  <tr>
    <td>Search and Apply to jobs on ROZGAAR</td>
    <td><i class="fa fa-check"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Receive jobs within 30 minutes of being posted*</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Early Applicant advantage</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Jobs handpicked by ROZGAAR domain expert</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Expand job search to openings posted on company websites</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Receive relevant jobs on SMS-max 5</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Receive customized job alerts on mail</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Guaranteed interview calls from recruiters</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
</table><br>
 
   </div>
       </div>


<!-- Career/Certifications -->
    <button onclick="myFunction('Demo3')" class="w3-btn w3-block w3-blue w3-left-align"><h5 class="w3-wide">Career/Certifications</h5></button>
<div id="Demo3" class="w3-container w3-hide"><br>
<div class="w3-container w3-third w3-animate-zoom">
   <div class="gallery">
  <a target="_blank" href="itservice.jsp">
    <img src="images/img22.jpg" alt="telecom" width="300" height="200">
  </a>
  <div class="desc w3-black">IT & Telecom</div>
</div><br>

<div class="gallery">
  <a target="_blank" href="bankingservice.jsp">
    <img src="images/img23.jpg" alt="banking" width="50" height="50">
  </a>
  <div class="desc w3-black">Banking & Finance</div>
</div></div>

<div class="w3-container w3-third w3-animate-zoom">
<div class="gallery">
  <a target="_blank" href="datascienceservice.jsp">
    <img src="images/img24.jpg" alt="datascience" width="600" height="400">
  </a>
  <div class="desc w3-black">Data Science & Analytics</div>
</div><br>

<div class="gallery">
  <a target="_blank" href="digitalmarketingservice.jsp">
    <img src="images/img25.jpg" alt="Mountains" width="600" height="400">
  </a>
  <div class="desc w3-black">Digital Marketing</div>
</div></div>

<div class="w3-container w3-third w3-animate-zoom">
<div class="gallery">
  <a target="_blank" href="adminservice.jsp">
    <img src="images/img26.jpg" alt="hradmin" width="600" height="400">
  </a>
  <div class="desc w3-black">HR & Admin</div>
</div><br>

<div class="gallery">
  <a target="_blank" href="leadershipservice.jsp">
    <img src="images/img27.jpg" alt="leadership" width="600" height="400">
  </a>
  <div class="desc w3-black">Leadership & Strategy</div>
</div>
<p><br><br></p>
   </div>
  </div>

 <!-- Styling Collapsible Script -->
 <script>
 function myFunction(id) {
	    var x = document.getElementById(id);
	    if (x.className.indexOf("w3-show") == -1) {
	        x.className += " w3-show";
	    } else { 
	        x.className = x.className.replace(" w3-show", "");
	    }
	}
</script>
</body>
</html>