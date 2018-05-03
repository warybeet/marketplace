<%-- 
    Document   : uploadImage
    Created on : 13-Mar-2018, 12:50:56
    Author     : Danielhua
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload</title>
</head>
<body>
    <h1>Add Product</h1>
    <form method="post" action="fileUpload"
        enctype="multipart/form-data">
        <table>
            <tr>
                <td>Category ID:</td>
                <td><input type="number" name="CategoryID" size="10"
                    required="required" /></td>
            </tr>
            <tr> <select name="CategoryID" size="1" id="pQuantity">
                                                    <option value="1" selected>1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                </select>
                                            </tr>
            <tr>
                <td>Product Name:</td>
                <td><input type="text" name="pName" size="10"
                    required="required" /></td>
            </tr>
            <tr>
                <td>Brand:</td>
                <td><input type="text" name="brand" size="10"
                    required="required" /></td>
            </tr>
            <tr>
                <td>Weight:</td>
                <td><input id="number" type="number" name="Weight" size="10"
                    required="required" /></td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><input type="text" name="description" size="10"
                    required="required" /></td>
            </tr>
             <tr>
                <td>Stock:</td>
                <td><input id="number" type="number" name="Stock" size="10"
                    required="required" /></td>
            </tr>
             <tr>
                <td>Date:</td>
                <td><input id="date" type="date" name="foodDate" size="10"
                    required="required" /></td>
            </tr>
              <tr>
                <td>price:</td>
                <td><input id="number" type="number" name="price" size="10"
                    required="required" /></td>
            </tr>
            
            
            <tr>
                <td>Choose Image1:</td>
                <td><input type="file" name="image1" size="10"
                    required="required" /></td>
            </tr>
              <tr>
                <td>Choose Image2:</td>
                <td><input type="file" name="image2" size="10"
                    required="required" /></td>
            </tr>
            <tr>
                <td><input type="submit" value="Submit"></td>
                <td><input type="reset" value="Clear" /></td>
            </tr>
        </table>
    </form>
</body>
</html>