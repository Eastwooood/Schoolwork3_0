<%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/10/22
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="check.jsp" method=post>
    <span style="font-size: medium; ">请输入账号</span>
    <br>
    <input name= "id" type="text" size="30" maxlength="30"
           style="height: 30px;width: 200px">
    <br>
    <span style="font-size: medium; ">请输入密码</span><br>
    <input name= "password" type="text" size="30" maxlength="30"
           style="height: 30px;width: 200px">

    <br>
    <input type = "submit" name = "submit" value = "确定"/>
</form>
<%
    if(session.getAttribute("nullAttention")==null)
    {
        session.setAttribute("nullAttention","");
    }
    out.print(session.getAttribute("nullAttention"));
%>
</body>
</html>
