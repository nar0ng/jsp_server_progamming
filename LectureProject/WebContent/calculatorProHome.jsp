<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>calculatorPro</title>
</head>
<body>
<%!	
String firstFilename = null;
int addcount = 0;
int subcount = 0;
int multicount = 0;
int divcount = 0;
 %>

<%
	request.setCharacterEncoding("UTF-8");
	String root = application.getRealPath(java.io.File.separator);
	String directory = root + java.io.File.separator + "uploaded";
	
	int sizeLimit = 100*1024*1024;		//100MB 제한
	MultipartRequest multi_request = new MultipartRequest(request, directory,
			sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
	
	String operand1 = multi_request.getParameter("operand1");
	String operator = multi_request.getParameter("operator");
	String operand2 = multi_request.getParameter("operand2");
	double result = 0;
	String received_filename = multi_request.getOriginalFileName("image");
	String savedFilename = multi_request.getFilesystemName("image");
	if (firstFilename == null && savedFilename != null) {
	    firstFilename = savedFilename;
	}
	String imageStr = "";
	if (firstFilename != null) { // 첫 번째 파일명이 저장되어 있을 경우에만 출력
	    imageStr = "<img src='uploaded/" + firstFilename + "' width='240'/>";
	}
	out.println(imageStr);
	
	if (operator.equals("+")){
		result = Double.parseDouble(operand1) + Double.parseDouble(operand2);
		addcount++;
	}
	else if (operator.equals("-")){
		result = Double.parseDouble(operand1) - Double.parseDouble(operand2);
		subcount++;
	} else if (operator.equals("*")){
		result = Double.parseDouble(operand1) * Double.parseDouble(operand2);
		multicount++;
	}else if(operator.equals("/")){
		result = Double.parseDouble(operand1) / Double.parseDouble(operand2);
		divcount++;
	}
		 
%>	

	<p>
	<%= operand1 %> <%= operator %> <%=operand2 %> = <%= result %><br>
	덧셈 총 횟수: <%=addcount %><br>
	뺄셈 총 횟수: <%=subcount %><br>
	곱셈 총 횟수: <%=multicount %><br>
	나눗셈 총 횟수: <%=divcount %><br>
</body>
</html>
