<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="messageBean" class="com.MessageBoard.MessageBean" scope="session"/>
<html>
<head>
    <title>留言板</title>
</head>
<body>
<%--<%--%>
<%--    ArrayList<String> list = new ArrayList<String>();//创建集合--%>
<%--    String title = request.getParameter("title");--%>
<%--    String id = request.getParameter("id");--%>
<%--    String talk = request.getParameter("talk");--%>
<%--    list.add("标题: "+title+"<br>名称："+id+"<br>内容："+talk+"<br><br>");--%>
<%--    out.print(list);--%>
<%--    for(int i=0;i<list.size();i++){--%>
<%--        out.print(list.get(i));--%>
<%--    }--%>
<%--%>--%>
<%--<br>--%>
<table border=1 >
    <tr><th>序号</th><th>用户</th><th>题目</th><th>内容</th>
    <%
        request.setCharacterEncoding("utf-8");

        String index=request.getParameter("删除");
        if(index!=null){
            messageBean.removeMessage(Integer.parseInt(index));

        }
        System.out.println(index);
        for(int i=0;i< messageBean.size();i++)
        {
            out.print("<tr>");
            out.print("<td>"+(i+1)+"</td>");
            out.print("<td>"+messageBean.getMessageName(i)+"</td>");
            out.print("<td>"+messageBean.getMessageTitle(i)+"</td>");
            out.print("<td>"+messageBean.getMessageTalk(i)+"</td>");
            out.print("<td><form action="+"content.jsp"+ " method=post>");
            out.print("<input type=hidden name=删除 value="+i+" />");
            out.print("<input type=submit  value=删除该留言 />");
            out.print("</form></td>");
            out.print("</tr>");
        }
    %></table>
<a href="login_welcome.jsp">继续留言</a>
</body>
</html>



