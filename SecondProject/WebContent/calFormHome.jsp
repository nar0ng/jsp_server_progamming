<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>계산기</title>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $(document).ready(function() {
	  $("#btn").click(function() {
		  $.ajax({
				   type: "post",
				   url: "calProHome.jsp",
				   data: {operand1:$("#d1").val(),
					      operator:$("#op").val(),
					      operand2:$("#d2").val()
					     },
				   success: function(data) {
					 $("#result").html(data);
				   }
		  });
	  });
  });
</script>
</head>
</head>
<body>
<b>계산할 실수와 연산자를 입력하세요.</b><p>
<input id="d1" type="text" size="5">
<select id="op">
  <option selected value="+">+ </option>
  <option value="-">- </option>
  <option value="*">* </option>
  <option value="/">/ </option>
</select>
<input id="d2" type="text" size="5"><p>
<br>
<div id="result">결과</div>
<br><br>
<input id="btn" type="button" value="입력완료">
</body>
</html>