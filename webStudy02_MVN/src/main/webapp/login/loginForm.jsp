<%@page import="kr.or.ddit.Constans"%>
<%@page import="kr.or.ddit.utils.CookieUtils"%>
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
<script type="text/javascript" src = "<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		
		$("#saveId").change(function() {
			
			if($("#saveId").is(":checked")){
				$("#saveYN").val("Y");
			}else{
				$("#saveYN").val("N");
			}
			//console.log($("#saveYN").val());
			
		})
		
		
		
	})
	
	

</script>
</head>
<body>
<%
	CookieUtils utils = new CookieUtils(request);
	String checked = "";
	
	String saveId = utils.getCookieValue(Constans.LOGINMEMBERID);
	
	String message = (String) session.getAttribute("message");

	if(StringUtils.isNotBlank(message)){
		%>
		<div class="error"><%=message %></div>
		<%
		session.removeAttribute("message"); // flash attribute
	}
%>
<form action="<%=request.getContextPath()%>/login/loginProcess.do" method="post">
	<ul>
		<li>
			아이디 : <input type="text" name = "mem_id" value="<%= Objects.toString(saveId,"") %>"/>
			<input type="hidden" name="saveYN" id="saveYN" value="N"/>
			<label><input id="saveId" type="checkbox" name="saveId" <%= saveId!=null?"checked":"" %>/>아이디 기억하기</label>
		</li>
		<li>
			비밀번호 : <input type="password" name = "mem_pass"/>
			<input type="submit" value="로그인"/>
		</li>
	</ul>
	
</form>
</body>
</html>