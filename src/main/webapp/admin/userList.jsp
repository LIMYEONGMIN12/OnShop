<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>

<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/user.css">
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
.userlist_tbl{
	width:1500px;
	border:1px solid #ccc;
	margin-top:20px;
	 

}
.userlist_tbl2{
	border-radius: 15px;
	margin-top:50px;

	width:900px;
 	background: #F2cfa5;
 	height: 50px;
	width: 500px;
 	border-radius: 30px;
 	margin-right:30px;
 	margin-bottom:10px;

}

.userlist_tbl2 td{
	
	text-align:center;
	 padding: 10px;
	
}
.userlist_tbl2 select{
	color:	#696969;
    width: 140px; /* 원하는 너비설정 */
    padding: 2px;/* 여백으로 높이 설정 */
    font-family: inherit;  /* 폰트 상속 */
    font-weight:bold;
    background: url('https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg') no-repeat 90% 40%; /* 네이티브 화살표를 커스텀 화살표로 대체 */
    border: 2px solid white;
    border-radius: 0px; /* iOS 둥근모서리 제거 */
    -webkit-appearance: none; /* 네이티브 외형 감추기 */
    -moz-appearance: none;
    appearance: none;
    padding-left:14px;
}
.userlist_tbl2 select::-ms-expand {
    display: none;
}
.button_userlist{
	font-size:15px;
	font-family:'맑은 고딕';
	color:WHITE;
	width:90px;
	height:25px;
	background:#b2b2b2;	
	font-weight:bold;
	border:0px;
	
margin-right:25px;
height:30px;
background:#FF9900;
border:2px solid white;

}


.userlist_tbl td{
	text-align:center;
	border:1px solid #ccc; 
	line-height:50px;
}
 
  </style>
<script>

	

  </script>


<body>
<header>
	<%@ include file="../include/header.jsp" %>

</header>

<section>

<article>


			<div class="div1">
				회원 목록
			</div>
			
		
					
			
					
			
			
			
			<div style="width:90%;
			background-color:red;
	  				margin-left:25px;
	  				margin-bottom:10px;
	  				text-align:left;">
	  		    	
	  	
	  	
		
	  <form name="frm" method="post" action="adminUserList.do">
	  	
	  			<div style="margin-left:10px;
	  				float:left; 
	  				width:200px; 
	  				font-weight:bold;
	  				text-align:left;
	  				margin-top:60px;
	  				margin-left:190px;
	  				">
	  		검색 회원 수 : ${total } 명
	  	</div>
	  	
	  	
		  	<table class= "userlist_tbl2" align="right">
		  <colgroup>
		<col width ="30%" />
		<col width ="30%" />
		
		<col width ="*" />							
		</colgroup>
		
		
		
		
		  <tr>
		 	
	
		  	<td>
		    	  <select name="s_field">
	  			<option value="userid" <c:if test="${s_field=='userid'}">selected</c:if> >아이디</option>
	  			<option value="username" <c:if test="${s_field=='username'}">selected</c:if> >이름</option>
	  			<option value="userphone" <c:if test="${s_field=='userphone'}">selected</c:if> >휴대폰</option>
	  			<option value="usergrade" <c:if test="${s_field=='usergrade'}">selected</c:if> >등급</option>
	  			<option value="useraddr1" <c:if test="${s_field=='useraddr1'}">selected</c:if> >주소</option>
	  			<option value="userrdate" <c:if test="${s_field=='userrdate'}">selected</c:if> >가입일</option>
		  		</select>
			</td>
			
			
			<td>
	  			<input type="text" name="s_text" value="${s_text}">
		  	</td>

		  	<td >
		  	<button type="submit"  class ="button_userlist">검색</button>
		  	 
			</td>		  	 
		  		</tr>
		  	</table>
	  	</form>
	  	</div>
<table class="userlist_tbl" align="center">
	<colgroup>
		<col width ="10%" />
		<col width ="10%" />
		<col width = "10%" />
		<col width = "10%" />		
		<col width ="10%" />				
		<col width ="10%" />
		<col width ="10%" />
		<col width ="*" />					
	</colgroup>
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>성별</td>
		<td>나이</td>
		<td>휴대폰</td>
		<td>등급</td>
		<td>주소</td>
		<td>가입일</td>
	</tr>

<c:forEach  var="result" items="${list}">
	<tr>
		<td>${result.userid }</td>
		<td>${result.username }</td>
		<td>${result.usergender }</td>
		<td>${result.userbirth }</td>
		<td>${result.userphone }</td>
		<td>${result.usergrade }</td>
		<td>${result.useraddr1 }</td>
		<td>${result.userrdate }</td>
		
		
	
	
	</tr>		
</c:forEach>
</table>
   		<div 	style="font-size:18px;color:#424242;font-family:'맑은 고딕';
   						margin-top:12px;">
		<c:forEach var="i" begin="1" end="${total_page }">
			<a href="adminUserList.do?page_no=${i}&s_field=${s_field}&s_text=${s_text}">${i}</a> 
		</c:forEach>
	  	</div>
					

			<div style="width:100%; margin-top:10px; float:center;text-align:center;">
					
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
