<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.div1 {
	background-color:white;
	font-size:12px;
	font-weight:bold;
	color:#272727;
	font-family:arial;
	width:480px;
	height:250px;
	line-height:2.0;
	text-align:center;
}
a { text-decoration:none; }
</style>

<script>
function fn_submit() {
	let search_text = document.frm.dong.value;
	if (search_text == "") {
		alert("동을 입력해주세요.");
		return false;
	} 
	document.frm.submit();
} 
</script>
<body>


<div class="div1" >
	<div style="margin-bottom:30px;">&nbsp;</div>
	<div style="margin:0 auto;">
	<form name="frm" method="post" action="userAddrSearch2.do">
		* 검색할 지역(동,면,리)을 입력해주세요. <br> 
		* ex) 서초동 → [ 서초 ] [검색] <br>
		(동/읍/면/리) <input type="text" name="dong" style="height:20px;">
		<input type="button" value="검색" onclick="fn_submit()">
	</form>
	</div>
</div>

</body>
</html>