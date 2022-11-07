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
    <title>check</title>
</head>
<body>
<%
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
        response.sendRedirect("examination.jsp");
    }else{
        session.setAttribute("nullAttention","账号和密码不能为空!");
        response.sendRedirect("input.jsp");

    }

%>

</body>
</html>

