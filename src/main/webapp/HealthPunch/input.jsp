<%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/10/17
  Time: 8:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="messageBean" class="com.MessageBoard.MessageBean" scope="session"/>
<jsp:useBean id="loginBean" class="com.RegisterAndLogin.LoginBean" scope="session"/>
<html>
<head></head>
<script src="jquery-1.12.4.js" type="text/javascript"></script><!-- 注意适用jquery实现的，所以要引用jQuery -->
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
<body>

<form action="/login" method=post>
    <span style="font-size: medium; ">请输入账号</span>
    <br>
    <input name= "id" type="text" size="30" maxlength="30"
           style="height: 30px;width: 200px">
    <br>
    <span style="font-size: medium; ">请输入密码</span><br>
    <input name= "password" type="text" size="30" maxlength="30"
           style="height: 30px;width: 200px">
    <br>

    <span id="yzm" style="color: blue;font-size: 20px;cursor: pointer;"></span>
    <br>

    <input type="text" name="checkcode" id="checkcodeId" size="4" />
    <a href="javascript:reloadCheckImg();"><img src="img.jsp" /></a>
    <!-- 验证码 -->
    <span id="tip"></span>
    <br>
    <input type = "submit" name = "submit" value = "确定"/>
</form>
<form action="register.jsp" method="post">
    <input type = "submit" name = "submit" value = "注册"/>
</form>
<%
    out.print(loginBean.getBackNews());
    loginBean.setBackNews("");
%>
</body>
</html>
