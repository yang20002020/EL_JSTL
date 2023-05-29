<%--
  Created by IntelliJ IDEA.
  User: 26286
  Date: 2023/5/29
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>执行算数运算</h3>
<%
   pageContext.setAttribute("n1","10");//向域中保存数值
   pageContext.setAttribute("n2","20");
%>
${n1+n2}<!-- EL自动 解决类型转换 字符串类型转换成整形-->
<h3>执行关系运算</h3>
${n1<n2}---${n1 lt n2}<br/> <!--less than-->
${n1>n2}---${n1 gt n2}<br/>
${n1==n2}---${n1 eq n2}<br/>
${n1>=n2}---${n1 ge n2}<br/>
${n1<=n2}---${n1 le n2}<br/>
${n1!=n2}---${n1 ne n2}<br/>
<h3>执行逻辑运算</h3>
<%
    pageContext.setAttribute("n3","30");
    pageContext.setAttribute("n4","40");
%>
${(n1<n2)&&(n3<n4)} --${(n1<n2)and(n3<n4)}<br/>
${(n1<n2)||(n3<n4)} --${(n1<n2)or(n3<n4)}<br/>
${!(n1<n2)} --${not(n1<n2)}<br/>
<h3>执行三元运算符</h3>
${n1<n2 ? "n1小于n2":"n1不小于n2"}<br/>
<h3>空运算符</h3>
${empty user}
</body>
</html>
