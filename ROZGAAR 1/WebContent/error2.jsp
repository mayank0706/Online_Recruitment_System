<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="w3css.css">
<title>Login Error</title>

</head>

<body>

<br><br><br><br><p class="w3-display-topmiddle" style="color:red">Sorry, Username and Password doesn't match !!! or your record is not available.</p>

<%

getServletContext().getRequestDispatcher("/serviceslogin.jsp").include(request, 
response);

%>

</body>

</html>