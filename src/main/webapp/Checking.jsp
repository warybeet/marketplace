<%-- 
    Document   : Checking
    Created on : 2018-4-12, 23:50:31
    Author     : LYJni
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <a href="ViewProductAll.jsp">home page</a>
 <%
           
            int resultValue =(int)session.getAttribute("orderID"); 
            Map items =(Map)session.getAttribute("itemMap"); 
            if (resultValue != 0)
            {
               
                
        %> 
       
        order number:    <%=resultValue%>

        <%
      Set set = items.entrySet();
      Iterator iterator = set.iterator();
      while(iterator.hasNext()) {
         Map.Entry mentry = (Map.Entry)iterator.next();
      %>
      "product is: "<%= mentry.getKey()%> " & quantity is: 
     <%= mentry.getValue()%>
     <% }
       
        } else
        {
        %>
        No order information found.
        <%
            }


        %>
        <form action="FrontController" method="post">        



                <td><input type="submit" value="confirm"><td>
                <td><input type="hidden" name ="action" value="OrderPlace" /></td>



        </form>
    </body>
</html>
