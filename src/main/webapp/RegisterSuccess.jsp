<%-- 
    Document   : registerSuccess
    Created on : 2017-11-19, 22:07:12
    Author     : LYJni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Twitter Bootstrap shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- Customize styles -->
    <link href="style.css" rel="stylesheet"/>
    <!-- font awesome styles -->
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
	
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
  </head>
<body>
<!-- 
	Upper Header Section 
-->
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="topNav">
		<div class="container">
			<div class="alignR">
				<div class="pull-left socialNw">
				
				</div>
				<a class="active" href="index.jsp"> <span class="icon-home"></span> Home</a> 
				
				<a href="Register.jsp"><span class="icon-edit"></span> Free Register </a> 
				<a href="contact.html"><span class="icon-envelope"></span> Contact us</a>
				
			</div>
		</div>
	</div>
</div>

<!--
Lower Header Section 
-->
<div class="container">
<div id="gototop"> </div>
<header id="header">
<div class="row">
	<div class="span4">
	<h1>
	<a class="logo" href="index.jsp"><span>Twitter Bootstrap ecommerce template</span> 
		<img src="assets/img/logo-bootstrap-shoping-cart.png" alt="bootstrap  shop">
	</a>
	</h1>
	</div>
	
</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	  <div class="navbar-inner">
		<div class="container">
		  <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </a>
		  <div class="nav-collapse">
			<ul class="nav">
			  <li class="active"><a href="index.jsp">Home	</a></li>
			  <li class=""><a href="list-view.html">All Product</a></li>
		
			</ul>
			
                      
		
                    
			
		  </div>
		</div>
	  </div>
	</div>
    
          <%
            // Get the result from the session (how many customers were updated)
            Object resultValue = session.getAttribute("register");
            // If we have a result value to use, then display it
            if (resultValue != null)
            {
              
         %> 
successfully registered

        <%

            session.removeAttribute("register");
        } else
        {
        %>
        No customer update information found.
        <%
            }
        %>
        <div><a href="index.jsp">Back to index</a></div>
        <a href="Loggin.jsp">Login To your Account</a></div>
    </body>
</html>
