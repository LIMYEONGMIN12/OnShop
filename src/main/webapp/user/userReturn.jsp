<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교환/반품</title>
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
.th1 {
	border:1px solid #ccc;
	border-left:0px;
	text-align:Center;
	color:#3a3a3a;
	height:35px;
	font-size:12px;
	font-family:'맑은 고딕';
}
.divg {
	font-size:20px;
	font-weight:bold;
	color:#424242;
	line-height:50px;
	margin-bottom:3px;
	
	font-family:'맑은 고딕';
	text-align:center;
}
</style>

<script>
$(function() {
	$("#btn_save").click(function(){  
			if( $("#returnpname").val() == "" ) {
					alert("상품이름을 입력해주세요.");
					$("#returnpname").focus();
					return false;
			}
			if( $("#returnreason").val() == "" ) {
				alert("사유를 입력해주세요.");
				$("#returnreason").focus();
				return false;
			} 

			
			
		 
			var formdata = $("#frm").serialize();

			$.ajax({
				type : "post",
				url  : "returnSave.do",
				data : formdata,
				
				datatype : "text",  // 성공여부 (ok)
				success : function(data) {
					if (data == "ok") {
						alert("신청이 완료 되었습니다.");
						window.close();
					}  else {
						alert("등록 실패");
						window.close();
					}
				},	
				error : function() {
					alert("오류발생"); 
					window.close();
				}
			});
			
			
			
		});
});
	
		
	

</script>

<body>
	<div class="divg" >
	교환 / 반품 신청
	</div>
	<form name="frm" id="frm">
	<input type="hidden" id="returnunq" name="returnunq" value="${vo.unq}">
	<input type="hidden" id="returnid" name="returnid" value="${vo.orderId}"> 
	<table style="border:1px solid #ccc;width:90%;align:center;margin-left:25px;

					">
					 
					<colgroup>
						<col width="20%"/>
						<col width="*"/>
					</colgroup> 
					
	
		<tr>
			<th class="th1">주문목록</th>
			<td class="td1">
				  ${vo.orderPname}
			</td>			
		</tr> 
		<tr>
			<th class="th1">교환 / 반품 선택</th>
			<td class="td1">
				<select id="selectreturn" name="selectreturn" style="border:1px solid #ccc;margin-left:5px;"> 
					 <option value="change">교환</option>
  					  <option value="return">반품</option> 
				 
				</select>
	
			</td>			
		</tr>
		<tr>
			<th class="th1">상품이름</th>
			<td class="td1">
			<input class="input1" type="text" id="returnpname" name="returnpname"  style="border:1px solid #ccc; width:70%;">
			</td>			
		</tr>
		
		<tr>
			<th class="th1">사유</th>
			<td class="td1" style="height:180px;">
			<textarea id="returnreason" name="returnreason" style="border:1px solid #ccc; width:80%;height:150px;margin-left:5px;"></textarea>

			</td>			
		</tr>
		
		
		
	
	
	</table>
		</form>
	<div style="margin-top:12px;text-align:center">
            <input type="submit" value="신청"  id="btn_save" class="button1" onclick="return false;">
	
			<input type="button"  value="취소"  class="button1" onclick="self.close();">
            </div>
	
</body>
</html>