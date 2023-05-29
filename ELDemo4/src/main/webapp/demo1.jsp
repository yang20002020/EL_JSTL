<%--
  Created by IntelliJ IDEA.
  User: 26286
  Date: 2023/5/29
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>EL获取web开发常用对象</h1>
${param.name}--<!--相当于request.getParameter("name")-->
<br/>
<!--等价于--->
<%=request.getParameter("name")%><br/>
${paramValues.hobby[0]}${paramValues.hobby[1]}<br/>
<!--等价于--->
    <%=request.getParameterValues("hobby")[0]%><br/>
    <%=request.getParameterValues("hobby")[1]%><br/>

${header["User-Agent"]}<br/>
${initParam.username}<br/> <!--获取参数username的值-->
${pageContext.request.contextPath}<br/> <!--获得工程路径-->
${pageContext.request.remoteAddr}<br/>  <!--获得id地址--->
</body>
</html>
