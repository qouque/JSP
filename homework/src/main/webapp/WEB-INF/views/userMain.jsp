<%@page import="kr.or.ddit.vo.UserVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>유저 관리</h2>
<%
	List<UserVO> userList = (List<UserVO>) request.getAttribute("userList");

%>
<table border="1">
	<thead>
		<tr>
			<th>USERID</th>
			<th>USERNM</th>
			<th>PASS</th>
			<th>REG_DT</th>
			<th>ALIAS</th>
			<th>ADDR1</th>
			<th>ADDR2</th>
			<th>ZIPCODE</th>
			<th>FILENAME</th>
			<th>REALFILENAME</th>
		</tr>
	</thead>
	<tbody>
		<%
			for(UserVO vo : userList){
		%>
				<tr>
					<th><%= vo.getUserid() %></th>
					<th><%= vo.getUsernm() %></th>
					<th><%= vo.getPass() %></th>
					<th><%= vo.getReg_dt() %></th>
					<th><%= vo.getAlias() %></th>
					<th><%= vo.getAddr1() %></th>
					<th><%= vo.getAddr2() %></th>
					<th><%= vo.getZipcode() %></th>
					<th><%= vo.getFilename() %></th>
					<th><%= vo.getRealfilename() %></th>
				</tr>
		<%
			}
		
		%>
	</tbody>
</table>
</body>
</html>