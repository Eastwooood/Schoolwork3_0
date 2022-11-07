<%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/10/20
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>check</title>
</head>
<body>
<%

    int judge=0;
    session.setAttribute("nullAttention","");
    String id=null;
    String password=null;

    id=(String)request.getParameter("id");

    password=(String)request.getParameter("password");


    session.setAttribute("id",id);
    session.setAttribute("password",password);
    System.out.println(id+password);


    if(id!=""&&password!="")
    {
//        response.sendRedirect("login_welcome.jsp");
    }else{
//        session.setAttribute("nullAttention","账号和密码不能为空!");
//        response.sendRedirect("input.jsp");
        judge=1;

    }
    // 获取用户输入的验证码
    String checkcodeClient = request.getParameter("checkcode");
    //服务端验证码值
    String checkcodeServer = (String) request.getSession().getAttribute("checkCode");
    if(!checkcodeServer.equals(checkcodeClient))
    {
        judge=2;
    }
    if(judge==0)
    {
        response.sendRedirect("login_welcome.jsp");
    }else if(judge==1){
        session.setAttribute("nullAttention","账号和密码不能为空!");
        response.sendRedirect("input.jsp");

    }else if(judge==2){
        session.setAttribute("nullAttention","验证码错误!");
        response.sendRedirect("input.jsp");
    }

%>

</body>
</html>
