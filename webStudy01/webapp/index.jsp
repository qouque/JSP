<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>여기는 index.jsp</h2>
<%
	String name = (String) session.getAttribute("authID");
	out.println(name);
%>
</body>
</html>