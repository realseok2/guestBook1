<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@	page import="com.javaex.vo.PersonVo" %>

<%
	request.setCharacterEncoding("UTF-8");

	String name 	= request.getParameter("name");
	String pw 		= request.getParameter("password");
	String content 	= request.getParameter("content");
	PersonVo personVo = new PersonVo(name, pw, content);
	
	GuestbookDao guestBookDao = new GuestbookDao();
	guestBookDao.guestBookInsert(personVo);
		
	response.sendRedirect("addList.jsp"); 
	
%>