<%@ page import="java.util.*" %><%--
  Created by IntelliJ IDEA.
  User: 26286
  Date: 2023/5/29
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>获取数组的数据</h3>
<%
  String[] arrs={"aa","bb","cc"};
  pageContext.setAttribute("arrs",arrs);  //保存
%>
${arrs[0]}
${arrs[1]}
${arrs[2]}
<h3>获取List集合的数据</h3>
<%
  List<String> list=new ArrayList<String>();
  list.add("11");
  list.add("22");
  list.add("33");
  pageContext.setAttribute("list",list);
%>
${list[0]}
${list[1]}
${list[2]}
<h3>获取Map中的数据</h3>
<%
    Map<String,Integer> map=new HashMap<String, Integer>();
    map.put("aaa",111);
    map.put("bbb",222);
    map.put("ccc",333);
    pageContext.setAttribute("map",map);
%>
${map.aaa}
${map.bbb}
${map.ccc}
<!--
注意：
如果map的key中包含了特殊字符，不能使用.必须使用[]。
.用来获取对象的属性的。
[]用来获得下标。
-->
<h3>获取Map中的数据</h3>
<%
    Map<String,Integer> map1=new HashMap<String, Integer>();
    map1.put("aaa",111);
    map1.put("bbb",222);
    map1.put("ccc.ddd",333);
    pageContext.setAttribute("map1",map1);
%>
${map1.aaa}
${map1.bbb}
${map1["ccc.ddd"]}
</body>
</html>
