<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <link rel="stylesheet" href="w3css.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Contact Page</title>
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
#map {
    width: 100%;
    height: 400px;
    -webkit-filter: grayscale(100%); /* Safari 6.0 - 9.0 */
    filter: grayscale(100%);
}
/* Popup container - can be anything you want */
.popup {
    position: relative;
    display: inline-block;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

/* The actual popup */
.popup .popuptext {
    visibility: hidden;
    width: 160px;
    background-color: #555;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 8px 0;
    position: absolute;
    z-index: 1;
    bottom: 125%;
    left: 50%;
    margin-left: -80px;
}

/* Popup arrow */
.popup .popuptext::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: #555 transparent transparent transparent;
}

/* Toggle this class - hide and show the popup */
.popup .show {
    visibility: visible;
    -webkit-animation: fadeIn 1s;
    animation: fadeIn 1s;
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
    from {opacity: 0;} 
    to {opacity: 1;}
}

@keyframes fadeIn {
    from {opacity: 0;}
    to {opacity:1 ;}
}

</style>
<script>
  function myfunction(){
	  alert("Your Query has been submitted successfully!! You'll be responded shortly.")
	  
  }
</script>

</head>
<body>
  <div class="header w3-light-blue">
  <a href="#default" class="logo">ROZGAAR</a>
  <div class="header-right">
    <a href="Home.jsp">Home</a>
    <a   href="About.jsp">About</a>
    <a class="active" href="Contact.jsp">Contact</a>
    <a href="User.jsp">User</a>
    <a href="Services.jsp">Services</a>
    <a href="Others.jsp">Others</a>
  </div>
</div><br><br>

  <div class="w3-container w3-twothird">
  <h2>Contact Us</h2>

  <div class="w3-row">
    <a href="javascript:void(0)" onclick="openevent(event, 'Query');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Query</div>
    </a>
    <a href="javascript:void(0)" onclick="openevent(event, 'Contact');">
      <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Contact</div>
    </a>
    
  </div>

  <div id="Query" class="w3-container event" style="display:none">
     <form class="w3-container" action="contactresponse.jsp" method="post" target="_blank">
  <br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:300px" placeholder="First Name" required="required" name="firstname"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:300px" placeholder="Last Name" name="lastname"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:300px" placeholder="Contact No." required="required" name="contact"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:300px" placeholder="Email" name="email"><br>
  <input class="w3-input w3-animate-input" type="text" style="width:135px; max-width:800px" placeholder="Message" required="required" name="message"><br>
    <button class="w3-btn w3-white w3-border w3-border-red w3-round-large popup" type="submit">Send</button>
    </form>
    
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

  <div id="Contact" class="w3-container event" style="display:none">
    <div class="w3-container">
  <br><img src="images\img11.jpg" alt="Lights" class="w3-image" width="600" height="400">
  <p><b>Address :</b>Sector-3, Rohini, Delhi-110085</p>
  <p><b>Contact No. :</b>91-9910841494 / 91-7042182878</p>
  <a href="https://www.facebook.com/" class="fa fa-facebook"></a>
     <a href="https://twitter.com/login" class="fa fa-twitter w3-center"></a>
     <a href="https://www.instagram.com/accounts/login/?next=/accounts/edit/" class="fa fa-instagram"></a>
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
</script><br>
     
</body>
</html>