<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/loginCertify.jsp" %>
 <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



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

	
function fn_popup(){
	var url = "userAddrSearch.do";
	window.open(url,"popup","width=500,height=300");
}

$(function() {

	$("#btn_save").click(function(){  
	
		if( $("#userZipcode").val() == "" ) {
			alert("변경할 우편번호를 입력해주세요.");
			$("#userZipcode").focus();
			return false;
		}
		if( $("#userAddr1").val() == "" ) {
			alert("변경할 주소를 입력해주세요.");
			$("#userAddr1").focus();
			return false;
		}
		if( $("#userAddr2").val() == "" ) {
			alert("변경할 상세주소를 입력해주세요.");
			$("#userAddr2").focus();
			return false;
		}

		var formdata = $("#frm").serialize();

		$.ajax({
			type : "post",
			url  : "userAddrChangeSave.do",
			data : formdata,
			
			datatype : "text",  // 성공여부 (ok)
			success : function(data) {
				if (data == "ok") {
					alert("변경 완료 되었습니다.");
					location="ShoppingMypage.do";

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
<style>
.table_addr {
	width:1000px;
	float:center;
	border-collapse:collapse;
	margin-top:30px;
	height:200px;
	margin-bottom:15px;
}
 @font-face{
	font-family : Indie Flower;
	src: url('/fonts/IndieFlower-Regular.ttf') format('truetype');
	
} 	
/* userAddrChangeSave.do */
</style>
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
  		Change Address
  		</strong>
  	</div>  
 
<section>

        <article>
    <form name="frm" id="frm" >
        <input type ="hidden" id="userId" name="userId" value="${vo.userId }">
       
            <table class ="table_addr" align="center">
            <colgroup>
				<col width ="25%" />
				<col width = "*" />
			</colgroup>
			
            	
            	<tr>
					<th class="th1" style ="line-height:80px;font-size:15px;font-family:'맑은 고딕';">현재 주소</th>
					<td class="td1">
					<input type="text"  class="input1" style="width:70px;" maxlength="6" value="${vo.userZipcode }" readonly>
					<div></div>
					<input type="text"  class="input2" value="${vo.userAddr1 }" readonly> 
					<input type="text"  class="input2" value="${vo.userAddr2 }" readonly>
					</td>
				</tr>
			  </table>	
			  
			     <table class ="table_addr" align="center" style="margin-top:80px;">
            <colgroup>
				<col width ="25%" />
				<col width = "*" />
			</colgroup>
				<tr>
					<th class="th1" style ="line-height:80px;font-size:15px;font-family:'맑은 고딕';">변경할 주소</th>
					<td class="td1">
				
					
					
					<input type="text" id="userZipcode" class ="input1" name="userZipcode" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" class="button1" value="우편번호 찾기"><br>
					<input type="text" id="userAddr1" class ="input2" name="userAddr1" placeholder="주소"><br>
					<input type="text" id="userAddr2" class ="input2"  name="userAddr2" placeholder="상세주소">
					<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
					
					
					
					</td>
				</tr>
         
            </table>
            	
            	
            	
            <div style="margin-top:12px;">
            <input type="submit" value="변경"   class="button1" id="btn_save" onclick="return false;">
	
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