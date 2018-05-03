<%-- 
    Document   : ProductlistPage
    Created on : 24-Apr-2018, 11:50:28
    Author     : Danielhua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     table width="461" height="24" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td width="199">当前为第${page.currentPage}页,共${page.totalPage}页</td>
    <td width="256">
    <c:choose>
        <c:when test="${page.hasPrePage}">
            <a href="<%=path %>/user.do?method=list&currentPage=1">首页</a> | 
    <a href="<%=path %>/user.do?method=list&currentPage=${page.currentPage -1 }">上一页</a>
        </c:when>
        <c:otherwise>
            首页 | 上一页
        </c:otherwise>
    </c:choose>

    <c:choose>
        <c:when test="${page.hasNextPage}">
            <a href="<%=path %>/user.do?method=list&currentPage=${page.currentPage + 1 }">下一页</a> | 
    <a href="<%=path %>/user.do?method=list&currentPage=${page.totalPage }">尾页</a>
        </c:when>
        <c:otherwise>
            下一页 | 尾页
        </c:otherwise>
    </c:choose>

</td>
  </tr>
</table>
    </body>
</html>
