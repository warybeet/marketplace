<%@page import="java.util.ArrayList"%>
<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results of Update</title>
    </head>
    <body>
        <%
    
            Object resultValue = session.getAttribute("userUpdated");
          
            if (resultValue != null)
            {
         
                Integer result = (Integer) resultValue;
        %> 
     
        There were <%=result%> user updated in the database.

        <%
          
            if (result > 0)
            {
            
                User user = (User) session.getAttribute("editS");
              
                if (user != null)
                {
                  
        %>
        <table>
            <tr>
               <th>UserName</th>
                <th>FirstName</th>
                <th>LastName</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Address</th>
                <th>JoinDate</th>
                
            </tr>
            <%
              
            %>
      
            <tr>
               
                
                <td><%=user.getUserName()%></td>
                <td><%=user.getFirstName()%></td>
                <td><%=user.getLastName()%></td>
                 <td><%=user.getPhone()%></td>
                 <td><%=user.getEmail()%></td>
                  <td><%=user.getGender()%></td>
                 <td><%=user.getAddress()%></td>
                 <td><%=user.getDate()%></td>
            </tr>
            <%
                    
                  
                    session.removeAttribute("userUpdated");
                }
            %>
        </table>

        <%
            }
       
            session.removeAttribute("editS");
        } else
        {
        %>
        No customer update information found.
        <%
            }
        %>
        
        <div><a href="index.html">Back to index</a></div>
    </body>
</html>
