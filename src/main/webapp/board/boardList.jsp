<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
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

<style>

@font-face{
	font-family : SingleDay-Regular;
	src: url('/fonts/SingleDay-Regular.ttf') format('truetype');
	 
} 
</style>
<body>

<header>
	<%@ include file="../include/header.jsp" %>
</header>


<nav>
	<%@ include file="../include/nav.jsp" %>
</nav>

<section>

	<article> 
			<div class="div1" style="font-family:SingleDay-Regular;font-size:30px;margin-top:50px; ">
				<i class="fas fa-star"></i>공지사항<i class="fas fa-star"></i>
			</div>
			
		<div class="board_box">
			
			
			
			
			<div class="board_search_box">
				<form name="frm" method="post" action="boardList.jsp">
				
					
				</form>
			</div>
			
			
			
			<div class="board_write_box">
			<%
if ( useridTop != null ) { 
	if (useridTop.equals("root")) {
	%>
							<button class="btn btn-dark btn-sm" onclick="location.href='boardWrite.do'">글쓰기</button>
	<%
	
	}else{ 
		%>	
		
		<%
	}
		%>	
		<%
}else{
			%>
			 
			<%
			}
			%>
			</div>
			 
			
			<div class="board_item_table">
				<table class="board_table">
					<colgroup>
						<col style="width:10%;">
						<col width="*">
					
						<col style="width:10%;">
						<col style="width:15%;">
					</colgroup>
					<tr>
						<th class="board_th">번호</th>
						<th class="board_th">제목</th>
						
						<th class="board_th">조회수</th>
						<th class="board_th">날짜</th>
					</tr>

				<c:forEach  var="result" items="${list}">
					<tr style="height:60px;">
						<th class="board_th">${rownum }</th>
						<th class="board_th">
						
						<a href="/boardDetail.do?unq=${result.unq}">${result.title }</a>
						
						</th>
						<th class="board_th">${result.hits}</th>
						<th class="board_th">${result.rdate}</th>
					</tr>
					<c:set var="rownum" value="${rownum-1}" />
				</c:forEach>	
					 
				</table>
			</div>
			
			<div style="text-align:center; margin-bottom:10px;">
			
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