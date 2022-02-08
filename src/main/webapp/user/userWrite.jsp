<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon.jsp" %>
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
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('userZipcode').value = data.zonecode;
                document.getElementById("userAddr1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("userAddr2").focus();
            }
        }).open();
    }
</script>
<script>
//이메일 정규표현식 
var email_rule =  /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;


		$(function() {

			$( "#userBirth" ).datepicker({
	      		changeMonth: true,
	      		changeYear: true
	   		});
			
			
			
			$("#btn_save").click(function(){  
			
  			if( $("#userId").val() == "" ) {
  				alert("아이디를 입력해주세요.");
  				$("#userId").focus();
  				return false;
  			}
  				
  			var space = $("#userId").val().indexOf(" ");
  			if( space > -1 ) {
  				alert("공백포함 불가");
  				$("#userId").focus();
  				return false;
  			}
  			if( $("#idcheck").val() == "0" ) {
  				alert("정상 상태의 id가 아닙니다.");
  				$("#userId").focus();
  				return false;
  			}
  			 
  			if( $("#userPwd").val() == "" ) {
  				alert("비밀번호를 입력해주세요.");
  				$("#userPwd").focus();
  				return false;
  			}
  			
  			if( $("#userPwd_chk").val() != $("#userPwd").val() ) {
  				alert("비밀번호가 다릅니다.");
  				$("#userPwd_chk").focus();
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
  				url  : "ShoppingUserWriteSave.do",
  				data : formdata,
  				
  				datatype : "text",  // 성공여부 (ok)
  				success : function(data) {
  					if (data == "ok") {
  						alert("환영합니다.\n 가입 환영 마일리지  1,000원 증정!!");
  						
  						location="ShoppingMain.do";
  					} else if( data == "er1" ) {
  						alert("이미 사용중인 아이디 입니다.");
  					} else if( data == "er2" ) {
  						alert("이미 사용중인 닉네임 입니다."); 
  					} else {
  						alert("등록 실패");
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
	var url = "userAddrSearch.do";
	window.open(url,"popup","width=500,height=300");
}
	


function fn_idcheck(userId) {

	
	var msg;
	var len = userId.length;
	if( len < 4 || len > 12 ) {
		msg = "<font color='red'>아이디는 4자~12자 사이로 입력해주세요.</font>";
		$("#idcheck").val("0");
		$("#msg_area").html(msg);
	} else {
		
		$.ajax({
			type : "post",
			data : "userId="+userId,
			url  : "idcheck.do",
			
			datatype : "text",
			success : function(data) {
				if( data == "ok" ) {
					msg="<font color='green'>사용가능한 아이디 입니다.</font>";
				} else if( data == "er1" ) {
					msg="<font color='red'>이미 사용중인 아이디 입니다.</font>";
				} else if( data == "er2") {
					msg="<font color='red'>형식에 맞지 않습니다.</font>";
				} else {
					msg="<font color='red'>전송오류!</font>";
				}
				
				if( data == "ok" ) {
					$("#idcheck").val("1");
				} else {
					$("#idcheck").val("0");
				}
	
				$("#msg_area").html(msg);
			},
			error : function() {
				msg="<font color='red'>설정오류!</font>";
				$("#msg_area").html(msg);
			}
		});
	}
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

    <form name="frm" id="frm" method="post" >
            <input type ="hidden" id="idcheck" name="idcheck" value="N">
            <div class="div1">
					회원가입
			</div>
            <table class ="table1" align="center">
            
			<colgroup>
				<col width ="25%" />
				<col width = "*" />
			</colgroup>
            	<tr>
	            	<th class ="th1"><%=imp %>아이디</th>
	            	
	            	<td class ="td1">
	            	<input  type ="text" 
	            			name ="userId" 
	            			id = "userId"
	            			class="input1"
							autofocus 
							placeholder="아이디입력"
							onkeyup="fn_idcheck(this.value)"
							onchange="document.frm.idcheck.value='N'">
							
	            	<span id="msg_area" style="font-size:12px;">아이디를 입력해주세요.</span>
	            	
	            	
	            	</td>       	
            	</tr>
            	
            	<tr>
	            	<th class ="th1"><%=imp %>비밀번호</th>
	            	<td class ="td1"><input type ="password" id="userPwd" name ="userPwd" class="input1" placeholder="비밀번호 입력"></td>       	
            	</tr>
            	
            	<tr>
	            	<th class ="th1" ><%=imp %>비밀번호 확인</th>
	            	<td class ="td1"><input type ="password" id="userPwd_chk" name ="userPwd_chk" class="input1" ></td>       	
            	</tr>
            	
            	<tr>
	            	<th class ="th1"><%=imp %>이름</th>
	            	<td class ="td1"><input type ="text" id="userName" name ="userName" class="input1" placeholder="이름 입력" ></td>       	
            	</tr>
            	
            	<tr>
	            	<th class ="th1"><%=imp %>닉네임</th>
	            	<td class ="td1"><input type ="text" id="userNickname" name ="userNickname" class="input1" placeholder="닉네임 입력"></td>       	
            	</tr>
            
            	<tr>
	            	<th class ="th1"><%=imp %>휴대폰</th>
	            	<td class ="td1">
						<input type="text" id="userPhone" name="userPhone" class="input1" maxlength="11"> 
						<span style="color:#ccc;font-size:13px;"> ("-")를 제외하고 입력해주세요 ex)01033334444</span>
							
	            	
	            	</td>       	
            	</tr>
            	
            	<tr>
					<th class="th1" style ="line-height:80px">주소</th>
					<td class="td1">
					<input type="text" id="userZipcode" class ="input1" name="userZipcode" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" class="button1" value="우편번호 찾기"><br>
					<input type="text" id="userAddr1" class ="input2" name="userAddr1" placeholder="주소"><br>
					<input type="text" id="userAddr2" class ="input2"  name="userAddr2" placeholder="상세주소">
					<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
					</td>
				</tr>
            	<tr>
	            	<th class ="th1"><%=imp %>이메일</th>
	            	<td class ="td1"><input type ="text" id ="userEmail" name ="userEmail" class="input1" style="width:40%;" placeholder="ex) asdasd@google.com"></td>       	
            	</tr>
            	
            	
            	<tr>
	            	<th class ="th1"><%=imp %>생일</th>
	            	<td class ="td1"><input type ="text" id ="userBirth" name ="userBirth" class="input1" readonly></td>       	
            	</tr>

            
            	<tr>
	            	<th class ="th1"><%=imp %>성별</th>
	            	<td class ="td1">
	             &nbsp;&nbsp;&nbsp;
	            남&nbsp;<input type="radio" id="userGender" name="userGender" value="M" > 
				&nbsp;&nbsp;&nbsp;
				여&nbsp;<input type="radio" id="userGender" name="userGender" value="F"> 
	            	</td>       	
            	</tr>
            	
            	
            </table>
            <div style="margin-top:12px;">
            <input type="submit" value="회원가입"  id="btn_save" class="button1" onclick="return false;">
	
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