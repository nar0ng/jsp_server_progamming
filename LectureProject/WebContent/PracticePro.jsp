<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
	$("#b1").click(function(){
		alert($("#b1".text()));
	});
	$("#b2").click(function()){
		$("displayArea").html("<img src=..");
	}
}))

$(document).ready(function(){
	$("#btn").click(function()){
		$.ajac({
			type:"post",
			url: "calProHome.jsp",
			data: {
				operand1:$("#d1").val(),
				operand2:$("#d2").val(),
				operator("#op").val()
				
			},
			success:function(data){
				$(#result).html(data);
			}
		})
	}
}))

	
</script>
<body>
<% 
String name = request.getParameter("name");		
String strCount =(String) application.getAttribute("counter");
int count = (strCount == null) ? 0: Integer.valueOf(strCount);
application.setAttribute("counter", String.valueOf(count));
	
%>
</body>
</html>
