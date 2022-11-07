<%--
  Created by IntelliJ IDEA.
  User: lRl
  Date: 2022/10/19
  Time: 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored="false" %>
<jsp:useBean id="loginBean" class="com.RegisterAndLogin.LoginBean" scope="session"/>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="login.css">

</head>
<body>
<script type="text/javascript">
    function reloadCheckImg() {
        $("img").attr("src", "img.jsp?t=" + (new Date().getTime()));//刷新验证码
    }

    $(document).ready(function() {
        $("#checkcodeId").blur(function() {	//一旦输入框失去了焦点，就会响应这个函数，去验证
            var $checkcode = $("#checkcodeId").val();
            //文本框中输入的值发送到服务器，服务器获取文本框的值，和真实验证码图片的值对比
            $.post("CheckCodeServlet",//服务器地址
                "checkcode=" + $checkcode, function(result) {
                    $("#tip").html(result);
                    //alert(result);
                })
        })
    })
</script>
<script>
    function change(){
        var number = new Date().getTime().valueOf();
        var number1 = Math.random(number);
        document.getElementById("code").src='Code?'+number1;
    }
</script>
<div class="box">

    <div class="form">
            <h2>登录</h2>
        <form action="/login" method="post">
            <span style="color: #f1f1f1">
                <%
                    out.print(loginBean.getBackNews());
                    loginBean.setBackNews("");
                %>
            </span>

            <div class="inputBox">
                <input type="text" required="required" name="id">
                <span>账号</span>
                <i></i>
            </div>
            <div class="inputBox">
                <input type="text" required="required" name="password" >
                <span>密码</span>

                <i></i>
            </div>
            <div class="cordBox">
                <span>验证码</span>
                <input type="text" name="checkcode" id="checkcodeId" size="4" />
                <a href="javascript:reloadCheckImg();"><img src="img.jsp" /></a>
            </div>

            <input type="submit" value="登录" class="button">

        </form>
    </div>

</div>

</body>

</html>
