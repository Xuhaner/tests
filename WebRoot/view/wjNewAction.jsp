﻿<%@page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@include file="check.jsp"%>
<%@page import="com.vote.bean.*"%>
<%@page import="com.vote.service.*"%>
<%
	ObjectBeanService obs=new ObjectBeanService();
	FileUtil fu=new FileUtil();
	ObjectBean ob = new ObjectBean();
	String title = request.getParameter("title");
	String discribe = request.getParameter("discribe");
	String shareFlag = request.getParameter("shareFlag");
	String remark = request.getParameter("remark");
	String team = request.getParameter("team");
	String author = request.getParameter("createUser");
	
	ob.setTitle(title);
	ob.setDiscribe(discribe);
	ob.setShareFlag(shareFlag);
	ob.setRemark(remark);
	ob.setTeam(team);
	ob.setAuthor(author);
	
	int id = obs.intsertObjectBean(ob);
	String pathinfo=request.getRealPath("");
	String from=pathinfo+"/view/diaocha.txt";
	String to=pathinfo+"/view/diaocha_"+id+".jsp";
	String wj="<% String id=\""+id+"\";"+"%"+">";
	fu.copyFile(from,null,to,"UTF-8",wj);
	System.out.println(pathinfo);
	if(id >0){
		response.sendRedirect("wjList.jsp");
	}else{
%>
	<script>
		alert("创建失败");
	</script>
		<%response.sendRedirect("wjNew.jsp");
	}
%>