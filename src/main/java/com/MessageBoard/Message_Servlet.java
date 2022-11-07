package com.MessageBoard;

import com.Order.Food;
import com.Order.MenuBean;
import com.RegisterAndLogin.LoginBean;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalTime;

public class Message_Servlet extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        MessageBean messageBean=null;
        HttpSession session=req.getSession(true);
        messageBean=(MessageBean) session.getAttribute("messageBean");
        if(messageBean==null)
        {
            messageBean=new MessageBean();
            session.setAttribute("messageBean",messageBean);
        }
        String messageTitle=req.getParameter("title");
        String messageTalk=req.getParameter("talk");

        LoginBean loginBean=(LoginBean) session.getAttribute("loginBean");

        String userId=loginBean.getUserName();
        Message message=new Message();
        message.setName(userId);

        message.setTalk(messageTalk);
        message.setTitle(messageTitle);



        messageBean.addMessage(message);
        resp.sendRedirect("HealthPunch/content.jsp");
    }
}
