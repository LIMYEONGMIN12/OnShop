
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
<title>장바구니</title>
<link rel="stylesheet" href="css/cart.css">
<link rel="stylesheet" href="css/index.css">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>


		<script src="../script/jquery-1.12.4.js"></script>
  		<script src="../script/jquery-ui.js"></script>
</head>
<style>
.btn_s{


display: flex;
  width: 80px;
  height: 43px;
  background-color: white;
  margin-bottom: 1px;
  margin-left: 15px;
  padding-left: 16px;
  line-height: 35px;border:2px solid #99B5CF;
}
</style>
<script>






</script>



<script>
function fn_reset(userId) {
	
		if( confirm("장바구니를 비우시겠습니까?") ) {
			$.ajax({
				type : "post",
				url  : "cartReset.do",
				data : "cartuserId="+userId,
				datatype : "text",
				success  : function(data){
						if(data == "ok") {
							
						} else {
							alert("비우기 실패");
						}
						document.location.reload();
				},
				error    : function() {
						alert("오류");
				}
			});
		}
	}
		
		



</script>


<script>
function fn_delete(unq) {
	
	if( confirm("삭제 하시겠습니까?") ) {
		$.ajax({
			type : "post",
			url  : "cartDelete.do",
			data : "unq="+unq,
			datatype : "text",
			success  : function(data){
					if(data == "ok") {
						
					} else {
						alert("하였습니다.");
					}
					document.location.reload();
			},
			error    : function() {
					alert("오류");
			}
		});
	}
}

$(function(){
	$("input:checkbox[name='chk']").prop("checked",true);
	$("input:checkbox[name='allchk']").prop("checked",true);
		
	$("#allchk").click(function() {
		var ret = document.getElementById("allchk").checked;
		var len = document.getElementsByName("chk").length;
		for(var i=0; i<len; i++) {
			document.getElementsByName("chk")[i].checked = ret;
		}
	});
	
	$("#btn_all_delete").click(function(){
		
		var count = 0;
		var datas = "";
		var len = document.getElementsByName("chk").length;
		
		for(var i=0; i<len; i++) {
			var ret = document.getElementsByName("chk")[i].checked;
			if(ret == true) {
				datas += document.getElementsByName("chk")[i].value;
				datas += ",";
				count++;
			}
		}
		//alert(datas);
		if( count <= 0 ) {
			alert("삭제 데이터를 체크해주세요.");
			return false;
		}
		
		$.ajax({
			type : "post",
			url  : "cartAllDelete.do",
			data : "datas="+datas,
			datatype : "text",
			success  : function(data){
					if(data > 0) {
						alert( data + "건 삭제 하였습니다.");
					} else {
						alert("삭제 (실패)하였습니다.");
					}
					document.location.reload();
			},
			error    : function() {
					alert("오류 ~");
			}
		});
	});	
});

</script>
<script>
function fn_plus(unq) {

	
	$.ajax({
		type : "post",
		url  : "plusPcount.do",
		data : "unq="+unq,
		datatype : "text",
		success  : function(data){
				if(data == "ok") {
					
				} else {
					alert("실패");
				}
				document.location.reload();
		},
		error    : function() {
				alert("오류 ~");
		}
	});
	  
}
function fn_minus(unq) {
	

	$.ajax({
		type : "post",
		url  : "minusPcount.do",
		data : "unq="+unq,
		datatype : "text",
		success  : function(data){
				if(data == "ok") {
					
				} else {
					alert("실패");
				}
				document.location.reload();
		},
		error    : function() {
				alert("오류 ~");
		}
	});
	  
}
</script>
<script>
$(function(){

	
	$("#btn_order").click(function(){
		
		var count = 0;
		var dataz = "";
		var len = document.getElementsByName("chk").length;
		
		for(var i=0; i<len; i++) {
			var ret = document.getElementsByName("chk")[i].checked;
			if(ret == true) {
				dataz += document.getElementsByName("chk")[i].value;
				dataz += ",";
				count++;
			}
		}
		
		var dataza = dataz.substring(0,dataz.length-1);
		
		
		
		if( count <= 0 ) {
			alert("주문할 품목을 체크해주세요.");
			return false;
		}
		
		location.href="userOrder.do?cartuserId=${uvo.userId}&type2=a&dataz="+dataza;
	});	
});

</script>


<body>
    <!-- header -->
    <header>
     	<%@ include file="../include/header.jsp" %>
    </header>

    <!-- Section -->
    <section>

    <form name="frm" id="frm">
    
          
          <input type="hidden" id="bseq_ea" name="bseq_ea" value="7">

              
    
    
        <!-- 우측 상단 부분 -->
        <div class="path">
            <ul>
                <li><a href="../main/index.html">HOME</a></li>
                <li> > </li>
                <li title="현재 위치"><strong>SHOPPING CART</strong></li>
            </ul>
        </div>

        <!-- 쇼핑카트 -->
        <div class="titleArea">
            <h2>SHOPPING CART</h2>
        </div>

        <!-- 혜택 정보 -->
        <div class="description">
            <div class="member">
                <span>혜택정보 </span>
                <p><strong>${uvo.userNickname }</strong> 님은, [${uvo.userGrade }] 입니다.</p>
            </div>

            <ul class="mileage">
                <li><a href="#">가용적립금</a> : <strong>${mileage}원</strong></li>
<!--                 <li><a href="#">쿠폰</a> : <strong>0개</strong></a></li> -->
            </ul>
        </div>

        <!-- 국내배송상품 -->
        <div class="container">
            <div class="row">
                <div class="col">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#qwe">국내배송상품</a>
                        </li>
                    </ul>
            <!-- 일반상품 -->

            <div class="tab_content">
                <div class="tab-pane fade show active" id="qwe">
                    <h3>일반상품</h3>
                    <p>
                        <table style="width:1110px">
                            <colgroup>
                               	  <col width="5%"/>
                                  <col width="15%"/>
                                  <col width="30%"/>
                                  <col width="10%"/>
                                  <col width="10%"/>
                                  <col width="10%"/>
                                  <col width="10%"/>
                                  <col width="10%"/>
                               
                            </colgroup>
                            <thead>
                                <tr style="text-align: center;border-bottom:1px solid #ccc;">
                                    <td  ><input type="checkbox" name="allchk" id="allchk"/></td>
                                    <td  >이미지</td>
                                    <td  >상품정보</td>
                                 
                                    <td  >판매가</td>
                                    <td  >수량</td>
                                    <td   class="mileage">적립금</td>
                                   
                                    <td  >총판매가</td>
                                    <td  >선택</td>
                                </tr>

                            </thead>
                        <!-- 체크 박스 -->
                         <c:forEach  var="result" items="${list}">
                   
                            <tr class="checkbox" style="border-bottom:1px solid #ccc;line-height:100px;" >
                                <td style="text-align:center;" >
                                    <input type="checkbox" id="chk" name="chk" value="${result.unq }"/>
                                    
                                </td>
                                
                                <!-- 이미지 -->
                                <td class="cart_img">
                             
                                    <a href="#">
                                        <img src="upload/${result.filename}" width='80px' height='80px' />
                                    </a>
                                </td>

                                <!-- 상품정보 -->
                                <td class="left_img">
                                    <strong class="name">
                                        <a href="#" class="product-name" >
                                        ${result.productname } / ${result.productsize } / ${result.productcolor }
                                       
                                        </a>
                                    </strong><br>
                                  

                                </td>
     					 <td class="right" style="text-align:center">
                                    <strong>${result.productprice} 원</strong><div class="displaynone"></div>
                                </td>
                		 
                            

                                <!-- 수량 -->
                      
                            
     <td>
     
     
        <button type ="button" onclick="fn_plus('${result.unq}')"  style="float:right;text-align:center;line-height:100%;width:25px;height:25px;border:1px solid #ccc;">+</button>
        <button type="button" onclick="fn_minus('${result.unq}')" style="float:right;text-align:center;line-height:100%;width:25px;height:25px;border:1px solid #ccc;">-</button>
        <input type="text" name="pop_out" id="counts" value="${result.count }" readonly="readonly" style="float:right;text-align:center;width:25px;height:25px;margin-right:2px;"/>
    </td>
                                
                	
	
                                <!-- 적립금 -->
                                <td style="text-align:center">
                                    <span class="txtInfo"><input id='product_mileage_all_1072_000F' name='product_mileage_all' value='360' type="hidden" >
                                    <img src="images/img2/product_point.gif" /> 360원</span>
                                </td>

                        

                                

                                <!-- 총 판매가 -->
                                 <td class="right" style="text-align:center">
                            
                                    <strong>
                                   
                                  ${result.phap}원 </strong><div class="displaynone"></div> 
                                </td>

                                <!-- 선택 -->
                                <td class="button_bt_small" style="text-align:center"> 
                                    <button type="button" class="btn_s"
                                    					
                                    					 onclick="location.href='/userOrder.do?cartuserId=${uvo.userId }&userId=${uvo.userId}&cartproductUnq=${result.cartproductunq}&type=a'">주문하기</button>
                                    
                                    
                                    
                                    
                                    <button type="button" style="border:2px solid #99B5CF;" onclick="javascript:fn_delete('${result.unq}')">상품삭제</button>
								
                                </td> 
                            </tr>

                        </c:forEach>
                        </table>
                    </p>
                </div>

                <br>

                <!-- [기본배송] -->
                <div class="tab_content2">
                    <ul class="normal">
                        <li>[기본배송]</li>
                         <c:set var="totalprice" value="${totalprice }" />
                          <c:set var="hapPrice" value="${hapPrice }" />
                        <li style="position: relative; top: -5px; margin-right: 7px;">상품구매금액 ${totalprice }원+배송비 3,000원 = 합계:&nbsp;&nbsp;<span style="font-size: 20px; font-weight: bold;">${hapPrice }원</span></li>
                    </ul>
                </div>

                <!-- 선택상품을 삭제하기, 장바구니 비우기, 견적서 출력 -->
                <div class="select">
                    <ul class="select_box">
                        <li><span style="position: relative; top: 10px; font-weight: bold;v">선택상품을</span></li>
                        <li style="position: relative; left: -250px;"><button type="reset" id="btn_all_delete" style="background-color: rgb(153, 153, 153); color: white;border:1px solid #ccc">삭제하기</button></li>
                        <li style="position: relative; right: -256px;">
                        
                        <button type="button" id= "reset_cart"
                        	onclick="javascript:fn_reset('${uvo.userId}')"
                         style="width: 100px;border:2px solid #99B5CF">
                        	
                        	장바구니 비우기</button></li>
                        <li><button type="button" style="border:2px solid #99B5CF;">견적서 출력</button></li>
                    </ul>
                </div>

                <!-- 총 상품금액, 총 배송비, 결제예정금액 -->
                <div class="all_amount">
                    <ul class="amount_info">
                        <li style="position: relative; left: 35px;">총 상품금액</li>
                        <li style="position: relative; left: -200px;">총 배송비</li>
                        <li style="position: relative; right: 260px;">결제예정금액</li>
                    </ul>
                    <ul class="amount">
                   
                        <li style="position: relative; left: 10px;">${totalprice}</li>
                        <li style="position: relative; left: -200px;">+ 3,000원</li>
                        
              
                       
                        <li style="position: relative; right: 240px;">=${hapPrice }원</li>
                    </ul>
                </div>

                <!-- 전체상품주문, 선택상품주문, 쇼핑 계속하기-->
                <div class="all_btn">
                    <ul class="btn_list">
                        <li>
                        <button type="button" 
                        style="margin-right:3px; 
                        		background-color: rgb(59, 59, 59);
                        		 color: white;
                        		 border:1px solid rgb(59, 59, 59);
                        		 "
                        		 
                        		 onclick="location.href='/userOrder.do?cartuserId=${uvo.userId }&userId=${uvo.userId}'"
                        		 
                        		 >전체상품주문 </button>
                        
                        </li>
                        <li><button type="button" id="btn_order" style="background-color: rgb(134, 134, 134); color: white;
                        											border:none;">선택상품주문</button></li>
                        <li style="position: relative; right: -290px;"><button type="button" style="border:2px solid #99B5CF;background-color:white;" onclick="location.href='/ShoppingMain.do'" >쇼핑 계속하기</button></li>
                    </ul>
                </div>

                <!-- 이용안내 -->
                <div class="help">
                    <h6>이용안내</h6>
                    <div class="inner">
                        <h6>장바구니 이용안내</h6>
                            <ol>
                                <li class="item1">해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로 결제해 주시기 바랍니다.</li>
                                <li class="item2">해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로 이동하여 결제하실 수 있습니다.</li>
                                <li class="item3">선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.</li>
                                <li class="item4">[쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.</li>
                                <li class="item5">장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.</li>
                                <li class="item6">파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로 교체됩니다.</li>
                            </ol>
                        <h6>무이자할부 이용안내</h6>
                            <ol>
                                <li class="item1">상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기] 버튼을 눌러 주문/결제 하시면 됩니다.</li>
                                <li class="item2">[전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대한 주문/결제가 이루어집니다.</li>
                                <li class="item3">단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수 없습니다.</li>
                            </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
  </form>		
</section>

    <!-- footer -->
    <footer>
		<%@ include file = "../include/footer.jsp" %>
    </footer>

    
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>