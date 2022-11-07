<%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/10/16
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算结果</title>
</head>
<body>
<%
    try {
        double result=0;
        String firstNumberTemp=(String) session.getAttribute("first");
        if(firstNumberTemp==null)
        {
            firstNumberTemp="0";
        }
        String secondNumberTemp=(String) session.getAttribute("second");
        if(secondNumberTemp==null)
        {
            secondNumberTemp="0";
        }
        String calculationMethod=(String) session.getAttribute("method");
        if(calculationMethod==null)
        {
            calculationMethod="0";
        }
        double firstNumber=Double.parseDouble(firstNumberTemp);
        double secondNumber=Double.parseDouble(secondNumberTemp);

        if(calculationMethod.equals("add"))
        {
            result=firstNumber+secondNumber;
        }else if(calculationMethod.equals("reduce"))
        {
            result=firstNumber-secondNumber;
        }else if(calculationMethod.equals("ride"))
        {
            result=firstNumber*secondNumber;
        }else if(calculationMethod.equals("except"))
        {
            result=firstNumber/secondNumber;
        }
        out.println("计算结果是：");
        out.println(result);
        session.setAttribute("first",null);
        session.setAttribute("second",null);
        session.setAttribute("method",null);
    }catch (Exception e)
    {

    }

%>
</body>
</html>
