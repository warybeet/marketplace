<%-- 
    Document   : RegisterPage
    Created on : 14-Dec-2017, 16:04:51
    Author     : D00162121
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
				<a  href="index.jsp"> <span class="icon-home"></span> Home</a> 
				
				<a class="active"  href="Register.jsp"><span class="icon-edit"></span> Free Register </a> 
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
			  <li class=""><a href="index.jsp">Home	</a></li>
			  <li class=""><a href="list-view.html">All Product</a></li>
		
			</ul>
			
                      
		
                    
			
		  </div>
		</div>
	  </div>
	</div>
<!-- 
Body Section 
-->
	<div class="row">
                <ul class="breadcrumb">
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active">Registration</li>
    </ul>
            <h3>Register </h3>
            <hr class="soft"/>
	<div class="well">
        <form action="FrontController" method="post"class="form-horizontal">
            <h3>Your Personal Details</h3>
              <div class="control-group">
			<label class="control-label" for="uName">user name <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="uName" name="uName" placeholder="Username">
			</div>
		 </div>
              <div class="control-group">
			<label class="control-label" for="password">password <sup>*</sup></label>
			<div class="controls">
			  <input  id="password" name="password" type="password" placeholder="Password">
			</div>
		 </div>
            	<div class="control-group">
			<label class="control-label" for="inputFname">First name <sup>*</sup></label>
			<div class="controls">
			  <input type="text"name="fName" id="fName" placeholder="First Name">
			</div>
		 </div>
            	<div class="control-group">
			<label class="control-label" for="inputlname">Last name <sup>*</sup></label>
			<div class="controls">
			  <input type="text" name="lName" id="lName" placeholder="last Name">
			</div>
		 </div>
                	<div class="control-group">
			<label class="control-label" for="inputGender">Gender<sup>*</sup></label>
			<div class="controls">
			  <input type="text"name="gender" id="gender" placeholder="gender">
			</div>
		 </div>
               <div class="control-group">
			<label class="control-label" for="inputPhone">Phone<sup>*</sup></label>
			<div class="controls">
			  <input type="text"name="phone" id="phone" pattern="08[3679]-d{7}" placeholder="phone">
			</div>
		 </div>
            	<div class="control-group">
		<label class="control-label" for="inputEmail">Email <sup>*</sup></label>
		<div class="controls">
		  <input type="text" name="email"  type="email" required placeholder="Email">
		</div>
	  </div>
               	<div class="control-group">
		<label class="control-label" for="inputEmail">address <sup>*</sup></label>
		<div class="controls">
		  <input type="text" name="address" placeholder="address">
		</div>
	  </div>
             <div class="control-group">
		<div class="controls">
            <input type="submit" value="register" />
            <!-- Include a hidden field to identify what the user wants to do -->
            <input type="hidden" name ="action" value="register" />
        </div>
            </div>
        </form>
<footer class="footer">
<div class="row-fluid">
<div class="span2">
<h5>Your Account</h5>
<a href="#">YOUR ACCOUNT</a><br>
<a href="#">PERSONAL INFORMATION</a><br>
<a href="#">ADDRESSES</a><br>
<a href="#">DISCOUNT</a><br>
<a href="#">ORDER HISTORY</a><br>
 </div>
<div class="span2">
<h5>Iinformation</h5>
<a href="contact.html">CONTACT</a><br>
<a href="#">SITEMAP</a><br>
<a href="#">LEGAL NOTICE</a><br>
<a href="#">TERMS AND CONDITIONS</a><br>
<a href="#">ABOUT US</a><br>
 </div>
<div class="span2">
<h5>Our Offer</h5>
<a href="#">NEW PRODUCTS</a> <br>
<a href="#">TOP SELLERS</a><br>
<a href="#">SPECIALS</a><br>
<a href="#">MANUFACTURERS</a><br>
<a href="#">SUPPLIERS</a> <br/>
 </div>
 <div class="span6">
<h5>The standard chunk of Lorem</h5>
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for
 those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et 
 Malorum" by Cicero are also reproduced in their exact original form, 
accompanied by English versions from the 1914 translation by H. Rackham.
 </div>
 </div>
</footer>
    </body>
    
</html>
