<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../include/dbcon.jsp" %>	


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성 페이지</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/user.css">
<link rel="stylesheet" href="css/board.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	 rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">	
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
		
<script src="../script/jquery-1.12.4.js"></script>
<script src="../script/jquery-ui.js"></script>


</head>




<body>

<script>
$(function() {
		$("#btn_save").click(function(){ 
			
			if( $("#title").val() == "" ) {
				alert("제목을 입력해주세요.");
				$("#title").focus();
				return false;
			}
			if( $("#content").val() == "" ) {
				alert("내용을 입력해주세요.");
				$("#content").focus();
				return false;
			}
			
			var formdata = $("#frm").serialize();
			$.ajax({
				type : "post",
				url  : "boardWriteSave.do",
				data : formdata,
				
				datatype : "text",  // 성공여부 (ok)
				success : function(data) {
					if (data == "ok") {
						alert("작성완료");
						location="boardList.do";
					} else {
						alert("저장실패");
					}
				},	
				error : function() {
					alert("오류발생");
				}
			});
		});
	});




</script>   

<header>
	<%@ include file="../include/header.jsp" %>
</header>




<nav>
	<%@ include file="../include/nav.jsp" %>
</nav>

<section>

	<article>
	<div class="div1">
				★공지사항 작성★
			</div>
		<div class="baord_box">
			
			
			<div class="board_write_table">
			
				<form name="frm" id="frm" >
					<table class="board_table" style="width:1000px;">
						<colgroup>
							<col width="20%">
							<col width="*">
						</colgroup>
						
						<tr>
							<th class="board_th" style="height:50px; border-left:0px;">제목</th>
							<td class="board_td" style="border-right:0px;"> 
								<input type="text" id="title" name="title" class="board_input" style="height:30px;" autofocus>
							</td>
						</tr>
					
						
						<tr>
							<th class="board_th" style="border-left:0px;">내용</th>
							<td class="board_td" style="border-right:0px;">
								<textarea name="content" id="content" class="board_write_content" rows="10" cols="80"></textarea>
							</td>
						</tr>
					</table>
					<div class="btn_box" >
					
						<input type="submit" value="저장" class="btn btn-success" id="btn_save" onclick="return false;" >
						<input type="button" class="btn btn-danger" onclick="history.back();" value="취소">					
					</div>
				</form>
							
			</div>
		</div>
 
    </article> 
</section>

<footer>
	<%@ include file="../include/footer.jsp" %>	
</footer>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</body>
</html>