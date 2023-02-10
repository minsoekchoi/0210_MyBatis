<%@page import="java.util.List"%>
<%@page import="com.ict.edu.DAO"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
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
		WebApplicationContext context =
			WebApplicationContextUtils.getWebApplicationContext(application);
		DAO dao = (DAO)context.getBean("dao");
		/* 이거 끝나기전에 session에 dao를 집어넣으면 계속 쓸 수 있다. */
		session.setAttribute("dao", dao);
		/* forward를 이용해 dao정보를 가지고 list.jsp로 넘어간다. */
		request.getRequestDispatcher("list.jsp").forward(request, response);
	%>
</body>
</html>