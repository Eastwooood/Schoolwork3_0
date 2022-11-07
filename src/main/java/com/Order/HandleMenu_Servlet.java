package com.Order;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalTime;
public class HandleMenu_Servlet extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        MenuBean menu=null;
        HttpSession session=req.getSession(true);
        menu=(MenuBean) session.getAttribute("menu");
        if(menu==null)
        {
            menu=new MenuBean();
            session.setAttribute("menu",menu);
        }
        String foodName=req.getParameter("foodName");
        String price=req.getParameter("price");
        Food food=new Food();
        if(foodName.length()==0||price.length()==0)
        {
            resp.sendRedirect("Order/inputMenu.jsp");
            return;
        }
        food.setFoodName(foodName);
        food.setPrice(Double.parseDouble(price));
        LocalTime dateTime=LocalTime.now();
        String str=dateTime.toString();
        String time=str.substring(0,str.lastIndexOf("."));
        menu.setTime(time);
        menu.addFood(food);
        resp.sendRedirect("Order/showMenu.jsp");
    }
}
