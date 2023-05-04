<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

로딩영역 내에 표시됩니다.
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String sid = request.getParameter("sid");
	String strCount = (String) application.getAttribute("counter");
	int count = (strCount == null) ? 0 : Integer.valueOf(strCount);
	out.print("방문자수:"+ ++count);
	application.setAttribute("counter", String.valueOf(count));
%>
<h4> 학생 정보 입력 결과 </h4>
     이름 :  <%=name%><p>
    학번: <%=sid%><p>