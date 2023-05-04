<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
  request.setCharacterEncoding("UTF-8");
  double operand1 = Double.parseDouble(request.getParameter("operand1"));
  double operand2 = Double.parseDouble(request.getParameter("operand2"));
  String operator = request.getParameter("operator");
  out.println(operand1 + " " + operator + " " + operand2 + " = ");
  if(operator.equals("+")) {
    out.println(operand1 + operand2);
	String strCount = (String) application.getAttribute("plusCount");
	int count = (strCount == null) ? 0 : Integer.valueOf(strCount);
    out.println("<br> 덧셈 총횟수 : " + ++count);
	application.setAttribute("plusCount", String.valueOf(count));
  }
  else if(operator.equals("-")) {
    out.println(operand1 - operand2);
    String strCount = (String) application.getAttribute("minusCount");
	int count = (strCount == null) ? 0 : Integer.valueOf(strCount);
    out.println("<br> 뺄셈 총횟수 : " + ++count);
	application.setAttribute("minusCount", String.valueOf(count));
  }
  else if(operator.equals("*")) {
    out.println(operand1 * operand2);
    String strCount = (String) application.getAttribute("multCount");
	int count = (strCount == null) ? 0 : Integer.valueOf(strCount);
    out.println("<br> 곱셈 총횟수 : " + ++count);
	application.setAttribute("multCount", String.valueOf(count));
  }
  else {
    out.println(operand1 / operand2);
    String strCount = (String) application.getAttribute("divCount");
	int count = (strCount == null) ? 0 : Integer.valueOf(strCount);
    out.println("<br> 나눗셈 총횟수 : " + ++count);
	application.setAttribute("divCount", String.valueOf(count));
  }
%>