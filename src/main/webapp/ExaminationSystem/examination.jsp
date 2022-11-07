<%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/10/21
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    if(session.getAttribute("scoreJudge")==null)
    {
        session.setAttribute("scoreJudge","");
    }
    out.print(session.getAttribute("scoreJudge"));
    session.setAttribute("scoreJudge","");
%>
<body>
<p>账号：</p><%out.print(session.getAttribute("id"));%>
<p>密码：</p><%out.print(session.getAttribute("password"));%>
<form action="detection.jsp" method="post">
    <h1 >计算机网络考试</h1>
    </td>
    <span style="font-size: medium; ">请输入您的学号</span>
    <br>
    <input type="text" align="center" size="30" maxlength="30" value=""
           style="height: 30px;width: 200px" name="studentID">
    <br>
    <span style="font-size: medium; ">请输入您的姓名</span>
    <br>
    <input type="text" align="center" size="30" maxlength="30" value=""
           style="height: 30px;width: 200px" name="name">
    <br>
    <span style="font-size: medium; ">常见的信道复用技术有</span>
    <p>
        <input type="checkbox" value="A" name="firstQuestion">频分复用
        <input type="checkbox" value="B" name="firstQuestion">时分复用
        <input type="checkbox" value="C" name="firstQuestion">波分复用
        <input type="checkbox" value="D" name="firstQuestion">码分复用
    </p>
    <br>
    <span style="font-size: medium; ">通信系统必须具备的三个基本要素是</span>
    <p>
        <input type="radio" value="A" name="essentialFactor">
        终端、电缆、计算机
        <input type="radio" value="B" name="essentialFactor">
        信号发生器、通信线路、信号接收器
        <input type="radio" value="C" name="essentialFactor">
        信源、通信媒体、信宿
        <input type="radio" value="D" name="essentialFactor">
        终端、通信设施、接收设备
    </p>
    <br>
    <span style="font-size: medium; ">用载波信号振幅来表示数字数据的调制方法称为</span>
    <p>
        <input type="radio" value="A" name="modulation">相移
        <input type="radio" value="B" name="modulation">幅移
        <input type="radio" value="C" name="modulation">频移
        <input type="radio" value="D" name="modulation">混合
    </p>
    <br>
    <input type = "submit" name = "submit" value = "确定"/>
</form>

</body>
</html>
