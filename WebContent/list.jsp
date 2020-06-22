<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.GuestbookDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>

<%
	GuestbookDao guestBookDao = new GuestbookDao();
List<PersonVo> personList = guestBookDao.getPersonList();
System.out.println(personList.toString());
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
</head>
<body>

	<%--------------------------------------------------------------------------------%>
	<h1>Guestbook List</h1>
	<p>작성된 방명록의 목록입니다.</p>
	<%--------------------------------------------------------------------------------%>

	<table border="1" width="565">

		<tbody>
			<tr>
				<td width="45">이름</td>
				<td><input type="text" name = "Name"></td>
				<td width="70">비밀번호</td>
				<td><input type="password" name = "Name"></td>
			</tr>

			<tr>
				<td colspan="4"><textarea rows="11" cols="76"></textarea></td>
			</tr>

			<tr>
				<td width="45"><a href="./insert.jsp"><button type="submit">확인</button></a></td>
				<td colspan="3"></td>
			</tr>
		</tbody>

	</table>

	<br>

	<%
		for (PersonVo personVo : personList) {
	%>

	<table border="1" width="565">
		<tbody>
			<tr>
				<td width="20"><%=personVo.getNo()%></td> 
				<td width="80"><%=personVo.getName()%></td>
				<td width=auto><%=personVo.getDate()%></td>
				<td width="45"><button type="button">삭제</button></td>
			</tr>

			<tr height="120">
				<td colspan="4"><%=personVo.getContent()%></td>
			</tr>
		</tbody>



	</table>

	<br>

	<%
		}
	%>











</body>
</html>