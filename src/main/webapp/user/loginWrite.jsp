<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon.jsp" %>

<%
String imp = "<span style='color:red'>*</span> ";
%>

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
	<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
 	
		<script src="../script/jquery-1.12.4.js"></script>
  		<script src="../script/jquery-ui.js"></script>
 
  </head>
  <style>
.textarea1{
border:1px solid #e4eaec;
background:white;
color:#000;
vertical-align:middle;
width:920px;
height:150px;
}	
  </style>
<script>
$(function() {

	
	$("#btn_login").click(function(){  
	
		if( $("#userId").val() == "" ) {
			alert("아이디를 입력해주세요.");
			$("#userId").focus();
			return false;
		}
	
		
		if( $("#userPwd").val() == "" ) {
			alert("비밀번호를 입력해주세요.");
			$("#userPwd").focus();
			return false;
		}

	 
		var formdata = $("#frm").serialize();

		$.ajax({
			type : "post",
			url  : "ShoppingLoginWriteSub.do",
			data : formdata,
			
			datatype : "text",  // 성공여부 (ok)
			success : function(data) {
				if (data == "ok") {
					alert("로그인 되었습니다.");
					location="ShoppingMain.do";

				} else {
				
					alert("로그인 실패");
				}
			},	
			error : function() {
				alert("잘못된 접근입니다.");
			}
		});
		
		
		
	});
});


	
  </script>


<body>
<header>
	<%@ include file="../include/header.jsp" %>

</header>

<nav>
	<%@ include file="../include/nav.jsp" %>
</nav>

<section>

        <article>
    <form name="frm" id="frm" method="post" >
           
           
          
           <table class="table_login">
	<tr>
		<td style="text-align:center;border:2px solid #ccc" >
		   <div class="div2">
					회원 로그인
			</div>
		
			<table style="border:0;margin:0 auto;margin-top:15px;margin-bottom:15px; ">
				<tr	>
					
					<td style="text-align:center;"> <input type ="text" id="userId" name ="userId" class="input_login" autofocus placeholder="ID"/> </td>
					
					<td rowspan="2"></td>
					<!-- <td rowspan="2"><a href="#" class="btn1" style="line-height:40px;">로그인</a> -->
				</tr>
				<tr>
				
					<td style="text-align:center"><input type ="password" id="userPwd" name="userPwd" class="input_login" placeholder="PASSWORD"> </td>
					
				</tr>
				<tr>
				<td >
	             <input type="submit" value="로그인"  class="button_login" id ="btn_login" onclick="return false;">
				</td>
				</tr>
				<tr>
				<td style="padding-top:10px;">
				<a href="findUserid.do" class="a1" >아이디 찾기</a> |
				<a href="findPass.do" class="a1">비밀번호 찾기</a>
				</td>
				</tr>
				<tr>
				<td>	            
				 <input type="button" value="회원가입"   class="button_write" onclick="location.href='ShoppingUserWriteBefore.do'">
				</td>
				</tr>
				
			</table>
		</td>
	</tr>
	
</table>
	</form>
        </article>
</section>

<footer>
	<%@ include file="../include/footer.jsp" %>

</footer>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</body>
</html>
