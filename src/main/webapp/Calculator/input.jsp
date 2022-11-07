
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
    <title>计算器</title>
</head>
<%--<script type="javascript">--%>
<%--    function check(){--%>
<%--        var first=document.loginForm.firstNumber.value;--%>
<%--        var second=document.loginForm.secondNumber.value;--%>
<%--        var method=document.loginForm.CalculationMethod.value;--%>
<%--        if(first==null||second==null||method==null){--%>
<%--            return false;--%>
<%--        }--%>
<%--        &lt;%&ndash;if(first!=null&&second!=null&&method!=null){&ndash;%&gt;--%>
<%--        &lt;%&ndash;    &lt;%&ndash;%>--%>
<%--        &lt;%&ndash;        response.sendRedirect("res.jsp");&ndash;%&gt;--%>
<%--        &lt;%&ndash;    %>&ndash;%&gt;--%>

<%--        &lt;%&ndash;    return true;&ndash;%&gt;--%>
<%--        &lt;%&ndash;}&ndash;%&gt;--%>


<%--        return true;--%>
<%--    }--%>

<%--</script>--%>
<body>


<%--<form:form action=    name="loginForm" >--%>
<%--    <span style="font-size: medium; ">请输入第一个数</span>--%>
<%--    <br>--%>
<%--    <input name= "firstNumber" type="text" size="30" maxlength="30"--%>
<%--           style="height: 30px;width: 200px">--%>
<%--    <br>--%>
<%--    <span style="font-size: medium; ">请输入第二个数</span><br>--%>
<%--    <input name= "secondNumber" type="text" size="30" maxlength="30"--%>
<%--           style="height: 30px;width: 200px">--%>

<%--    <br>--%>
<%--    <span style="font-size: medium; ">选择计算方式</span>--%>
<%--    <p>--%>
<%--        <input type="radio" value="add" name="CalculationMethod">加--%>
<%--        <input type="radio" value="reduce" name="CalculationMethod">减--%>
<%--        <input type="radio" value="ride" name="CalculationMethod">乘--%>
<%--        <input type="radio" value="except" name="CalculationMethod">除--%>
<%--    </p>--%>
<%--    <%--%>

<%--    %>--%>
<%--    <a href="res.jsp" class="button button1">确认</a>--%>

<form  action="check.jsp"  method=post name="loginForm">
    <span style="font-size: medium; ">请输入第一个数</span>
    <br>
    <input name= "firstNumber" type="text" size="30" maxlength="30"
           style="height: 30px;width: 200px">
    <br>
    <span style="font-size: medium; ">请输入第二个数</span><br>
    <input name= "secondNumber" type="text" size="30" maxlength="30"
           style="height: 30px;width: 200px">

    <br>
    <span style="font-size: medium; ">选择计算方式</span>
    <input type="radio" value="add" name="CalculationMethod"/>加
    <input type="radio" value="reduce" name="CalculationMethod"/>减
    <input type="radio" value="ride" name="CalculationMethod"/>乘
    <input type="radio" value="except" name="CalculationMethod"/>除
    <br>
    <input type = "submit" name = "submit"  value = "确定"/>

</form>
    <%
        out.print(session.getAttribute("nullAttention"));
        session.setAttribute("nullAttention","");
    %>
<%--<%--%>
<%--    String firstNumber=request.getParameter("firstNumber");--%>
<%--//    if(firstNumber==null)--%>
<%--//    {--%>
<%--//        firstNumber="0";--%>
<%--//    }--%>
<%--    String secondNumber=request.getParameter("secondNumber");--%>
<%--//    if(secondNumber==null)--%>
<%--//    {--%>
<%--//        secondNumber="0";--%>
<%--//    }--%>
<%--    String calculationMethod=request.getParameter("CalculationMethod");--%>
<%--//    if(calculationMethod==null)--%>
<%--//    {--%>
<%--//        calculationMethod="0";--%>
<%--//    }--%>

<%--%>--%>

<%--<jsp:include page="res.jsp" flush="true" >--%>
<%--    <jsp:param name="firstNumber" value="<%= firstNumber %>" />--%>
<%--    <jsp:param name="secondNumber" value="<%= secondNumber %>" />--%>
<%--    <jsp:param name="calculationMethod" value="<%= calculationMethod %>" />--%>
<%--</jsp:include>--%>
</body>
</html>