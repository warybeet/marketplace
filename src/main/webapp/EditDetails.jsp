<%-- 

--%>


<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>edit</title>
    </head>
    <body>
        <%

            User resultValue = (User) session.getAttribute("userInfo");
            // If we have a result value to use, then display it

            if (resultValue != null) {
                // Cast it to a number

        %> 

        welcome <%="-- "+resultValue.getUserName()+" --"%> here's edit form

        <%

            // session.removeAttribute("logginS");
        } else {
        %>
        No user information found.
        <%
            }
        %>
        <div>




            <p>Form to edit details</p>
            <form action="FrontController" method="post">
                <table>
                    <tr>
                        <td> user name  : </td><td> <input name="uName" size=30 required="" type="text" /> </td> 
                    </tr>
                    <tr>
                        <td> first name  : </td><td> <input name="fName" size=15 type="text" /> </td> 
                    </tr>
                    <tr>
                        <td> last name  : </td><td> <input name="lName" size=30 type="text" /> </td> 
                    </tr>
                    <tr>
                        <td> password  : </td><td> <input name="password" required="" size=15 type="text" /> </td> 
                    </tr>
                    <tr>
                        <td> phone  : </td><td> <input name="phone" size=30 required="" type="text" /> </td> 
                    </tr>
                     <tr>
                        <td> email  : </td><td> <input name="email" size=30 required="" type="text" /> </td> 
                    </tr>
                    <tr>
                        <td> gender  : </td><td> <input name="gender" size=15 type="text" /> </td> 
                    </tr>
                    <tr>
                        <td> address  : </td><td> <input name="address" size=50 type="text" /> </td> 
                    </tr>
                                        
                </table>
                <input type="hidden" name="id" value="<%=resultValue.getUserID()%>">
                <input type="submit" value="Change" />
                <input type="hidden" name ="action" value="editUser" />

            </form>
        </div>
    </body>
</html>


