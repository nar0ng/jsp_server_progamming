<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>JSP Login</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("nm");
	String password = request.getParameter("pw");
	int count = 0;
    if (session.getAttribute("count") != null) {
        count = (Integer) session.getAttribute("count");
    }
    int logincount = 0;
    if (session.getAttribute("logincount") != null) {
        logincount = (Integer) session.getAttribute("logincount");
    }
    count++;
    session.setAttribute("count", count);
	out.println("<h2>"+count+"번째 접속"+"</h2> <p>");
	if (name.equals("김나령")) {
		if (password != null && password.equals("1234")) {
			logincount++;
			session.setAttribute("logincount", logincount);
			out.println("<h3>환영합니다. " + name + "님</h3> <p>");
			out.println(logincount + "번째 방문");
		} else {
			out.println("암호가 틀렸습니다.");
		}
	} else {
		out.println("회원이 아닙니다.");
	}
	
%>
</body>
</html>
