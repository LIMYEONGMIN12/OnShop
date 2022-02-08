<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../static/css/index.css">
<link rel="stylesheet" href="../static/css/cart.css">
<title>반품신청</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>

<body>
    <!-- header -->
    <header>
     	<%@ include file="../include/header.jsp" %>
    </header>

    <!-- Section -->
        <section>
        <!-- 우측 상단 부분 -->
        <div class="path">
            <ul>
                <li><a href="../main/index.html">HOME</a></li>
                <li> > </li>
                <li title="현재 위치"><strong>반품 신청</strong></li>
            </ul>
        </div>

        <!-- 쇼핑카트 -->
        <div class="titleArea">
            <h2>반품 신청</h2>
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
                        <table>
                            <colgroup>
                                <col style="width:80px"/>
                                <col style="width:80px"/>
                                <col style="width:1000px"/>
                                <col style="width:100px"/>
                                <col style="width:140px"/>
                                <col style="width:100px"/>
                                <col style="width:110px"/>
                                <col style="width:110px"/>
                                <col style="width:100px"/>
                                <col style="width:150px"/>
                            </colgroup>
                            <thead>
                                <tr style="text-align: center;">
                                    <td scope="col"><input type="checkbox" onclick=""/></td>
                                    <td scope="col">이미지</td>
                                    <td scope="col">상품정보</td>
                                    <td scope="col">판매가</td>
                                    <td scope="col">선택</td>
                                </tr>
                            </thead>

                        <!-- 체크 박스 -->
                        <tbody class="cart_info">
                            <tr class="checkbox">
                                <td>
                                    <input type="checkbox" id="" name=""/>
                                </td>
                                
                                <!-- 이미지 -->
                                <td class="cart_img">
                                    <a href="../main/best1_detail.html">
                                        <img src="../static/img2/best1large.jpg" alt="니트 스웨터"/>
                                    </a>
                                </td>

                                <!-- 상품정보 -->
                                <td class="left_img">
                                    <strong class="name">
                                        <a href="../main/best1_detail.html" class="product-name" >니트 스웨터</a>
                                    </strong><br>
                                    <span>[옵션: 인디블루/Free]</span>
                                </td>

                                <!-- 판매가 -->
                                <td>
                                    <strong>15,900원</strong>
                                </td>

                                <!-- 선택 -->
                                <td class="button_bt_small">
                                    <button type="button">환불 신청</button>
                                    <button type="button">교환 신청</button>
                                </td>
                            </tr>
                        </tbody>
                        </table>
                    </p>
                </div>

                <br>

                <!-- 반품 안내 -->
                <div class="help">
                    <h6>이용안내</h6>
                    <div class="inner">
                        <h5>교환/반품</h5>
                            <ul>
                                <li>교환/반품은 배송완료된 날로부터 7일 이내 가능합니다.</li>
                                <li>환불은 상품 반품절차가 모두 끝난 후 상품 상태를 확인한 후에 이상이 없는 경우에 진행됩니다.</li>
                                <li>교환은 기존 구매한 상품을 수거하고 상품 이상 유무를 확인한 뒤 교환 받으실 상품을 발송해 드립니다.</li>
                                <li>쿠폰 및 적립금 사용 여부에 따라 취소/반품 신청하신 상품의 판매가보다 환불 금액이 적을 수 있습니다.</li>
                                <li>고객님의 단순변심 사유로 인한 반품 시, 배송비가 발생하는 경우에는 결제금액에서 배송비를 차감한 금액을 환불해 드립니다. 만약 결제한 금액보다 차감되어야 할 배송비가 더 큰 경우 배송비를 입금해주셔야 반품이 진행됩니다.</li>
                                <li>당사의 실수로 발생한 오배송, 상품불량은 별도 비용없이 상품을 재발송 해드립니다.</li>
                            </ul>
                            <br>
                        <h5>교환/반품이 불가능한 경우</h5>
                            <ul>
                                <li>고객님의 부주의로 상품이 파손되거나 분실한 경우</li>
                                <li>시간이 지나 다시 판매하기 곤란할 정도로 상품가치가 떨어진 경우</li>
                                <li>포장이 훼손되어 상품 가치가 떨어진 경우</li>
                            </ul>
                            <br>
						<h5>교환/반품 배송비</h5>
                            <ul>
                                <li>고객님의 단순 변심으로 인한 교환/반품은 배송비가 발생합니다.</li>
                                <li>단순 변심에 의한 교환/반품의 경우 결제금액이 무료배송 금액기준에 충족되지 않으면, 반품/교환 배송비 외에도 최초 배송비가 추가로 발생합니다.</li>
                                <li>편도 기준 배송비용은 2,500원 입니다.</li>
                            </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
                                
		
        	
        
        
        
        
        
</body>
</html>