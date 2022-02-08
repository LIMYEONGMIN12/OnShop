<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../static/css/index.css">
<link rel="stylesheet" href="../static/css/order.css">
<title>주문내역조회</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
</head>
<script>
$(function() {
    $("#datepicker1,#datepicker2").datepicker({
        showOn: "both",
        buttonImage: "../static/img2/ico_cal.gif",
        buttonImageOnly: true,
        dateFormat: 'yy-mm-dd',
        showOtherMonths: true,
        showMonthAfterYear:true,
        changeYear: true,
        changeMonth: true,
    });
    // $('#datepicker_start').datepicker('setDate', '-7D'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)                           
});
</script>

<body>
    <!-- header -->
    <header>
     	<%@ include file="../include/header.jsp" %>
    </header>
    
    <!-- Section -->
    <section class="order_s">
        <!-- Order -->
        <div class="titleArea">
            <h2>ORDER</h2>
        </div>
        <!-- 우측 상단 부분 -->
        <div class="path">
            <ul>
                <li><a href="../main/index.html">HOME</a></li>
                <li> > </li>
                <li><a href="#">MY PAGE</a></li>
                <li> > </li>
                <li title="현재 위치"><strong>ORDER</strong></li>
            </ul>
        </div>
    </section>

    <!-- 주문내역조회 -->
    <div class="container">
        <ul class="tab_title">
            <li class="on">주문내역조회</li>
        </ul>
        <div class="tab_cont">
            <div class="on">
                <div class="stateSelect">
                    <select id="order_status" name="order_status" class="fSelect">
                        <option value="all">전체 주문처리상태</option>
                        <option value="shipped_before">입금전</option>
                        <option value="shipped_standby">배송준비중</option>
                        <option value="shipped_begin">배송중</option>
                        <option value="shipped_complate">배송완료</option>
                        <option value="order_cancel">취소</option>
                        <option value="order_exchange">교환</option>
                        <option value="order_return">반품</option>
                    </select>
                    <span class="period">
                        <a href="#none" class="btnNormal" days="00"><img src="../static/img2/btn_date1.gif" alt="오늘"/></a>
                        <a href="#none" class="btnNormal" days="07"><img src="../static/img2/btn_date2.gif" alt="1주일"/></a>
                        <a href="#none" class="btnNormal" days="30"><img src="../static/img2/btn_date3.gif" alt="1개월"/></a>
                        <a href="#none" class="btnNormal" days="90"><img src="../static/img2/btn_date4.gif" alt="3개월"/></a>
                        <a href="#none" class="btnNormal" days="180"><img src="../static/img2/btn_date5.gif" alt="6개월"/></a>
                    </span>
                    <input type="text" name="startDate" id="datepicker1" class="datepicker">
                    ~
                    <input type="text" name="endDate" id="datepicker2" class="datepicker2">
                    <input alt="조회" id="order_search_btn" type="image" src="../static/img2/btn_search.gif">                    
                </div>
                <!-- 설명 -->
                <ul class="orderul">
                    <li>기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
                    <li>주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
                    <li class="">취소/교환/반품 신청은 주문완료일 기준 30일까지 가능합니다.</li>
                </ul>

                <!-- 주문 상품 정보 -->
                <div class="title">
                    <h6>주문 상품 정보</h6>
                </div>

                <table>
                    <colgroup>
                    <col style="width:100px;"/>
                    <col style="width:300px;"/>
                    <col style="width:300px;"/>
                    <col style="width:80px;"/>
                    <col style="width:120px;"/>
                    <col style="width:120px;"/>
                    <col style="width:120px;"/>
                    </colgroup>
                <thead>
                    <tr>
                        <th scope="col">주문일자<br/>[주문번호]</th>
                        <th scope="col">이미지</th>
                        <th scope="col">상품정보</th>
                        <th scope="col">수량</th>
                        <th scope="col">상품구매금액</th>
                        <th scope="col">주문처리상태</th>
                        <th scope="col">취소/교환/반품</th>
                    </tr>
                </thead>
                </table>
                <p class="message ">주문 내역이 없습니다.</p>
            </div>
        <div>
    </div>

    <!-- footer -->
    <footer>
		<%@ include file = "../include/footer.jsp" %>
    </footer>
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>    
</body>
</html>