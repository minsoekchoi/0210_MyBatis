<%@page import="com.ict.edu.VO"%>
<%@page import="com.ict.edu.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	DAO dao = (DAO) session.getAttribute("dao");
	int result = dao.getDelete(request.getParameter("idx"));
	
	%>
	<h2>비밀번호 입력</h2>
	<script type="text/javascript">
		location.href = "list.jsp"
	</script>

</body>
</html>