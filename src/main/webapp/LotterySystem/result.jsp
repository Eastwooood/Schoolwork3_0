<%@ page import="java.util.Random" %>
<%@ page import="java.nio.charset.StandardCharsets" %><%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/10/21
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.setAttribute("prizeAttention","");
    request.setCharacterEncoding("utf-8");
    int result=0;
    int firstCode= new Random().nextInt(10);
    int secondCode=new Random().nextInt(10);
    int thirdCode=new Random().nextInt(10);
    int forthCode=new Random().nextInt(10);

    String randomCode=String.valueOf(new int[]{firstCode, secondCode, thirdCode, forthCode});
    String code=request.getParameter("code");
    for(int i=0;i<code.length();i++)
    {
        if(randomCode.charAt(i)==code.charAt(i))
        {
            result++;
        }
    }
    if(result==4)
    {
        session.setAttribute("prizeAttention","您获得了一等奖");
    }
    if(result==3)
    {
        session.setAttribute("prizeAttention","您获得了二等奖");
    }
    if(result==2)
    {
        session.setAttribute("prizeAttention","您获得了三等奖");
    }
    if(result==1)
    {
        session.setAttribute("prizeAttention","您获得了四等奖");
    }
    if(request.getParameter("code")=="")
    {
        session.setAttribute("prizeAttention","输入的号码不能为空！");
    }
    response.sendRedirect("lottery.jsp");
%>
</body>
</html>
