<%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/10/21
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>彩票系统</title>
</head>
<body>

<form method=post action="result.jsp">
    <span style="font-size: medium; ">请输入想购买的彩票号码(4位数字)</span>
    <br>
    <input name= "code" type="text" size="30" maxlength="30"
           style="height: 30px;width: 200px">
    <br>
    <input type = "submit" name = "submit" value = "确定"/>
</form>
<%
    if(session.getAttribute("prizeAttention")==null)
    {
        session.setAttribute("prizeAttention","");
    }
    out.print(session.getAttribute("prizeAttention"));
    session.setAttribute("prizeAttention","");

%>

</body>
</html>
