<%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/10/22
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>detection</title>
</head>
<body>
<%
    int score=0;
    session.setAttribute("scoreJudge","");
    request.setCharacterEncoding("utf-8");
    String[] firstQuestion=new String[10];
    firstQuestion=request.getParameterValues("firstQuestion");

    if(firstQuestion==null)
    {
        firstQuestion= new String[]{"0"};
    }
    for(String every:firstQuestion)
    {
        System.out.println(every);
        if(every==null)
        {
            every="0";
        }
        if(every.equals("A"))
        {
            score+=15;
        }
        if(every.equals("B"))
        {
            score+=15;
        }
        if(every.equals("C"))
        {
            score+=15;
        }
        if(every.equals("D"))
        {
            score+=15;
        }
        System.out.println(score);
    }
    System.out.println(score);
    String essentialFactor=request.getParameter("essentialFactor");
    if(essentialFactor==null)
    {
        essentialFactor="0";
    }
    if(essentialFactor.equals("C"))
    {
        score+=20;
    }
    System.out.println(score);
    String modulation=request.getParameter("modulation");
    if(modulation==null)
    {
        modulation="0";
    }
    if(modulation.equals("A"))
    {
        score+=20;
    }
    String scoreString=String.valueOf(score);
    session.setAttribute("scoreJudge",
            request.getParameter("name")+",您的考试分数是"+scoreString);
    System.out.println(scoreString);
    response.sendRedirect("examination.jsp");
%>

</body>
</html>
