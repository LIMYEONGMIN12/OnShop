<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../static/css/index.css">
<link rel="stylesheet" href="../static/css/main.css">
<link rel="stylesheet" href="../static/css/best4_detail.css">
<title>Shoes - MARKET</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
</head>
<body>
    <!-- header -->
    <header>
     	<%@ include file="../include/header.jsp" %>
    </header>
    
    <!-- section -->
    <section class="detail_section">
        <div class="detail_main_image">
            <img src="../static/img2/best4large.jpg" />
        </div>
        <div class="detail_info">
            <h3>
                <img src="../static/img2/custom1.gif" alt="">
                <img src="../static/img2/custom5.gif" alt="">
                <img src="../static/img2/custom3.gif" alt="">
                <br>신발
            </h3>
            <div class="price_box" style="border-bottom:1px solid #eee; padding-bottom:30px; margin-bottom:20px;">
                <span class="p1"><em>24</em>%</span>
                <span class="p2" style="font-size: 14px;">21,000원</span>
                <span class="p3">15,900원</span>
            </div>
            
            <div class="points">
                <div class="box">
                    <div class="points_title">MARKET 회원만을 위한 포인트 혜택<br></div>
                    <div class="points_info">
                        <div class="points_a">최대 적립 포인트<span style="margin-left: 117px; font-size: 11px;">5,370원</span></div>
                        <div class="points_b">└ 기본적립<span style="margin-left: 151px; font-size: 10px;">1,590원</span></div>
                    </div>
                    <div class="box_in_box">
                        <div class="points_tip">
                            <div class="points_c">
                                <span style="color: #f54242"><i>TIP</i></span>.&nbsp;  포인트 더 받는 방법
                                <span style="margin-left: 28px; font-size: 11px; font-weight: bold;">+ 최대 19,140원</span>
                            </div>
                            <div class="naver_points">
                                <div class="img1">
                                    <img src="../static/img2/naver_member.png" alt=""><span style="font-size: 7px;"><u>최대 5% 적립, 무료 시작 ></u></span>
                                    <span style="margin-left: 28px; font-size: 7px;">6,960원</span>
                                </div>
                                <div class="img2">
                                    <img src="../static/img2/naver_member.png" alt=""><span style="font-size: 7px;"><u>최대 5% 적립, 무료 시작 ></u></span>
                                    <span style="margin-left: 28px; font-size: 7px;">8,700원</span>
                                </div>
                                <div class="img3">
                                    <img src="../static/img2/naver_points.png" alt=""><span style="font-size: 7px;"><u>최대 5% 적립, 무료 시작 ></u></span>
                                    <span style="margin-left: 28px; font-size: 7px; padding-left: 5px;">3,480원</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="color_size">색상 : 사이즈</div>
                <div class="txt">
                    <select name="op1" onchange="GoodsProc.set_opt2();" style='width: 100%;' data-goods_idx="126073" class="view_select_box">
                        <option value="">--필수 선택</option>
                            <option data-opname="신발 : 250mm" data-ispluslimit="0" class="todayDeliv" value="">신발 : 250mm</option>
                            <option data-opname="신발 : 255mm" data-ispluslimit="0" class="todayDeliv" value="">신발 : 255mm</option>
                            <option data-opname="신발 : 260mm" data-ispluslimit="0" class="todayDeliv" value="">신발 : 260mm</option>
                            <option data-opname="신발 : 265mm" data-ispluslimit="0" class="todayDeliv" value="">신발 : 265mm</option>
                            <option data-opname="신발 : 270mm" data-ispluslimit="0" class="todayDeliv" value="">신발 : 270mm</option>
                            <option data-opname="신발 : 275mm" data-ispluslimit="0" class="todayDeliv" value="">신발 : 275mm</option>
                            <option data-opname="신발 : 280mm" data-ispluslimit="0" class="todayDeliv" value="">신발 : 280mm</option>
                    </select>
            </div>

            <div class="detail_info_footer">
                <button class="shopping_cart" value="">장바구니</button>
                <button class="buy_item" value="">구매하기</button>
            </div>
        </section>

    <section>
        <div class = "detail_header">
            <h3>상세정보</h3>
        </div>
        <div class="detail_info_detail">
            <img src="../static/img2/detailCollage4.jpg" alt="">
        </div>
    </section>

    <!-- 상품 구매 가이드 -->
    <section>
        <div class = "shopping_info">
            <h3>쇼핑안내</h3>
        </div>

        <div class="shopping_guide">
            <div class="delivery_guide">
                <div class="guide_info">배송안내</div>
            </div>
            <div class="inner">
                <div>
                배송업체 : CJ대한통운(1588-1255)<br>
                배송지역 : 전국 (해외배송불가)<br>
                배송비용 : 2,500원 / 50,000원 이상 구매시 무료배송<br>
                배송기간 : 2일-7일(지연발생시 1-2주 소요)
                </div>
                <div>
                - 주문일기준 3일 이상 발송이 지연된 경우 먼저 준비된 상품부터 선발송 해드립니다.<br>
                - 부분배송을 원하지 않으시면 게시판이나 고객센터로 연락부탁드립니다.<br>
                - 공급처 사정으로 인한 입고지연 및 품절이 발생할 수 있습니다.<br>
                - 배송지연 및 품절시 개별연락드리겠습니다.<br>
                - 슈즈, 잡화의 경우 물량확보 상황에 따라 일정 변동 및 추가 준비기간이 소요될 수 있습니다.
                </div>
            </div>

            <div class="exchange_guide">
                <div class="guide_info">교환&반품안내</div>
            </div>
            <div class="inner">
                <div>
                - 상품 수령 후 7일이내 교환/반품 신청 또는 게시판(Q＆A),<br>
                &nbsp;&nbsp;고객센터(1644-3662)로 접수부탁드립니다.<br>
                - 마이페이지 주문조회 상세에서 교환/반품 신청가능합니다.<br>
                - 지정된 택배사 반품을 누르시면 CJ대한통운 으로 회수접수 가능합니다.<br>
                - 단순교환 5,000원 / 일부반품 2,500원 / 전체반품 5,000원의 배송비가 부과됩니다.<br>
                - 교환은 왕복배송비, 전체반품은 초기배송비가 환불되어 5,000원입니다.<br>
                - 무료배송이벤트, 무료배송쿠폰 사용 후 반품시에도 초기배송비가 청구됩니다.<br>
                - 패킹하여 보내실 때는 물품 수령 시와 동일하게 포장해 주세요.<br>
                &nbsp;&nbsp;택에 손상이 있는 경우에는 반품과 교환이 모두 불가합니다.<br>
                &nbsp;&nbsp;성함,주소,전화번호,보내시는 상품, 사유 등<br>
                &nbsp;&nbsp;반품 카드 양식에 맞게 적어 보내주셔야 처리가 가능합니다.<br>
                - 타택배 이용고객님은 개별반품을 눌러주시고 타택배 선불로접수 후 반품주소로 보내주세요.<br>
                - 타택배 착불 이용 시 고객부담입니다.<br>
                - 교환&반품 배송비 <b>입금계좌 : OO은행 1111-222-3333 / 예금주 (주)MARKET</b>
                </div>
                <h4>[교환반품 불가항목]</h4>
                <div>
                반품시일이 지난 경우<br>
                소비자에게 책임있는 사유로 재화가 멸실 또는 훼손된 경우<br>
                소비자의 사용 또는 소비에 의하여 재화의 가치가 현저히 감소한 경우<br>
                시간의 경과에 의하여 재판매가 곤란할 정도로 재화의 가치가 현저히 감소한 경우<br>
                사용 흔적(집냄새,향수냄새,체취) / 텍 제거 및 바코드 훼손, 오염이 발견된 상품<br>
                </div>
                <h4>[보내시는 곳]</h4>
                <p>
                반품주소 : 경기 구리시 토평동<br>
                타택배시 : 서울특별시 강남구 서초동<br>
                <br>
                AS책임자 : MARKET 1644-3662<br>
                품질보증기준 : 관련법 및 소비자분쟁해결기준에 따름
                </p>
            </div>
        </div>
    </section>

    <section>
        <div class = "shopping_info">
            <h3>상품후기</h3>
        </div>
        <div class="detail_nav_info">
            상품을 구매하신 분들이 작성하신 리뷰입니다. 리뷰 작성시 아래 금액만큼 포인트가 적립됩니다.<br>
            텍스트 리뷰 : <span style="color: plum;">50원</span> | 포토/동영상 리뷰 : <span style="color: plum;">150원</span>
        </div>
        <div class="review">
                REVIEW | <span style="font-size: 8px; color: grey;">문의글 혹은 악의적인 비방글은 무통보 삭제됩니다.</span>
                <textarea name="" id="" cols="150" rows="10"></textarea>
        </div>
        

        <div class="reviews">
            <select name="" id="">
                <option value="">평가선택</option>
                <option value="">아주 좋아요</option>
                <option value="">좋아요</option>
                <option value="">보통이예요</option>
                <option value="">그저그래요</option>
                <option value="">별로예요</option>
            </select>
            <button>리뷰 등록하기</button>
        </div>

    <div class="reviwes_all">
        <table class = "table_striped">
            <thead>
                <tr>
                    <th style = "background-color:#eeeeee; text-align:center;">번호</th>
                    <th style = "background-color:#eeeeee; text-align:center;">제목</th>
                    <th style = "background-color:#eeeeee; text-align:center;">작성자</th>
                    <th style = "background-color:#eeeeee; text-align:center;">작성일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <td>1</td>
                <td>너무 예뻐요</td>
                <td>ㅇㅇㅇ</td>
                <td>2021-11-10</td>
                </tr>
            </tbody>
        </table>
    </div>
    </section>
    
    <!-- footer -->
    <footer>
		<%@ include file = "../include/footer.jsp" %>
    </footer>
</body>
</html>