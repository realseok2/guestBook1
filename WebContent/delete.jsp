<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@	page import="com.javaex.vo.PersonVo" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	String pw = request.getParameter("password");
	
	GuestbookDao guestBookDao = new GuestbookDao();
	guestBookDao.guestBookDelete(no, pw);

	response.sendRedirect("addList.jsp");
%>