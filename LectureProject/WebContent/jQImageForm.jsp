<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>jQuery 테스트3</title>
<style type="text/css">
  div#result {
    width : 300px;
    height : 300px;
    border : 5px double #6699FF;
  }
</style>

<script>
  $(document).ready(function() {
	  $("#b1").click(function() {
		  var image = $("#image")[0];
		  // 파일을 여러개 선택할 수 있으므로 files 라는 객체에 담긴다
		  if(image.files.length === 0){
		    alert("파일은 선택해주세요");
		    return;
		  }

		  var formData = new FormData();
		  formData.append("name", $("#t1").val())
		  formData.append("sid", $("#t2").val())
		  formData.append("image", image.files[0]);
		  
		  $.ajax({
			   type: "post",
			   url: "jQImagePro.jsp",
			   processData: false,
			   contentType: false,
			   data: formData,
			   success: function(data) {
				 $("#result").html(data);
				 alert("로드성공");
			   },
			   error: function() {
				 alert("로드실패");
			   }
	  	  });
	  });
  });
</script>
</head>
<body>
  이름: <input type="text" id="t1" size=5>
  학번: <input type="text" id="t2" size=5><p>
  <input type="file" id="image">
  <button id="b1">전송</button>
  <div id="result">로딩 영역</div>
</body>
</html>