<%--
  Created by IntelliJ IDEA.
  User: 26286
  Date: 2023/5/29
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    pageContext.setAttribute("name1","kkk");
%>
${name1}
<c:set value="bbb"  var="name" scope="page"></c:set>
${name}
</body>
</html>