
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>学生信息显示页面</h1>
<table border="1" width="600">
    <tr>
        <td>学生编码</td>
        <td>学生姓名</td>
        <td>学生性别</td>
        <td>学生年龄</td>
    </tr>
    <c:forEach var="student" items="${list}">
        <tr>
            <td>${student.sid}</td>
            <td>${student.sname}</td>
            <td>${student.sex}</td>
            <td>${stduent.age}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
