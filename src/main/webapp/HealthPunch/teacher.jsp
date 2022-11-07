<%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/11/3
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="messageBean" class="com.MessageBoard.MessageBean" scope="session"/>
<%@ page import="com.RegisterAndLogin.CreateSqlSession" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="com.RegisterAndLogin.User" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border=1 >
    <tr><th>序号</th><th>学生学号</th><th>学生姓名</th><th>学生状态</th>
    <%
        CreateSqlSession createSqlSession=new CreateSqlSession();
        SqlSession sqlSession=createSqlSession.createSqlSession();

        List<User> students=sqlSession.selectList("user.selectStudent");
        request.setCharacterEncoding("utf-8");


        for(int i=0;i< students.size();i++)
        {
            out.print("<tr>");
            out.print("<td>"+(i+1)+"</td>");
            out.print("<td>"+students.get(i).getId()+"</td>");
            out.print("<td>"+students.get(i).getName()+"</td>");
            out.print("<td>"+students.get(i).getState()+"</td>");
//            out.print("<td><form action="+"content.jsp"+ " method=post>");
//            out.print("<input type=hidden name=删除 value="+i+" />");
//            out.print("<input type=submit  value=删除该留言 />");
//            out.print("</form></td>");
            out.print("</tr>");
        }
    %></table>
<a href="input.jsp">返回登录界面</a>
</body>
</html>
