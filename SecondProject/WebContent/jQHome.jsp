<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>jHome</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
  $(document).ready(function() {
	  $("#b1").click(function() {
		  $("#p1").text("Hello, World!");
	  });
	  $("#b2").click(function() {
		  $("#p2").html("<b> Hello, World!</b>");
	  });
	  $("#b3").click(function() {
		  alert($("#p3").val());
	  });
  });
</script>
</head>
<body>
<p id="p1">This is a paragragh</p>
<p id="p2">This is another paragragh</p>
<p>Input field: <input type="Text" id="p3"></p><br>
<button id="b1">Set Text</button>
<button id="b2">Set HTML</button>
<button id="b3">Show Alert</button>
</body>
</html>