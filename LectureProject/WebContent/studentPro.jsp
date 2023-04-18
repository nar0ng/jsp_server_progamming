<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>학생 정보</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String root = application.getRealPath(java.io.File.separator);
	String directory = root + java.io.File.separator + "uploaded";
	out.println(directory);

	int sizeLimit = 100*1024*1024;		//100MB 제한
	MultipartRequest multi_request = new MultipartRequest(request, directory,
			sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
	
	String name = multi_request.getParameter("name");
	String phone = multi_request.getParameter("phone");
	String major = multi_request.getParameter("major");
	String received_filename = multi_request.getOriginalFileName("image");
	String saved_filename = multi_request.getFilesystemName("image");
%>
<p>
이름 : <%= name %><br>
전번 : <%= phone %><br>
전공 : <%= major %><br>
이미지 : <%= received_filename %> 등록완료!<p>
<%= saved_filename %><p>
<%
	String imageStr = "<img src='uploaded/" + saved_filename + "' width='240'/>";
	out.println(imageStr);
%>
</body>
</html>