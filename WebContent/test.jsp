<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<span id="name">hualei</span>
<div id="div1" style="width:100px,heigt:100px,background-color:red" >
<div id=div2 style="width:100px,heigt:100px,background-color:blue" ></div>
</div>
<script type="text/javascript" src="jqury/jquery-1.12.4.js"></script>
<script type="text/javascript">
//	$("#name").bind("mouseover",function(){
//		$(this).css("background-color","yellow");
//	})
//	$("#name").bind("mouseout",function(){
//		$(this).css("background-color","white");
//	})
	$("#name").click(function(){
		$(this).toggle()
	})	
	$("#div1").bind("mouseover",function(){
		$(this).css("background-color","yellow");
	})
	$("#div1").bind("mouseout",function(){
		$(this).css("background-color","white");
	})
	
	$("#div2").bind("mouseover",function(){
		$(this).css("background-color","yellow");
	})
	$("#div2").bind("mouseout",function(){
		$(this).css("background-color","white");
	})
	
	
</script>
</body>
</html>