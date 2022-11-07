package com.RegisterAndLogin;

import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class Punch_Servlet extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SqlSession sqlSession=new CreateSqlSession().createSqlSession();

        req.setCharacterEncoding("utf-8");
        PunchBean punchBean=null;


        HttpSession session=req.getSession();
        punchBean=(PunchBean)session.getAttribute("punchBean");
        String backNews="";
        String state="NoClocking";
        int judge=-1;


        String[] symptoms=new String[10];
        symptoms=req.getParameterValues("symptoms");
        if(symptoms==null)
        {
            symptoms= new String[]{"0"};
        }
        for(String every:symptoms)
        {
            if(every==null)
            {
                every="0";
            }
            if(every.equals("fever")&&every.equals("cough")&&every.equals("fatigue")
                    &&every.equals("diarrhea"))
            {
                backNews="需要隔离";
                judge=1;
                state="dangerous";
                break;
            }
        }
        String contactHistory=null;
        contactHistory=req.getParameter("ContactHistory");
        if(contactHistory.equals("yes"))
        {
            backNews="需要隔离";
            state="dangerous";
            judge=1;
        }
        String abnormal=req.getParameter("abnormal");
        if(abnormal.equals("yes"))
        {
            backNews="需要隔离";
            state="dangerous";
            judge=1;
        }
        String[] areas=req.getParameterValues("areas");
        for(String area:areas)
        {
            if(area.equals("1")||area.equals("2")||area.equals("3"))
            {
                backNews="需要隔离";
                state="dangerous";
                judge=1;
            }
        }
        if(judge!=1)
        {
            backNews="不需要隔离";
            state="safe";
        }

        punchBean.setBackNews(backNews);
        User user=new User();
        user.setState(state);
        user.setId(punchBean.getUserId());
        sqlSession.update("user.updateOne",user);
        sqlSession.commit();
        resp.sendRedirect("HealthPunch/login_welcome.jsp");
    }
}
