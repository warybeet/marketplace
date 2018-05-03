<%-- 
    Document   : ViewWishlist
    Created on : 2018-4-15, 19:47:32
    Author     : LYJni
--%>

<%@page import="Dtos.WishProduct"%>
<%@page import="Dtos.Wishlist"%>
<%@page import="java.util.List"%>
<%@page import="Daos.WishlistDao"%>
<%@page import="Daos.ProductDao"%>
<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                          <li class=""><a href="ViewMyCart.jsp">My Cart</a></li>
                           <li class=""><a href="ViewMyOrders.jsp">My Order</a></li>
                             <li class="active"><a href="ViewWishlist.jsp">Wish List</a></li>
                          <li class=""><a href="logout.jsp">LogOut</a><li>
		 <form name="vinform" action="SearchResult.jsp" method ="post" class="navbar-search pull-left">
                                <input type="text" name="t1" onkeyup="sendInfo()" placeholder="Search a product..." class="search-query span2">
                                <span id="amit"> </span>
			</ul>
		</div>
	  </div>
	</div>

	<div class="row">
	<div class="span12">
    <ul class="breadcrumb">
		<li><a href="LogginSuccessful.jsp">Home</a> <span class="divider">/</span></li>
		<li class="active">Wish List</li>
    </ul>
            <div class="well well-small">
       <h1>All wished items</h1>
       	<hr class="soften"/>	


    <marquee><h1>welcome</h1></marquee>  
 

    <br>

    <%
        int uId = 0;
        User resultValue = (User) session.getAttribute("logginS");
        if (resultValue != null) {
            uId = resultValue.getUserID();
        }
        WishlistDao wDao = new WishlistDao("marketplace");
        List<WishProduct> items = wDao.getWishlistProductByUserId(uId);

    %>
    <!-- set up table structure -->

    <table class="table table-bordered table-condensed">
          <thead>
        <tr>
            <th></th>
            <th>Product Name</th>
            <th>Brand</th>
            <th>image1</th>
            <th>Price</th>
                <%  if (resultValue != null) {
                %>
            <th>Select A Quantity</th>
                <%
                    }%>

        </tr>
        <%                for (WishProduct w : items) {


        %>

        <tr>
        <form action="FrontController" method="post">        
            <td>
                <input type="hidden" name="pid" value="<%=w.getProductId()%>"/>
            </td>
            <td><a href="ProductDetails.jsp?pid=<%=w.getProductId()%>"><%=w.getpName()%></a></td>
            <td><%=w.getBrand()%></td>
             <td> <img src="${pageContext.servletContext.contextPath }/ShowImage?ProductID=<%=w.getProductId()%>" /></td>
            <td><%=w.getPrice()%></td>
            <%if (resultValue != null) {


            %>
            <td> <select name="pQuantity" size="1" id="pQuantity">
                    <option value="1" selected>1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
            </td>

            <td><input type="submit" value="AddCart" /></td> 
            <td><input type="hidden" name ="action" value="AddCart" /></td>

                <%                }


                %>


        </form>


    </tr>
    <%                // Close the loop
        }


    %>
</table>



</form> 
<%    if (resultValue != null) {
%>
<form> 
    <input type=button 
           value="MY CART"
           onClick="self.location = 'ViewMyCart.jsp'">
</form> 

<%
} else {
%>
<form> 
    <input type=button 
           value="Log In"
           onClick="self.location = 'Loggin.jsp'">
</form> 

<%
    }
%>
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
