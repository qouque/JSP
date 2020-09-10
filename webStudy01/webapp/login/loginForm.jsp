<%@page import="java.util.Objects"%>
<%@page import="org.apache.commons.lang3.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.error{
	color : "red";
}
	
</style>
</head>
<body>
<%
	String mem_id = (String) request.getParameter("mem_id");
	String message = (String) request.getAttribute("message");
	
	if(StringUtils.isNotBlank(message)){
		%>
		<div class="error"><%=message %></div>
		<%
	}
%>
<form action="<%=request.getContextPath()%>/login/loginProcess.do" method="post">
	<ul>
		<li>
			아이디 : <input type="text" name = "mem_id" value="<%= Objects.toString(mem_id,"") %>"/>
			<label><input type="checkbox" name="saveId" />아이디 기억하기</label>
		</li>
		<li>
			비밀번호 : <input type="password" name = "mem_pass"/>
			<input type="submit" value="로그인"/>
		</li>
	</ul>
	
</form>
</body>
</html>