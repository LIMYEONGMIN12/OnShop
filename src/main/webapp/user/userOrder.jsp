<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon.jsp" %>
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
<link rel="stylesheet" href="css/ordert.css">

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
$(function() {

	
	
	$("#btn_save").click(function(){  
	
		if( $("#orderName").val() == "" ) {
			alert("수령자 이름을 입력해주세요.");
			$("#orderName").focus();
			return false;
		}
		if( $("#orderPhone").val() == "" ) {
			alert("수령자 휴대폰을 입력해주세요.");
			$("#orderPhone").focus();
			return false;
		}
		if( $("#orderZipcode").val() == "" ) {
			alert("수령자 주소를 입력해주세요.");
			$("#orderZipcode").focus();
			return false;
		}
		if( $("#orderAddr1").val() == "" ) {
			alert("수령자 주소를 입력해주세요.");
			$("#orderAddr1").focus();
			return false;
		}if( $("#orderAddr2").val() == "" ) {
			alert("수령자 주소를 입력해주세요.");
			$("#orderAddr2").focus();
			return false;
		}
		
		
		
		var formdata = $("#frm").serialize();

			$.ajax({
				type : "post",
				url  : "OrderSave.do",
				data : formdata,
				
				datatype : "text",  // 성공여부 (ok)
				success : function(data) {
					if (data == "ok") {
						alert("결제창으로 이동합니다");
						location="orderPayment.do";
					} else {
						alert("주문 실패");
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
            document.getElementById('orderZipcode').value = data.zonecode;
            document.getElementById("orderAddr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("orderAddr2").focus();
        }
    }).open();
}







</script>



<script>
$(function(){

	$('input.num_only').on('keyup',function(){
	          var cnt = $(".exam input.num_sum").length;     
	          console.log(cnt);
	          
	  for( var i=1; i< cnt; i++){
	     var sum = parseInt($(this).val() || 0 );
	     sum++
	    console.log(sum);
	  }
	  
	            var sum1 = parseInt($("#fn_type1_price").val() || 0);  
	            var sum2 = parseInt($("#userMileage").val() || 0);
	        	if(sum2 >  ${uvo.userMileage} ){
					alert("사용가능한  최대 금액은 "+ ${uvo.userMileage}+"원 입니다. ")
					sum2 =  ${uvo.userMileage};
	        		
	        	} 
				
	            var sum = sum1 - sum2 ;
	            console.log(sum);
	            $("#orderPrice").val(sum);
	        });


	 
	});

</script>
<script>

</script>
<body>

<header>
	<%@ include file="../include/header.jsp" %>

</header>


<section>

      <div>
    <form name="frm" id="frm"  >
   			<input type="hidden" id="orderId" name="orderId" value="${uvo.userId }">
            <div class="div1">
					Order / Payment 
			</div>
			<span style="color:#ccc;float:left;margin-left:300px;">수령자 정보</span>
            <table class ="table_order" align="center">
            
			<colgroup>
				<col width ="25%" />
				<col width = "*" />
			</colgroup>
           
            	
            	<tr>
	            	<th class ="th1">수령인</th>
	            	<td class ="td1">
	            	
	            	<input type ="text" id="orderName" 
	            						name ="orderName" 
	            						class="input1" 
	            						placeholder="이름 입력"
	            						value="${uvo.userName }" >
	            
	            	
	            	</td>       	
            	</tr>
            
            	
            	<tr>
	            	<th class ="th1">휴대폰</th>
	            	<td class ="td1">
						<input type="text" id="orderPhone" name="orderPhone" class="input1" maxlength="11" value="${uvo.userPhone}" > 
						<span style="color:#ccc;font-size:13px;"> ("-")를 제외하고 입력해주세요 ex)01033334444</span>
							
	            	
	            	</td>       	
            	</tr>
            	
           	 	<tr>
					<th class="th1" style ="line-height:80px;">배송지 주소</th>
					<td class="td1">
					<input type="text" id="orderZipcode" class ="input1" name="orderZipcode"   value="${uvo.userZipcode }" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" class="button1" style="width:150px;" value="배송지 변경하기"><br>
					<input type="text" id="orderAddr1" name="orderAddr1" class ="input2" style="width:500px;" name="userAddr1"  value="${uvo.userAddr1 }" placeholder="주소"><br>
					<input type="text" id="orderAddr2" name="orderAddr2" class ="input2" style="width:500px;"  name="userAddr2" value="${uvo.userAddr2 }" placeholder="상세주소">
					
					<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
					</td>
				</tr>
            	
            	  	<tr>
	            	<th class ="th1">배송 메모</th>
	            	<td class ="td1">
						<select name="orderMemo" id="orderMemo" class="input1" style="width:300px;">
							<option value="상관없음">배송시 요청사항을 선택해주세요.</option>
							<option value="부재시 경비실에 맡겨주세요.">부재시 경비실에 맡겨주세요.</option>
							<option value="배송전 연락바랍니다.">배송전 연락바랍니다.</option>
							<option value="파손 주의해주세요.">파손 주의해주세요.</option>	
	            		</select>
	            	</td>       	
            	</tr>
            </table>
            	
            <div class="div1">
					Product Info
			</div>
            	
              <table style="width:1300px"  align="center">
                            <colgroup>
                            
                                 <col width="15%"/>
                                  <col width="*"/>
                                     <col width="15%"/>
                                   <col width="15%"/>
                                    
                                     <col width="15%"/>
                                     
                               
                            </colgroup>
                            <thead>
                                <tr style="text-align: center;border-bottom:1px solid #ccc;">
                                
                                    <td  >이미지</td>
                                    <td  >상품정보</td>
                                    <td  >수량</td>
                                    <td   class="mileage">적립금액</td>
                                    <td  >주문금액</td>
                        
                                </tr>

                            </thead>
                       
                     <c:forEach  var="result" items="${list}">
                    
                   			<input type="hidden" value="${result.cartproductunq}" id="orderPunq" name="orderPunq">
                            <input type="hidden" value="${result.count}" id="orderPcount" name="orderPcount">
                            <input type="hidden" value="${result.filename}" id="orderPfile" name="orderPfile">
                            <input type="hidden" value="${result.productname }"     id="orderPname" name="orderPname">    
                            <input type="hidden" value="${result.productprice2 }"     id="orderPonePrice" name="orderPonePrice">  
                              
                            <tr class="checkbox" style="border-bottom:1px solid #ccc;line-height:100px;" >
                              
                                
                                <!-- 이미지 -->
                                <td class="cart_img" style="text-align:center;" >
                                    <a href="#" >
                                        <img src="upload/${result.filename}" width='80px' height='80px' />
                                    </a>
                                </td>
                             

                                <!-- 상품정보 -->
                                <td class="left_img" style="text-align:center;">
                                    <strong class="name">
                                        <a href="#" class="product-name" >
                                        ${result.productname } / ${result.productsize } / ${result.productcolor }
                                       
                                        </a>
                                    </strong><br>
                                  <!-- 수량 -->
                                </td>
     					 			<td class="right" style="text-align:center">
                                    <strong>${result.count }개</strong><div class="displaynone"></div>
                                </td>
                                  
                                  
                                  
                                  
								<!-- 마일리지 -->
                                
     					 			<td class="right" style="text-align:center">
                                    <strong>${result.pmile}원</strong><div class="displaynone"></div>
                                </td> 
                                
                                
     					 			<td class="right" style="text-align:center">
                                    <strong>${result.phap}원</strong><div class="displaynone"></div>
                                </td> 
                		 
            					</tr>
            					</c:forEach>
            					
            					</table>
            
          
			
			
			
			  <div class="div1">
					Mileage / Discount
			</div>
			<span style="color:#ccc;float:left;margin-left:300px;">마일리지</span>
            <table class ="table_order2" align="center">
            
			<colgroup>
				<col width ="25%" />
				<col width = "*" />
			</colgroup>
           
            	
            	<tr>
	            	<th class ="th1">상품 금액</th>
	            	<td class ="td1">
					    <strong style="margin-left:30px;"> ${hapPrice }원</strong>    &nbsp;&nbsp;&nbsp;&nbsp;  (총 상품 금액 : ${totalprice} 원 + 배송비 3,000원 )
				
				<input type="hidden"  id="fn_type1_price" name="fn_type1_price" value="${hap}" placeholder="">
				
				
					</td>	            	
            	</tr>
            
            	
            	<tr>
	            	<th class ="th1">적립금 사용 </th>
	            	<td class ="td1">

							<input type="text" class="form-control num_only num_comma num_sum" id="userMileage" name="userMileage" 
							style="width:150px;margin-left:20px;"
							value="" placeholder="">
								<span style="margin-left:20px;"> 보유 적립금 : ${uvo.userMileage}원 </span>
				
	            	</td>       	
            	</tr>
            	
           	 	<tr>
					<th class="th1" >결제 금액</th>
					<td class="td1">
					
				 <input type="text" class="form-control text-right font-weight-bold num_only num_comma num_sum" 
				 					style="width:150px;margin-left:20px;"
				 				id="orderPrice" name="orderPrice" value="" placeholder="">
					</td>
				</tr>
            	
            	
            </table>
            	
            
            
              <div style="margin-top:50px;text-align:center;margin-bottom:100px;">
            <input type="submit" value="결제"  id="btn_save" class="button2" onclick="return false;">
			<input type="button"  value="취소"  class="button2" onclick="history.back();">
            </div>
          <input type="hidden" value="${totalMileage}"  id="totalMileage" name="totalMileage">   
	</form>
      </div>
</section>

<footer>
	<%@ include file="../include/footer.jsp" %>

</footer>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</body>
</html>