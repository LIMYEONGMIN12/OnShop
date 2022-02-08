<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/loginCertify.jsp" %>
 <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
 <script src="../script/jquery-1.12.4.js"></script>
  		<script src="../script/jquery-ui.js"></script>
  </head>
  <style>
   @font-face{
	font-family : Indie Flower;
	src: url('/fonts/IndieFlower-Regular.ttf') format('truetype');
	
} 	
  
  </style>
<script>
//이메일 정규표현식 
var email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

		$(function() {

			$( "#userBirth" ).datepicker({
	      		changeMonth: true,
	      		changeYear: true
	   		});
		 
		 	
			$("#btn_save").click(function(){  
				
				if( $("#userPwdold").val() == "" ) {
	  				alert("현재비밀번호를 입력해주세요.");
	  				$("#userPwdold").focus();
	  				return false;
	  			}
				
				
				if( $("#userPwdold").val() != $("#userPwdhidden").val() ) {
	  				alert("현재 비밀번호가 다릅니다");
	  				$("#userPwdold").focus();
	  				return false;
	  			} 
  							
  		
	  			if( $("#userPwd").val() == "" ) {
	  				alert("비밀번호를 입력해주세요.");
	  				$("#userPwd").focus();
	  				return false;
	  			}
	  				
	  			
	  			if( $("#userPwdchk").val() != $("#userPwd").val() ) {
	  				alert("비밀번호가 다릅니다.");
	  				$("#userPwdchk").focus();
	  				return false;
	  			}
	  		
	  			if( $("#userName").val() == "" ) {
	  				alert("이름 입력해주세요.");
	  				$("#userName").focus();
	  				return false;
	  			}
	  			if( $("#userNickname").val() == "" ) {
	  				alert("닉네임을 입력해주세요.");
	  				$("#userNickname").focus();
	  				return false;
	  			}
	  			
	  			if( $("#userPhone").val() == "" ) {
	  				alert("휴대폰을 입력해주세요.");
	  				$("#userPhone").focus();
	  				return false;
	  			}
	  			if( $("#userPhone").val().length != 11) {
	  				alert("휴대폰번호 11자리를 알맞게 입력해주세요");
	  				$("#userPhone").focus();
	  				return false;
	  			}
	//이메일 체크 	-----------------------------------------------------------------------
	  			if( $("#userEmail").val() == "" ) {
					alert("이메일을 입력해주세요.");
					$("#userEmail").focus();
					return false;
				} 
	  			if(!email_rule.test($("#userEmail").val())) { 
	  			      alert("이메일 주소가 유효하지 않습니다"); 
	  			      $("#userEmail").focus(); 
	  			      return false; 
	  			 } 	
	//------------------------------------------------------------------------------------------
			
	  			if( $("#userBirth").val() == "" ) {
	  				alert("생일을 입력해주세요.");
	  				$("#userBirth").focus();
	  				return false;
	  			}
	  			 
	
	  			if( !$("input[name='userGender']").is(":checked") ) {
	  				alert("성별을 선택해주세요.");
	  				$("input[name='userGender']:eq(1)").focus();
	  				return false;
	  			}
  			
	  			var formdata = $("#frm").serialize();

	  			$.ajax({
	  				type : "post",
	  				url  : "ShoppingUserModifySave.do",
	  				data : formdata,
	  				
	  				datatype : "text",  // 성공여부 (ok)
	  				success : function(data) {
	  					if (data == "ok") {
	  						alert("저장완료");
	  						location="ShoppingMain.do";

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
<script>
function fn_lastday() {
	var yy = document.getElementById("year").value;
	var mm = document.getElementById("month").value;
	var lastday = new Date(yy,mm,0).getDate();
	
	var options ="";
	
	for(var i=1; i<=lastday; i++) {
		options += "<option value='"+i+"'>"+i+"</option>";
	}
	document.getElementById("day").innerHTML = options;	
	
}
	
function fn_popup(){
	var url = "post1.jsp";
	window.open(url,"popup","width=500,height=300");
}
	




 
</script>

<body>
<header>
	<%@ include file="../include/header.jsp" %>

</header>

<div class="homeimg" style="margin-top:20px;text-align:center;">
                   <a href="/ShoppingMain.do"> <img src="../images/img/store.png" alt=""></a> 

</div>
						 
      	<div style="padding:30px;
  				text-align:center;
  				font-size:60px;
  			 
  				font-family:Indie Flower;
  				">  
  		<strong>
  		Change of Info
  		</strong>
  	</div> 

<section>

        <article>
    <form name="frm" id="frm" method="post" >
                            <input type ="hidden" id="userId" name="userId" value="${vo.userId }">
                        <input type ="hidden" id="userPwdhidden" name="userPwdhidden" value="${vo.userPwd }">
          
            <table class ="table1" align="center">
            
			<colgroup>
				<col width ="25%" />
				<col width = "*" />
			</colgroup>
            	<tr>
	            	<th class ="th1"><%=imp %>아이디</th>
	            	
	            	<td class ="td1">
	            	${vo.userId }
	            	
	            	
	            	</td>       	
            	</tr>
            	<tr>
	            	<th class ="th1"><%=imp %>현재 비밀번호</th>
	            	<td class ="td1"><input type ="password" id="userPwdold" name ="userPwdold" class="input1" placeholder="비밀번호 입력"></td>       	
            	</tr>
            	<tr>
	            	<th class ="th1"><%=imp %>새 비밀번호</th>
	            	<td class ="td1"><input type ="password" id="userPwd" name ="userPwd" class="input1" placeholder="비밀번호 입력"></td>       	
            	</tr>
            	
            	<tr>
	            	<th class ="th1" ><%=imp %>새 비밀번호 확인</th>
	            	<td class ="td1"><input type ="password" id="userPwdchk" name ="userPwdchk" class="input1" ></td>       	
            	</tr>
            	
            	<tr>
	            	<th class ="th1"><%=imp %>이름</th>
	            	<td class ="td1"><input type ="text" id="userName" name ="userName" class="input1" placeholder="이름 입력" value = "${vo.userName }"></td>       	
            	</tr>
            	
            	<tr>
	            	<th class ="th1"><%=imp %>닉네임</th>
	            	<td class ="td1"><input type ="text" id="userNickname" name ="userNickname" class="input1" placeholder="닉네임 입력" value="${vo.userNickname }"></td>       	
            	</tr>
            
            	<tr>
	            	<th class ="th1"><%=imp %>휴대폰</th>
	            	<td class ="td1">
						<input type="text" id="userPhone" name="userPhone" class="input1" maxlength="11" value="${vo.userPhone }"> 
						<span style="color:#ccc;font-size:13px;"> ("-")를 제외하고 입력해주세요 ex)01033334444</span>
							
	            	
	            	</td>         	
            	</tr>
            	
            	<tr>
					<th class="th1" style ="line-height:80px">주소</th>
					<td class="td1">
					<input type="text" id ="userZipcode" name="userZipcode" class="input1" style="width:50px;" maxlength="6" value="${vo.userZipcode }">
					<button type="button" onclick="fn_popup()" class="button1">우편번호찾기</button>
					<input type="text" id ="userAddr1" name="userAddr1" class="input2" value="${vo.userAddr1 }">
					<input type="text" id ="userAddr2" name="userAddr2" class="input2" value="${vo.userAddr2 }">
					</td>
				</tr>
            	<tr>
	            	<th class ="th1">이메일</th>
	            	<td class ="td1"><input type ="text" id ="userEmail" name ="userEmail" class="input1" style="width:40%;" placeholder="ex) asdasd@google.com"
	            					value="${vo.userEmail }"></td>       	
            	</tr>
            	
            	
            	<tr>
	            	<th class ="th1"><%=imp %>생일</th>
	            	<td class ="td1"><input type ="text" id ="userBirth" name ="userBirth" class="input1" readonly value="${vo.userBirth }"></td>       	
            	</tr>
            
            	<tr>
	            	<th class ="th1"><%=imp %>성별</th>
	            	<td class ="td1">
	             &nbsp;&nbsp;&nbsp;
	            남&nbsp;<input type="radio" id="userGender" name="userGender" value="M"  <c:if test="${vo.userGender == 'M'}">checked="checked"</c:if> > 
				&nbsp;&nbsp;&nbsp;
				여&nbsp;<input type="radio" id="userGender" name="userGender" value="F"  <c:if test="${vo.userGender == 'F'}">checked="checked"</c:if> > 
	            	</td>       	
            	</tr>
            	
            	
            	
            </table>
            <div style="margin-top:12px;">
            <input type="submit" value="저장"  id="btn_save" class="button1" onclick="return false;">
	
			<input type="button"  value="취소"  class="button1" onclick="history.back();">
            </div>
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