﻿<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.vote.service.*"%>
<%@page import="com.vote.bean.*"%>
<%

 String username = request.getParameter("username");
 String password = request.getParameter("password");
 String teamname = request.getParameter("teamname");
 AdminService as=new AdminService();
 AdminBean admin=as.longin(username,password,teamname);
 if(username.equals(admin.getUsername())) {
   String chk="true";
   session.setAttribute("Enter",chk);
   session.setAttribute("userName",username);
   session.setAttribute("teamname",teamname);
    response.sendRedirect("../index.jsp");
 } else {
  String errmsg="error1";
  response.sendRedirect("../login.jsp?errmsg="+errmsg);
 }
%>