<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<h2>이름과 암호 입력</h2>
		<form action ="helloProHome.jsp" method="post">
			 
			이름: <input type="text" name="nm" size=5> 
			암호: <input type="text" name="pw" size=5>
			<input type="submit" value="전송">
		</form>
</body>
</html>
