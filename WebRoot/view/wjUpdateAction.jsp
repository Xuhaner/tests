﻿<%@page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@include file="check.jsp"%>
<%@page import="com.vote.bean.*"%>
<%@page import="com.vote.service.*"%>
<%
	ObjectBeanService obs=new ObjectBeanService();
	ObjectBean bean = new ObjectBean();
	String getid = request.getParameter("oid");
	int oid = Integer.parseInt(getid.trim());
	String title = request.getParameter("title");
	String discribe = request.getParameter("discribe");
	String shareFlag = request.getParameter("shareFlag");
	String remark = request.getParameter("remark");
	String team = request.getParameter("team");
	
	bean.setOid(oid);
	bean.setTitle(title);
	bean.setDiscribe(discribe);
	bean.setShareFlag(shareFlag);
	bean.setRemark(remark);
	bean.setTeam(team);
	
	int i = obs.updateObjectBean(bean);
	
	if(i > 0){
		response.sendRedirect("wjList.jsp");
	}else{
		response.sendRedirect("wjUpdate.jsp");
	}
%>