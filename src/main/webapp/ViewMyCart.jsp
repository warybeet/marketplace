<%-- 
    Document   : QuantitySelect
    Created on : 15-Feb-2018, 13:25:56
    Author     : d00172193
--%>

<%@page import="Dtos.Product"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="Dtos.User"%>
<%@page import="Dtos.CartProduct"%>
<%@page import="Dtos.Cart"%>
<%@page import="java.util.List"%>
<%@page import="Dtos.Cart"%>
<%@page import="Daos.CartDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<script>
            var request;
            function sendInfo()
            {
                var v = document.vinform.t1.value;
                var url = "AjaxProcess.jsp?val=" + v;

                if (window.XMLHttpRequest) {
                    request = new XMLHttpRequest();
                } else if (window.ActiveXObject) {
                    request = new ActiveXObject("Microsoft.XMLHTTP");
                }

                try {
                    request.onreadystatechange = getInfo;
                    request.open("GET", url, true);
                    request.send();
                } catch (e) {
                    alert("Unable to connect to server");
                }
            }

            function getInfo() {
                if (request.readyState === 4) {
                    var val = request.responseText;
                    document.getElementById('amit').innerHTML = val;
                }
            }

        </script>  
       
  <html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Asian food store</title>
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

                        <a class="active" href="LogginSuccessful.jsp"> <span class="icon-home"></span> Home</a> 
                        <a href="EditDetails.jsp"><span class="icon-user"></span> My Account</a> 
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
                            <a class="logo" href="LogginSuccessful.jsp"><span>Asian food Store</span> 
                                <img src="assets/img/V3.png" alt="bootstrap shop">
                            </a>
                        </h1>
                    </div>
        <div class="span4">
	
	</div>
	<div class="span4 alignR">
	<p><br> <strong> Support (24/7) :  0877777777 </strong><br><br></p>
	  <%@include file="internationalisationHeader.jsp" %>
      
	</div>
                </div>
            </header>
      <%
            // Retrieve the resource bundle from the session
            ResourceBundle dataBundle = (ResourceBundle) session.getAttribute("dataBundle");
            // If there is no bundle stored (i.e. if this is the first time you're coming to the site)
            if(dataBundle == null){
                // Create a resource bundle based on the client's current locale settings
                dataBundle = ResourceBundle.getBundle("properties.ClassicModels", clientLocale);

                // Store this resource bundle for future use
                session.setAttribute("dataBundle", dataBundle);
            }
            
        %>

<!--
<!-- 
	Upper Header Section 
-->


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
                          <ul class="nav">
			  <li class=""><a href="LogginSuccessful.jsp">Home</a></li>
			  <li class=""><a href="LogedVCP.jsp">Products</a></li>
                          <li class="active"><a href="ViewMyCart.jsp">My Cart</a></li>
                           <li class=""><a href="ViewMyOrders.jsp">My Order</a></li>
                             <li class=""><a href="ViewWishlist.jsp">Wish List</a></li>
                          <li class=""><a href="logout.jsp">LogOut</a><li>
		 <form name="vinform" action="SearchResult.jsp" method ="post" class="navbar-search pull-left">
                                <input type="text" name="t1" onkeyup="sendInfo()" placeholder="Search a product..." class="search-query span2">
                                <span id="amit"> </span>
			</ul>
		</div>
	  </div>
	</div>
<!-- 

-->
	
	<div class="row">
	<div class="span12">
    <ul class="breadcrumb">
		<li><a href="LogginSuccessful.jsp">Home</a> <span class="divider">/</span></li>
		<li class="active">Check Out</li>
 </ul>
<div class="well well-small">
		<h1>Check Out </h1>
	<hr class="soften"/>	
			
       
        <h1>All in your cart</h1>
        <%
            User resultValue = (User) session.getAttribute("logginS");
            int uId = resultValue.getUserID();
            if (resultValue != null) {
                CartDao cDao = new CartDao("marketplace");

                List<CartProduct> carts = cDao.AllInCartByUserId(uId);
                double total = 0.0;
                DecimalFormat df = new DecimalFormat("#.00");
                Map<Integer, Integer> orderItems = new HashMap<>();
        %>
        <!-- set up table structure -->
      <table class="table table-bordered table-condensed">
          <thead>
            <tr>
                <th>Product Name</th>
                <th>Brand</th>
                <th>Weight(g)/Pack</th>
                <th>Description</th>
                <th>Image1</th>
               <th>Price/Pack</th>
                <th>Quantity Selected</th>
                <th>Remove</th>


            </tr>
               <thead>
            <%
                for (CartProduct c : carts) {

            %>
         
  <tbody>
            <tr>

                <td><%=c.getpName()%></td>
                <td><%=c.getBrand()%></td>
                <td><%=c.getWeight()%></td>
                <td><%=c.getDescription()%></td>
                <td> <img src="${pageContext.servletContext.contextPath }/ShowImage?ProductID=<%=c.getProductId()%>" /></td>
               <td><%=c.getPrice()%></td>
                <td><%=c.getQuantity()%></td>
            

              
            <form action="FrontController" method="post">
                
                 <input type="hidden" name="pid" value="<%=c.getProductId()%>"/>
                
              <td>   <input class="btn btn-mini btn-danger" type="submit" value="Remove" /></td>
             <input type="hidden" name ="action" value="DeleteCartItem" />
            </form>

              <tbody>


            <%
              total += c.getQuantity() * c.getPrice();
                    Integer currentQuantity = orderItems.get(c.getProductId());
                    if (currentQuantity!=null){
                    orderItems.put(c.getProductId(), c.getQuantity()+currentQuantity);
                    }else{
                    orderItems.put(c.getProductId(), c.getQuantity());
                    }
                }
                session.setAttribute("itemMap", orderItems);
            %>

            <p>Hello <%=resultValue.getUserName()%> : <br> Here is your total Pay: </p>
            <p>total: <%=df.format(total)%> (EURO)</p>
            <%     session.setAttribute("price",total);                              %>
            <%--         ***********************        --%>
            <form action="FrontController" method="post">

               <input type="submit" value="checkout">
                <input type="hidden" name ="action" value="checkout" />



            </form>

            <%                } else {
            %>please Login first<%
                }
            %>
        </table>
        <a href="ViewProductAll.jsp" class="shopBtn btn-large"><span class="icon-arrow-left"></span> Continue Shopping </a>
        
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
