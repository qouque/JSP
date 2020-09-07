<%@page import="org.apache.commons.lang3.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String mem_id = (String) request.getAttribute("authID");
	String span = "";
	if(StringUtils.isBlank(mem_id)){
		mem_id = "";
	}else{
		span = "<span style='color: red'>잘못입력함</span>";
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/login/loginProcess.do" method="post">
	<ul>
		<li>
			아이디 : <input type="text" name = "mem_id" value="<%= mem_id %>"/>
		</li>
		<li>
			비밀번호 : <input type="password" name = "mem_pass"/>
			<input type="submit" value="로그인"/>
		</li>
	</ul>
	<%
		out.println(span);
	%>
</form>
</body>
</html>