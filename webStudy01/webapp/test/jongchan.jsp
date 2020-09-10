<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	#text{
		font-size: 150px;
	}

</style>
<script type="text/javascript" src=""></script>
<script type="text/javascript" src ="../js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#jcb1").on("click", function() {
			let text = "칭챙총찬 일어나";
			$("#text").text(text);
		});
		$("#jcb2").on("click", function() {
			let text = "칭챙총찬 앉아";
			$("#text").text(text);
		});
		$("#jcb3").on("click", function() {
			let text = "칭챙총찬 그만해";
			$("#text").text(text);
		});
		$("#he1").on("click", function() {
			let text = "헌이형 안녕";
			$("#text").text(text);
		});
	})

</script>
</head>
<body>
<span id = "text"></span>
<br/>
<input id="jcb1" type="button" value="일어나" />
<input id="jcb2" type="button" value="앉아" />
<input id="jcb3" type="button" value="그만해" />
<input id="he1" type="button" value="헌이형 안녕" />
</body>
</html>