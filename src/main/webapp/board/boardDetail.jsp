<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>



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
	  
		$("#btn_go1").click(function(){
			location = "boardModify.do?unq=${vo.unq}";
		});
		
		$("#btn_go2").click(function(){
			if(confirm("정말로 삭제 하시 겠습니까?")){
				
	  			var formdata = $("#frm").serialize();
	  			
				$.ajax({
					type : "post",
					url  : "/boardDelete.do",
					data : formdata, 
					datatype : "text",
					success  : function(data){
							if(data == "ok") {
								alert("삭제 성공");
								history.back();
							} else {
								alert("삭제 (실패)하였습니다.");
								history.back();
							}
							document.location.reload();
					},
					error    : function() {
							alert("오류 ~");
					}
				}); 
				
			}
		
			
			//location = "";
		});
	
	});


</script>   
<script>


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
				★공지사항★
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
							<td class="board_td" style="border-right:0px;padding-left:10px;"> 
									${vo.title }
							</td>

						</tr>
						<tr>
							<th class="board_th" style="height:50px; border-left:0px;">날짜</th>
							<td class="board_td" style="border-right:0px;padding-left:10px;"> 
									${vo.rdate } 
							</td>

						</tr>
							<tr> 
							<th class="board_th" style="height:50px; border-left:0px;">조회수</th>
							<td class="board_td" style="border-right:0px;padding-left:10px;"> 
									${vo.hits }
							</td>

						</tr>
						<tr>
							<th class="board_th" style="border-left:0px;">내용</th>
							<td class="board_td" style="width:98%; height:300px;border-right:0px;padding-left:10px;">
${vo.content }
							<input type="hidden" id="unq" name="unq" value="${vo.unq }">
							</td>

						</tr>
					</table>
					
					 			<%
if ( useridTop != null ) {
	if ( useridTop.equals("root")) {
	%>
					<div class="btn_box" >
						<button type="button" id="btn_go1" class="button1" style="height:30px;">수정하기</button>
	  					<button type="submit"
	  							id="btn_go2"
	  					<%--  onclick="fn_delete(${vo.unq})" --%>  class="button1" style="height:30px;color:red;">삭제하기</button>
					</div>
		<% 
		}else{  
		%>
							 			
		
		<%
		} 
		%>
  <%
}else{ //로그인안했을경우 
%>
	
	<%
}

%>

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