<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<%
	int no = Integer.parseInt(request.getParameter("no"));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deleteForm</title>
</head>
<body>
	<h4>방명록 삭제</h4>

	<form action = "./delete.jsp" method = "post">
	<input type = "hidden" name = "no" value = <%=no %>>
	비밀번호(Password)	:	<input type = "password" name = "password">
	<button type = "submit">확인</button><br>

	</form>

	<a href="./addList.jsp">메인으로 돌아가기</a>
	
</body>
</html>