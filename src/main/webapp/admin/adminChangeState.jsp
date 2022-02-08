<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상태</title>
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
		
			
		 
			var formdata = $("#frm").serialize();

			$.ajax({
				type : "post",
				url  : "orderUpdateState.do",
				data : formdata,
				
				datatype : "text",  // 성공여부 (ok)
				success : function(data) {
					if (data == "ok") {
						alert("변경 되었습니다.");
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
<script>
$(function(){

    //직접입력 인풋박스 기존에는 숨어있다가

$("#selboxDirect").hide();



$("#orderStatus").change(function() {

		

              //직접입력을 누를 때 나타남

		if($("#orderStatus").val() == "k") {

			$("#selboxDirect").show();

		}  else {

			$("#selboxDirect").hide();

		}
 
		

	}) 

	

});
</script>
<body>
	<div class="divg" >
  	 상태 변경
	</div>
	<form name="frm" id="frm">


	<table style="border:1px solid #ccc;width:90%;align:center;margin-left:25px;

					">
					 
					<colgroup>
						<col width="20%"/>
						<col width="*"/>
					</colgroup> 
					
	
		
		<tr>
			<th class="th1">상태 변경 </th>
			<td class="td1">
				<select id="orderStatus" name="orderStatus" style="border:1px solid #ccc;margin-left:5px;width:50%" onchange="categoryChange(this)"> 
  					 	<option value="y">배송준비중</option>
						<option value="k">배송중</option>	
  					    <option value="e">배송완료</option> 
  					    <option value="re">환불 처리 완료</option> 
  					      <option value="c">교환 처리 완료</option> 
				</select>
  					       
				 
	
			</td>			
		</tr>
		
		<tr>
			<th class="th1">운송장번호</th>
			<td class="td1">
				<input type="text" id="selboxDirect" name="selboxDirect" class="input1" style="width:50%"/>
				
			</td>			
		</tr> 
		
		
		
	
	
	</table>
		<input type="hidden" id="unq" name="unq" value="${vo.unq }">
		</form>
	<div style="margin-top:12px;text-align:center">
            <input type="submit" value="변경"  id="btn_save" class="button1" onclick="return false;">
	
			<input type="button"  value="취소"  class="button1" onclick="self.close();">
            </div>
	
</body>
</html>