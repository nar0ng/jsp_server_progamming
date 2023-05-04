<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>	

<%
	request.setCharacterEncoding("UTF-8");

	String root = application.getRealPath(java.io.File.separator);
	String directory = root + "/uploaded";
	//out.println(directory);

	int sizeLimit = 100*1024*1024;		//100MB 제한
	MultipartRequest multi_request = new MultipartRequest(request, directory,
			sizeLimit, "UTF-8", new DefaultFileRenamePolicy());

	String name = multi_request.getParameter("name");
	String sid = multi_request.getParameter("sid");
	String received_filename = multi_request.getOriginalFileName("image");
	String saved_filename = multi_request.getFilesystemName("image");

%>
<h4> 학생 정보 입력 결과 </h4>
    이름 :  <%=name%><br>
    학번: <%=sid%><br>
    이미지 : <%= received_filename %> 등록완료!<br>
<%= saved_filename %><p>
<%
	String imageStr = "<img src='uploaded/" + saved_filename + "' width='100'/>";
	out.println(imageStr);
%>