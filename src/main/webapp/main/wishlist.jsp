<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../static/css/index.css">
<link rel="stylesheet" href="../static/css/wishlist.css">
<title>위시리스트</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
</head>
<body>
    <!-- header -->
    <header>
     	<%@ include file="../include/header.jsp" %>
    </header>
    
    <!-- Section -->
    <section class="cart">
        <!-- 쇼핑카트 -->
        <div class="titleArea">
            <h2>WISH LIST</h2>
        </div>
        <!-- 우측 상단 부분 -->
        <div class="path">
            <ul>
                <li><a href="../main/index.html">HOME</a></li>
                <li> > </li>
                <li><a href="#">MY PAGE</a></li>
                <li> > </li>
                <li title="현재 위치"><strong>WISH LIST</strong></li>
            </ul>
        </div>
    </section>
    
    <section class="wishlist">
    <div class="tab_content">
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
                    <td scope="col">수량</td>
                    <td scope="col" class="mileage">적립금</td>
                    <td scope="col">배송구분</td>
                    <td scope="col">배송비</td>
                    <td scope="col">합계</td>
                    <td scope="col">선택</td>
                </tr>
            </thead>

            <!-- 담긴 상품 -->
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

                        <!-- 옵션 변경 -->
                        <select class="op_change">
                            <option>옵션변경</option>
                            <option>[옵션: 베이지/Free]</option>
                            <option>[옵션: 그레이/Free]</option>
                            <option>[옵션: 인디블루/Free]</option>
                        </select>
                    </td>

                    <!-- 판매가 -->
                    <td>
                        <strong>15,900원</strong>
                    </td>

                    <!-- 수량 -->
                    <td>
                        <span class="quantity_btn">
                            <span class="base_qty">
                                <input id="quantity_id_0" name="quantity_name_0" size="2" value="1" type="text"  />
                                <a href="javascript:;" onclick="Basket.addQuantityShortcut('quantity_id_0', 0);">
                                <img src="../static/img2/btn_up.gif" alt="수량증가" class="up"/></a>
                                <a href="javascript:;" onclick="Basket.outQuantityShortcut('quantity_id_0', 0);">
                                <img src="../static/img2/btn_down.gif" alt="수량감소" class="down"/></a>
                            </span>
                            <span class="bt_xsmall"><a href="javascript:;" onclick="Basket.modifyQuantity()">변경</a></span>
                        </span>
                    </td>

                    <!-- 적립금 -->
                    <td>
                        <span class="txtInfo"><input id='product_mileage_all_1072_000F' name='product_mileage_all' value='360' type="hidden" >
                        <img src="../static/img2/product_point.gif" /> 360원</span>
                    </td>

                    <!-- 배송구분 -->
                    <td>
                        <div class="txtInfo">기본배송<br/></div>
                    </td>

                    <!-- 배송비 -->
                    <td rowspan="1" class="">
                        <div class="displaynone">3,000원<br/></div>
                    </td>

                    <!-- 합계 -->
                    <td class="right">
                        <strong>18,900원</strong><div class="displaynone"></div>
                    </td>

                    <!-- 선택 -->
                    <td class="button_bt_small">
                        <button type="button">주문하기</button>
                        <button type="button">장바구니</button>
                        <button type="reset">삭제하기</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </section>

    <!-- 삭제하기, 장바구니 담기 -->
    <section class="select">
        <div class="select_p">
            <ul class="select_box">
                <li><span style="font-size: 12px; font-weight: bold; margin-left: 34px; line-height: 45px;">선택상품을</span></li>
                <li><button type="reset" style="margin-left: 10px;">삭제하기</button></li>
                <li><button type="button">장바구니 담기</button></li>
            </ul>
        </div>

    <!-- 전체상품주문, 관심상품비우기-->
    <div class="all_product">
        <ul class="btn_list">
            <li><button type="button" style="color: white; background-color: rgb(87, 87, 87);">전체상품주문</button></li>
            <li><button type="button">관심상품비우기</button></li>
        </ul>
    </div>
    </section>
    
    <!-- footer -->
    <footer>
		<%@ include file = "../include/footer.jsp" %>
    </footer>
</body>
</html>