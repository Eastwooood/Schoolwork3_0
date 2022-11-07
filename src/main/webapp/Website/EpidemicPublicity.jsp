<%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/10/16
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>疫情防控宣传</title>
    <style>
        .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
        .button1{
            border-radius: 12px;
        }

    </style>

</head>
<style>
    * {
        margin: 0;
        padding: 0;
    }
    ul {
        list-style: none;
    }
    nav {
        width: 1000px;
        height: 300px;
        border: 1px solid black;
        margin: 100px auto;
        overflow: hidden;
        position: relative;
    }
    ul {
        width: 200%;
        height: 100%;
        animation: picmove 10s linear infinite forwards;
    }
    @keyframes picmove {
        from {
            transform: translate(0);
        }
        to {
            transform: translate(-1000px);
        }
    }
    img {
        width: 250px;
        height: 300px;
        float: left;
    }

    ul:hover {
        animation-play-state: paused;
    }
</style>
<style>
    body {
        margin: 0;
    }
    .header {
        background-color: #f1f1f1;
        padding: 5px;
        text-align: center;
    }
</style>

<body>
<div class="header">
    <h1>疫情防控，你我同行</h1>
</div>
<nav>
    <ul>
        <li><img src="img1.jpg" alt=""></li>
        <li><img src="img2.jpg" alt=""></li>
        <li><img src="img3.jpg" alt=""></li>
        <li><img src="img4.jpg" alt=""></li>
        <li><img src="img1.jpg" alt=""></li>
        <li><img src="img2.jpg" alt=""></li>
        <li><img src="img3.jpg" alt=""></li>
        <li><img src="img4.jpg" alt=""></li>
    </ul>
</nav>
<a href="https://voice.baidu.com/act/newpneumonia/newpneumonia/?from=osari_aladin_banner"
   class="button button1" style="position: absolute;left: 500px;top: 500px">查看疫情实时大数据报告</a>
<a href="Knowledge.jsp" class="button button1"
   style="position: absolute;left: 150px;top: 500px">疫情防控知识</a>
<a href="HealthPunch/input.jsp" class="button button1"
   style="position: absolute;left: 950px;top: 500px">疫情防控调查问卷</a>
</body>
</html>
