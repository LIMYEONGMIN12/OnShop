<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/user.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	 rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">	
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="/resources/demos/style.css">
  	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
  	
		<script src="../script/jquery-1.12.4.js"></script>
  		<script src="../script/jquery-ui.js"></script>
 
  </head>
  <style>
  .fileinput1 {
	font-size:14px;
	width:270px;
	border:1px solid #ccc;
	height: 30px;
	margin-left:4px;
	margin-bottom:4px;
	margin-top:4px;
}
  
  </style>
<script>
$(function() {
		$("#btn_save").click(function(){ 
			
			if( $("#productId").val() == "" ) {
				alert("상품아이디를 입력해주세요.");
				$("#productId").focus();
				return false;
			}
			
			if( $("#productName").val() == "" ) {
				alert("상품명을 입력해주세요.");
				$("#productName").focus();
				return false;
			}
			
			if( $("#productSize").val() == "" ) {
				alert("사이즈를 입력해주세요 ");
				$("#productSize").focus();
				return false;
			}
			
			
			if( $("#productColor").val() == "" ) {
				alert("색상을 입력해주세요 ");
				$("#productColor").focus();
				return false;
			}
			if( $("#productPrice").val() == "" ) {
				alert("상품가격을 입력해주세요 ");
				$("#productPrice").focus();
				return false;
			}
			if( $("#productStock").val() == "" ) {
				alert("재고를 입력해주세요 ");
				$("#productStock").focus();
				return false;
			}
			if( $("#productExplain").val() == "" ) {
				alert("상품설명을  입력해주세요 ");
				$("#productExplain").focus();
				return false;
			}
			var formdata = new FormData(document.getElementById('frm'));
  			
			$.ajax({
  				type : "post",
  				url  : "ProductWriteSave.do",
  				data : formdata,
  				
  				processData : false,
  				contentType : false,
  				
  				datatype : "text",  // 성공여부 (ok)
  				success : function(data) {
  					if (data == "ok") {
  						alert("저장완료");
  						location="adminIndex.do";
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
function categoryChange(e) {
	var OUTER1 = ["JUMPER", "COAT", "JACKET"];
	var TOP1 = ["T-SHIRTS", "KNIT", "HOODIE"];
	var BOTTOM1 = ["PANTS", "DENIM", "1/2HALF"];
	var SHOES1 = ["SNEAKERS","BOOTS","SANDAL" ];
	var target = document.getElementById("gubun");

	if(e.value == "OUTER") var d = OUTER1;
	else if(e.value == "TOP") var d = TOP1;
	else if(e.value == "BOTTOM") var d = BOTTOM1;
	else if(e.value == "SHOES") var d = SHOES1;
	
	target.options.length = 0;

	for (x in d) {
		var opt = document.createElement("option");
		opt.value = d[x];
		opt.innerHTML = d[x];
		target.appendChild(opt);
	}
}
</script>
<body onload="document.frm.productId.focus()">
<header>
	<%@ include file="../include/header.jsp" %>

</header>


<section>

        <article>
    	<form name="frm" id="frm" enctype="multipart/form-data">

            <div class="div1">
					상품등록
			</div>
			
            <table class ="table1" align="center" style="height:200px;">
            
			<colgroup>
				<col width ="25%" />
				<col width = "*" />
			</colgroup>
            
            <tr>
            	<th class="th1">상품 아이디</th>
           		 <td class="td1"> <input type="text" name="productId" id="productId" class="input1"> </td>
            </tr>
        	  <tr>
            	<th class="th1">카테고리</th>
           		 <td class="td1">
           		
           		 <select name="categoryCode" id="categoryCode" class="input1" onchange="categoryChange(this)">
           		  <option>선택</option>
           		  <option value="OUTER">OUTER </option>
           		 <option value="TOP">TOP</option>
           		 <option value="BOTTOM">BOTTOM</option>
           		 <option value="SHOES">SHOES</option>
           		 </select> 
           		
           		 <select name="gubun" id="gubun" class="input1">
           		<option>-선택-</option>
           		 </select> 
           		 
           		 </td>
           		 
           		 
            </tr>
            
            <tr>
            	<th class="th1">상품 이름</th>
           		 <td class="td1"> <input type="text" name="productName" id="productName" class="input1">  </td>
            </tr>
            <tr>
            	<th class="th1">상품 사이즈</th>
           		 <td class="td1"> <input type="text" name="productSize"  id="productSize" class="input1">  </td>
            </tr>
            <tr>
            	<th class="th1">상품 색상</th>
           		 <td class="td1"> <input type="text" name="productColor" id="productColor" class="input1">  </td>
            </tr>
            
            
            
              <tr>
            	<th class="th1">가격</th>
           		 <td class="td1"><input type="text" name="productPrice" id="productPrice" class="input1"> </td>
            </tr>
            <tr>
            	<th class="th1">재고</th>
           		 <td class="td1"><input type="text" name="productStock" id="productStock" class="input1">개 </td>
            </tr>
             <tr>
            	<th class="th1">상품 설명</th>
           		 <td class="td1">
           		 <textarea class="input1" style="width:400px;height:70px;margin:5px;" name ="productExplain" id="productExplain"></textarea></td>
            </tr>
            
          	<tr>
	  			<th class="th1" rowspan="3">파일</th>
	  			<td class="td1">
		  			<input type="file" name="file1" id="file1" class="fileinput1" > (메인 이미지)<br>
		  			<input type="file" name="file2" id="file2" class="fileinput1"><br>
		  			
	  			</td>
	  		</tr>
			<tr>
	  			
	  			<td class="td1">
		  			<input type="file" name="file3" id="file3" class="fileinput1"> <br>
		  			<input type="file" name="file4" id="file4" class="fileinput1"><br>
		  			
	  			</td>
	  		</tr>
	  		<tr>
	  		
	  			<td class="td1">
		  			<input type="file" name="file3" id="file3" class="fileinput1"> <br>
		  			<input type="file" name="file4" id="file4" class="fileinput1"><br>
		  			
	  			</td>
	  		</tr>
	  		
            </table>
            <div style= "margin-top:12px;" >
            <button type="button"    class="button1" id ="btn_save" onclick= "return false;" >상품등록</button>
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