<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
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
	VO vo = new VO();
	vo.setName(request.getParameter("name"));
	vo.setSubject(request.getParameter("subject"));
	vo.setEmail(request.getParameter("email"));
	vo.setPwd(request.getParameter("pwd"));
	vo.setContent(request.getParameter("content"));

	DAO dao = (DAO) session.getAttribute("dao");
	int result = dao.getInsert(vo);
	%>
	<h2>삽입 완료</h2>
	<script type="text/javascript">
		location.href = "list.jsp";
	</script>

</body>
</html>