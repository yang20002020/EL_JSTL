<%--
  Created by IntelliJ IDEA.
  User: 26286
  Date: 2023/5/29
  Time: 22:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>JSTL的if标签的使用</h1>
<c:set var="i" value="5" scope="page"></c:set>
<c:if test="${i>=10}">
    <font color="red">i大于等于10</font>
</c:if>
<c:if test="${i<10}">
    <font color="red">i小于10</font>
</c:if>
<c:if var="flag" test="${i<10}">
    <font color="blue">flag 为true</font>
</c:if>
</body>
</html>
