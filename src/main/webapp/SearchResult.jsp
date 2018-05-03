<%-- 
    Document   : SearchResult
    Created on : 2018-3-15, 0:54:27
    Author     : LYJni
--%>

<%@page import="Dtos.CategoryProduct"%>
<%@page import="java.util.List"%>
<%@page import="Dtos.User"%>
<%@page import="Daos.ProductDao"%>
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
                            <a  href="index.jsp"> <span class="icon-home"></span> Home</a> 
                            <a href="#"><span class="icon-user"></span> My Account</a> 
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
                                    <img src="assets/img/logo-bootstrap-shoping-cart.png" alt="bootstrap sexy shop">
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
                                    <li class=""><a href="ViewProductAll.jsp">All Product</a></li>
                                    <li class=""><a href="grid-view.html">Product Cate</a></li>
                                    <li class=""><a href="three-col.html">Three Column</a></li>
                                    <li class=""><a href="four-col.html">Four Column</a></li>
                                    <li class=""><a href="general.html">General Content</a></li>
                                </ul>
                                <form name="vinform" action="SearchResult.jsp" method ="post" class="navbar-search pull-left">
                                    <input type="text" name="t1" onkeyup="sendInfo()" placeholder="Search a product..." class="search-query span2">

                                </form>



                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 
                
        <%
            String pName = request.getParameter("t1");
            ProductDao pDao = new ProductDao("marketplace");
            User resultValue = (User) session.getAttribute("logginS");

            if (pName != null) {

                List<CategoryProduct> FullInfo = pDao.getFullProductInfoByPName(pName);
                if (FullInfo!=null){
        %>
        <!-- set up table structure -->
<div class="span9">
                    <ul class="breadcrumb">
                        <li><a href="index.html">Home</a> <span class="divider">/</span></li>
                        <li><a href="products.html">Items</a> <span class="divider">/</span></li>
                        <li class="active">Preview</li>
                    </ul>


          
            <%                // Loop to print out all of the rows
                for (CategoryProduct p : FullInfo) {


            %>
            <!-- Create a row for this customer -->

            
            <form action="FrontController" method="post">        
    

                        <input type="hidden" name="pid" value="<%=p.getProductID()%>"/>


                        <div class="well well-small">
                            <div class="row-fluid">
                                <div class="span5">
                                    <div id="myCarousel" class="carousel slide cntr">
                                        <div class="carousel-inner">
                                            <div class="item active">
                                                <img src="${pageContext.servletContext.contextPath }/ShowImage?ProductID=<%=p.getProductID()%>" /></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    <div class="span7">
                                        <h3><%=p.getProductName()%></h3>
                                        <hr class="soft"/>
                                     
                                            <div class="control-group">
                                                <label class="control-label"><h4>$<%=p.getPrice()%></h4></label>

                                            </div>
                                                <span>Stock:<%=p.getStock()%></span>
                                    </div>
                                </div>
                     <hr class="softn clr"/>
                      <ul id="productDetail" class="nav nav-tabs">
              <li class="active"><a href="#home" data-toggle="tab">Product Details</a></li>
                </ul>
                        <div id="myTabContent" class="tab-content tabWrapper">
            <div class="tab-pane fade active in" id="home">
                <h4>Product Information</h4>
                 <table class="table table-striped">
                     <tbody>
				<tr class="techSpecRow"><td class="techSpecTD1">Brand:</td><td class="techSpecTD2"><%=p.getBrand()%></td></tr>
                                <tr class="techSpecRow"><td class="techSpecTD1">Category:</td><td class="techSpecTD2"><%=p.getCategoryName()%></td></tr>
                                <tr class="techSpecRow"><td class="techSpecTD1">Weight:</td><td class="techSpecTD2"><%=p.getWeight()%>g</td></tr>
                                </tbody>
				</table>           
                                <p><%=p.getpDescription()%></P>
                                         
                               
                                            <%if (resultValue != null) {%>
                                            <td> <select name="pQuantity" size="1" id="pQuantity">
                                                    <option value="1" selected>1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                </select>
                                            </td>
                                            <td><input type="submit" class="shopBtn"value="AddCart" /></td> 
                                            <td><input type="hidden" name ="action" value="AddCart" /></td>
                                                <%}%>
                                        </form>

        
        <%

            }
}else{
%> The Product you search Currently not in stock <%

}  

} else {
        %>pid not get<%
            }

        %>
    </table>
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


</body>
</html>
