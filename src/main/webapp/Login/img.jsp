<%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/10/30
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="image/jpeg; charset=UTF-8"%>
<%@ page import="java.util.*,java.awt.Color,java.awt.image.BufferedImage,java.awt.Graphics,javax.imageio.*,java.awt.*"%>
<%!
    public Color getColor() {//实现随机产生颜色
        Random ran = new Random();
        int r = ran.nextInt(256);
        int g = ran.nextInt(256);
        int b = ran.nextInt(256);
        return new Color(r, g, b);
    }

    public String getNum() {	//随机产生1000-9999验证码
        int ran = (int) (Math.random() * 9000) + 1000;
        return String.valueOf(ran);
    }%>

<%
    //禁止缓存，防止验证码过期
    response.setHeader("Pragma","no-cache");
    response.setHeader("Cache-control","no-cache");
    response.setHeader("Expires", "0");

    //绘制验证码
    BufferedImage image=new BufferedImage(90,40,BufferedImage.TYPE_INT_RGB);
    //画笔
    Graphics graphics= image.getGraphics();
    //绘制干扰线条
    graphics.fillRect(0,0, 90, 40);
    for(int i=0;i<70;i++){//60是指随机产生60条干扰线
        Random ran=new Random();
        int xBegin=ran.nextInt(90);//产生小于90的随机整数
        int yBegin=ran.nextInt(40);//产生小于40的随机整数
        int xEnd=ran.nextInt(xBegin+10);
        int yEnd=ran.nextInt(yBegin+10);
        graphics.setColor(getColor());
        graphics.drawLine(xBegin, yBegin, xEnd, yEnd);

    }
    graphics.setFont(new Font("seif",Font.BOLD,23));//给随机数设置字体样式
    //绘制验证码
    graphics.setColor(Color.black);//设置验证码的颜色
    String checkCode=getNum();//随机产生的4个数字
    StringBuffer sb=new StringBuffer();
    for(int i=0;i<checkCode.length();i++){
        sb.append(checkCode.charAt(i)+" ");
        //验证码的每一个数值【只是为了给每个数字后面加一个空格】
    }

    graphics.drawString(sb.toString(),10,25);
    //20，25指的是随机数的位置【宽，高】
    session.setAttribute("checkCode",checkCode);
    //将验证码真实值，保存到session中，供使用时比较真实性
    ImageIO.write(image,"jpeg",response.getOutputStream());
    //真实的产生图片
    out.clear();
    //关闭
    out=pageContext.pushBody();
%>
