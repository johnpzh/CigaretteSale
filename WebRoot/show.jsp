<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table border=1>
    <tr>
    <td>��ƷID</td>
    <td>��Ʒ����</td>
    <td>��Ӧ��ID</td>
    <td>������λ</td>
   	</tr>
    <c:forEach items="${goodsList}" var="g">
	    <tr>
	    <td>${g.goodsId}</td>
	    <td>${g.goodsName }</td>
	    <td>${g.supplierId }</td>
	    <td>${g.unit }</td>
	    </tr>
    </c:forEach>
    <tr>
    <td><a href="">��ҳ</a></td>
    <!-- <% //if(pageBean.currentPage == 1) {%>
    <td>��һҳ</td>
    <%//} else {%>
    <td><a href="output.action?pageBean.currentPage=${pageBean.currentPage-1}">��һҳ</a></td>
    <%//} %>
     -->
    <td><a href="">��һҳ</a></td> 
    <td><a href="">��һҳ</a></td>
    <td><a href="">ĩҳ</a></td>
    </tr>
    </table>
  </body>
</html>