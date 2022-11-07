package com.RegisterAndLogin;

import jdk.internal.loader.Resource;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.session.defaults.DefaultSqlSessionFactory;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class Login_Servlet extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        SqlSession sqlSession=new CreateSqlSession().createSqlSession();
        //执行sql语句
        List<User> users=sqlSession.selectList("user.selectAll");

        req.setCharacterEncoding("utf-8");
        LoginBean loginBean=null;
        String backNews="";
        HttpSession session=req.getSession(true);
        loginBean=(LoginBean) session.getAttribute("loginBean");
        loginBean.setBackNews("");
        if(loginBean==null)
        {
            loginBean=new LoginBean();
            session.setAttribute("loginBean",loginBean);
        }
        String userId=req.getParameter("id");
        String userPassword=req.getParameter("password");

        //获取用户输入的验证码
        String checkcodeClient = req.getParameter("checkcode");
        //服务端验证码值
        String checkcodeServer = (String) req.getSession().getAttribute("checkCode");

        int judge=0;
        String identity="";
        for(User user:users)
        {
            System.out.println(user.id+user.password);
            if(user.id.equals(userId)&&user.password.equals(userPassword))
            {
                judge=1;
                loginBean.setUserId(user.id);
                loginBean.setUserName(user.name);
                identity=user.getIdentity();
                session.setAttribute("user",user);
            }
        }
        if(!checkcodeServer.equals(checkcodeClient))
        {
            judge=2;
        }
        if(judge==1)
        {
            backNews="登录成功!";
            loginBean.setBackNews(backNews);
            if(identity.equals("teacher"))
            {
                resp.sendRedirect("HealthPunch/teacher.jsp");
            }else{
                resp.sendRedirect("HealthPunch/login_welcome.jsp");
            }
        }else if(judge==2){
            backNews="验证码错误!";
            loginBean.setBackNews(backNews);
            resp.sendRedirect("HealthPunch/input.jsp");
        }else if(judge==0){
            backNews="账号或密码错误！";
            loginBean.setBackNews(backNews);
            resp.sendRedirect("HealthPunch/input.jsp");
        }


    }
}
