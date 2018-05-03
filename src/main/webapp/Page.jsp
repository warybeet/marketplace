<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
  
<!--引入JSTL核心标记库的taglib指令-->  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path + "/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
<head>  
<base href="<%=basePath%>">  
  
<title>显示留言</title>  
  
<meta http-equiv="pragma" content="no-cache">  
<meta http-equiv="cache-control" content="no-cache">  
<meta http-equiv="expires" content="0">  
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
<meta http-equiv="description" content="This is my page">  
  
</head>  
  
<body>  
    <a href="success.jsp">返回</a>  
    <table border="1">  
        <tr>  
            <th width="150">留言数</th>  
        
         
        </tr>  
        <c:forEach items="${requestScope.product}" var="product">  
            <tr>  
                <td width="100">${product.productName}</td>  
               
                <td width="100">  
                 
            </tr>  
        </c:forEach>  
    </table>  
      
    <center>  
    <div>  
        第${requestScope.currentPage}页/共${requestScope.countPage}页 <a  
            href="${pageContext.request.contextPath}/Servlet?status=GetPAGE&currenttPage=1">首页</a><span> </span>  
        <c:choose>  
            <c:when test="${requestScope.currentPage==1}">  
                上一页  
            </c:when>  
            <c:otherwise>  
                <a  
                    href="${pageContext.request.contextPath}/Servlet?status=GetPAGE<span style="font-family: Arial,Helvetica, sans-serif;">&current Page</span>=${requestScope.currentPage-1}">上一页</a>  
            </c:otherwise>  
        </c:choose>  
        <%--计算begin和end --%>  
        <c:choose>  
            <%--如果总页数不足10，那么就把所有的页都显示出来 --%>  
            <c:when test="${requestScope.countPage<=10}">  
                <c:set var="begin" value="1" />  
                <c:set var="end" value="${requestScope.countPage}" />  
            </c:when>  
            <c:otherwise>  
                <%--如果总页数大于10，通过公式计算出begin和end --%>  
                <c:set var="begin" value="${requestScope.currentPage-5}" />  
                <c:set var="end" value="${requestScope.currentPage+4}" />  
                <%--头溢出 --%>  
                <c:if test="${begin<1}">  
                    <c:set var="begin" value="1"></c:set>  
                    <c:set var="end" value="10"></c:set>  
                </c:if>  
                <%--尾溢出 --%>  
                <c:if test="${end>requestScope.countPage}">  
                    <c:set var="begin" value="${requestScope.countPage - 9}"></c:set>  
                    <c:set var="end" value="${requestScope.countPage}"></c:set>  
                </c:if>  
            </c:otherwise>  
        </c:choose>  
        <%--循环显示页码列表 --%>  
        <c:forEach var="i" begin="${begin}" end="${end}">  
            <c:choose>  
                <c:when test="${i == requestScope.currentPage}">  
                [${i}]  
                </c:when>  
                <c:otherwise>  
                    <a href="<c:url value ='/Servlet?status=GetPAGE  
                    &currentPage=${i}'/>">[${i}]</a>  
                </c:otherwise>  
            </c:choose>  
        </c:forEach>  
        <c:choose>  
            <c:when test="${requestScope.currentPage==requestScope.countPage}">  
                  下一页  
            </c:when>  
            <c:otherwise>  
                <a  
                    href="${pageContext.request.contextPath}/Servlet?status=GetPAGE&currentPage=${requestScope.currentPage+1}"> 下一页</a>  
            </c:otherwise>  
        </c:choose>  
        <span> </span><a  
            href="${pageContext.request.contextPath}/Servlet?status=GetPAGE&currentPage=${requestScope.countPage}">尾页</a>  
    </div>  
</center>  
</body>  
</html>  