<%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/10/20
  Time: 21:48
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
    String first=null;
    String second=null;
    String method=null;

    first=(String)request.getParameter("firstNumber");

    second=(String)request.getParameter("secondNumber");

    method=(String)request.getParameter("CalculationMethod");

    session.setAttribute("first",first);
    session.setAttribute("second",second);
    session.setAttribute("method",method);
    if(first!=""&&second!=""&&method!="")
    {
        response.sendRedirect("res.jsp");
    }else{
        session.setAttribute("nullAttention","error");
        response.sendRedirect("input.jsp");

    }

%>

</body>
</html>
