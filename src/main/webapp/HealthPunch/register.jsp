<%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/11/2
  Time: 23:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="registerBean" class="com.RegisterAndLogin.RegisterBean" scope="session"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/register" method=post>
    <span style="font-size: medium; ">请输入账号</span>
    <br>
    <input name= "userId" type="text" size="30" maxlength="30"
           style="height: 30px;width: 200px">
    <br>
    <span style="font-size: medium; ">请输入密码</span><br>
    <input name= "userPassword" type="text" size="30" maxlength="30"
           style="height: 30px;width: 200px">
    <br>
    <span style="font-size: medium; ">请再次输入密码</span><br>
    <input name= "userPasswordAgain" type="text" size="30" maxlength="30"
           style="height: 30px;width: 200px">
    <br>
    <span style="font-size: medium; ">请输入名字</span><br>
    <input name= "userName" type="text" size="30" maxlength="30"
           style="height: 30px;width: 200px">
    <br>
    <span style="font-size: medium; ">请输入您的身份</span><br>
    <input name= "userIdentity" type="text" size="30" maxlength="30"
           style="height: 30px;width: 200px">
    <br>
    <input type = "submit" name = "submit" value = "确定"/>
</form>
</body>

<%
    out.print(registerBean.getBackNews());
    registerBean.setBackNews("");
%>
</html>
