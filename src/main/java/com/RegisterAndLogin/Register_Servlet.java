package com.RegisterAndLogin;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class Register_Servlet extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SqlSession sqlSession=new CreateSqlSession().createSqlSession();

        List<User> users=sqlSession.selectList("user.selectAll");
        req.setCharacterEncoding("utf-8");
        RegisterBean registerBean=null;
        String backNews="";
        HttpSession session=req.getSession(true);
        registerBean=(RegisterBean) session.getAttribute("registerBean");
        registerBean.setBackNews("");
        if(registerBean==null)
        {
            registerBean=new RegisterBean();
            session.setAttribute("registerBean",registerBean);
        }
        String userId=req.getParameter("userId");
        String userPassword=req.getParameter("userPassword");
        String userPasswordAgain=req.getParameter("userPasswordAgain");
        String userName=req.getParameter("userName");
        String userIdentity=req.getParameter("userIdentity");

        int judge=0;
        if(!userPassword.equals(userPasswordAgain))
        {
            judge=-1;
            backNews="密码不一致！";
        }
        for(User user:users){
            if(user.getId().equals(userId))
            {
                judge=1;
                backNews="账号已存在！";
            }
        }
        User newUser=new User();
        newUser.setId(userId);
        newUser.setName(userName);
        newUser.setPassword(userPassword);
        newUser.setIdentity(userIdentity);
        newUser.setState("");

        int row=0;
        if(judge!=1&&judge!=-1)
        {

            row=sqlSession.insert("user.insertOne",newUser);
            if(row!=0)
            {
                judge=2;
            }
        }
        registerBean.setBackNews(backNews);
        sqlSession.commit();
        if(judge==2)
        {
            resp.sendRedirect("HealthPunch/input.jsp");
        }else if(judge==1||judge==-1)
        {
            resp.sendRedirect("HealthPunch/register.jsp");
        }

    }
}
