<%--
  Created by IntelliJ IDEA.
  User: 26286
  Date: 2023/5/29
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>EL获取数据</h1>
 <%
     pageContext.setAttribute("name","张三");
     request.setAttribute("name","李四");
     session.setAttribute("name","王五");
     application.setAttribute("name","赵六");
 %>
<%= pageContext.getAttribute("name")%>-- ${ pageScope.name }<br/>
<%= request.getAttribute("name")%> ---${requestScope.name}<br/>
<%= session.getAttribute("name")%> ---${sessionScope.name}<br/>
<%= application.getAttribute("name")%>----${applicationScope.name}<br/>
<h1>EL 简写</h1>
  ${name}
</body>
</html>
