<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>로그인</title>
<script>
	function send() {
		document.getElementById("form2").submit();	
	}
</script>
</head>
<body>
<h2>이름과 암호 입력</h2>
<%
	int count = 0;
	int logincount = 0;
	if (session.getAttribute("count") != null) {
		count = (Integer) session.getAttribute("count");
	}
	if (session.getAttribute("logincount") != null) {
		logincount = (Integer) session.getAttribute("logincount");
	}
%>
	<form id="form2" action ="basicProHome.jsp" method="post">
		이름: <input type="text" name="nm" size=5> 
		암호: <input type="text" name="pw" size=5>
		<input type="hidden" name="count" value="<%= count %>">
		<input type="hidden" name="logincount" value="<%= logincount %>">
		<input type="button" onclick="send()" value="전송">
	</form>
	

</body>
</html>
