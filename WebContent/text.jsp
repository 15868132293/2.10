<%@page import="com.util.JdbcUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>



<body>
	<input type="text" name="name" id="name" /><span id="info"></span>
	<input type="text" name="pwd" id="pwd" />
	
	<script type="text/javascript" src="jqury/jquery-1.12.4.js"></script>
	<script type="text/javascript">
	$(function(){
		$("#name").blur(function(){
			var name = $(this).val();
			$.post(
				"Check",
				{"name":name},
				function(data){
					$("#info").text(data.status);
				},
				"json"
			);
		});
	});

	</script>
</body>
</html>