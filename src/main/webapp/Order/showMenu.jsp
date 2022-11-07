<%@ page import="java.lang.module.FindException" %><%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/10/30
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="menu" class="com.Order.MenuBean" scope="session"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border=1 >
    <tr><th>序号</th><th>食物名称</th><th>价格</th>
<%
    request.setCharacterEncoding("utf-8");

    String index=request.getParameter("删除");
    if(index!=null){
        menu.removeFood(Integer.parseInt(index));

    }
    for(int i=0;i< menu.size();i++)
    {
        out.print("<tr>");
        out.print("<td>"+(i+1)+"</td>");
        out.print("<td>"+menu.getFoodName(i)+"</td>");
        out.print("<td>"+menu.getPrice(i)+"</td>");
        out.print("<td><form action="+"showMenu.jsp"+ " method=post>");
        out.print("<input type=hidden name=删除 value="+i+" />");
        out.print("<input type=submit  value=删除该食物 />");
        out.print("</form></td>");
        out.print("</tr>");
    }
%></table>
<p>
餐单总额(共有<%=menu.size()%>道食物）：
<jsp:getProperty name="menu" property="totalPrice"/><br>
点餐时间：
<jsp:getProperty name="menu" property="time"/>
</p>
<a href="inputMenu.jsp">继续点餐</a>
</body>
</html>
