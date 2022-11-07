<%@ page import="java.util.function.Function" %><%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/10/21
  Time: 8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="messageBean" class="com.MessageBoard.MessageBean" scope="session"/>
<jsp:useBean id="loginBean" class="com.RegisterAndLogin.LoginBean" scope="session"/>
<jsp:useBean id="punchBean" class="com.RegisterAndLogin.PunchBean" scope="session"/>
<html>
<head>
    <title>login_welcome</title>
</head>
<body>
<p>账号：</p><%out.print(loginBean.getUserId());%>
<p>用户名：</p><%out.print(loginBean.getUserName());%>
<%
    punchBean.setUserId(loginBean.getUserId());
    punchBean.setUserName(loginBean.getUserName());
%>
<p>留言板</p>
<form action="/addMessage" method="get">
    标题: <input type="text" name="title"><br>
    内容: <input type="text" name="talk"><br>
    <input type="submit" value="提交">
</form>
<form action="" method="post">
    <input type="submit" value="修改名字">
</form>
<form action="" method="post">
    <input type="submit" value="修改密码">
</form>

<form method=post action="/punch">
    <span style="font-size: medium; ">选择以下自己出现的症状</span>
    <p>
        <input type="checkbox" value="fever" name="symptoms">发热
        <input type="checkbox" value="cough" name="symptoms">咳嗽
        <input type="checkbox" value="fatigue" name="symptoms">乏力
        <input type="checkbox" value="diarrhea" name="symptoms">腹泻
        <input type="checkbox" value="asymptomatic" name="symptoms">无症状
    </p>
    <br>
    <span style="font-size: medium; ">近十四天，是否有中高风险地区人员接触史</span>
    <p>
        <input type="radio" value="yes" name="ContactHistory">是
        <input type="radio" value="no" name="ContactHistory">否
    </p>
    <br>
    <span style="font-size: medium; ">健康码有无异常</span>
    <p>
        <input type="radio" value="yes" name="abnormal">是
        <input type="radio" value="no" name="abnormal">否
    </p>
    <br>
    <span style="font-size: medium; ">您去了郑州哪些地区</span>
    <p>
        <select name="areas" size="6" multiple="multiple" style="height: 80px;width: 200px">
            <option value="1">高新区</option>
            <option value="2">二七区</option>
            <option value="3">郑东新区</option>
            <option value="4">管城回族区</option>
            <option value="5">惠济区</option>
            <option value="6">金水区</option>
            <option value="7">中原区</option>
            <option value="8">上街区</option>
        </select>
    </p>
    <input type = "submit"  name = "submit" value = "确定"/>
</form>
<%
    out.print(punchBean.getBackNews());
    punchBean.setBackNews("");
%>
</body>
</html>
