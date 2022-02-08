<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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

<script>

function fn_findPass() {
	var user_name = document.frm.user_name.value;
	var user_id = document.frm.user_id.value;
	if( user_name == "" ) {
		alert("이름을 입력해주세요!");
		return false;		
	}
	if (user_id == "") {
		alert("아이디를 입력해주세요!");
		return false;
	}
	var w = window.screen.width/2 - 150;
	var h = window.screen.height/2 - 100;
	
	var url = "findPassResult.jsp?user_name="+user_name+"&user_id="+user_id;
	window.open(url,"findId","width=500,height=200,left="+w+", top="+h);
}
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
    <form name="frm" id="frm" method="post" action="findUseridResult.jsp">
           <table class="table_login">
	<tr>
		<td style="text-align:center;border:2px solid #ccc" >
		   <div class="div2">
					비밀번호 찾기
			</div>
		
			<table style="border:0;margin:0 auto;margin-top:15px;margin-bottom:15px; ">
				<tr>					
					
					<td style="text-align:center;"> <input type ="text" name="user_name" class="input_login" autofocus placeholder="이름"/> </td>
				</tr>
				<tr>	
							
					<td style="text-align:center"><input type ="text" name="user_id" class="input_login" placeholder="아이디"> </td>					
				</tr>
				<tr>
				<td colspan="2">
					<button type="button" class="button_login" onclick="fn_findPass();">비밀번호 찾기</button>
	             <!--  
	             <input type="submit" value="아이디 찾기"   class="button_login" onclick="fn_findUserid();return false;">
	              -->
				</td>
				</tr>  
				
				<tr>
				<td colspan="2">	            
				 <input type="button" value="돌아가기"   class="button_write" onclick="location.href='loginWrite.jsp'" >
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