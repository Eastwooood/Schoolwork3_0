<%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/10/30
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="menu" class="com.Order.MenuBean" scope="session"/>
<html>
<head>
    <title>Title</title>
</head>

<body>
<form action="/addMenu"  method="post" >
输入餐单（每次输入一个消费项目）：<br>
名称：<input type="text" name="foodName" value="剁椒鱼头" size="8"/>
价格：<input type="text" name="price"  value="15.0" size="8"/>
<br>
<input type="submit" value="添加到餐单"/>

</form>
</body>
</html>
