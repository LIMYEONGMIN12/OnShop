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
  <style>
.textarea1{
border:1px solid #e4eaec;
background:white;
color:#000;
vertical-align:middle;
width:920px;
height:150px;
}	
.table5 {
    border-collapse: separate;
    text-indent: initial;
    white-space: pre;
    font-size: initial;
    font-family: monospace;
    tab-size: 4;
    border-spacing: 0px;
}
	
    
<!-- -->


.button_mypage{
  background:white;
  
  color:#8977ad;
  border:1px solid #EFDEFF;
  position:relative;
  
  height:160px;
  width:190px;
  font-family: CuteFont-Regular;
  font-size:20px;
  font-weight:bold;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
.button_mypage:hover{
  background:#cca9dd;
  color:white;
}
/* 선길이 */
.button_mypage:before,.button_mypage:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #cca9dd;
  transition:400ms ease all;
}

.button_mypage:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
/* <!-- 선생기는거 --> */
.button_mypage:hover:before,.button_mypage:hover:after{
  width:100%;
  transition:800ms ease all;
}

/* 화살표 */
.arrow-right{
	width: 0;
	height: 0;
	border-top: 20px solid transparent;
	border-bottom: 20px solid transparent;
	border-left: 20px solid #d3d3d3;/* 화살표 */
	margin-left:15px;
}

/* 원 */
#circle {

  width : 150px;
  height : 150px;
  border-radius: 50%;
  border:1px solid white;
  background-color: #f3f3f3;
 


}
 @font-face{
	font-family : Indie Flower;
	src: url('/fonts/IndieFlower-Regular.ttf') format('truetype');
	
} 
@font-face{
	font-family : Bangers-Regular;
	src: url('/fonts/Bangers-Regular.ttf') format('truetype');
	
} 
@font-face{
	font-family : Roboto-Black;
	src: url('/fonts/Roboto-Black.ttf') format('truetype');
	
} 
@font-face{
	font-family : CuteFont-Regular;
	src: url('/fonts/CuteFont-Regular.ttf') format('truetype');
	
}
@font-face{
	font-family : SingleDay-Regular;
	src: url('/fonts/SingleDay-Regular.ttf') format('truetype');
	 
} 


  </style>
<script>


	
  </script>


<body>
<header>
	<%@ include file="../include/header.jsp" %>

</header>

<nav>
	<%@ include file="../include/nav.jsp" %>
</nav>

<section>

        <article>
    <form name="frm" id="frm" method="post" action="">

            
            
         	<div class="div1">
					MY PAGE
			</div>
          
           <table class= "table_mypage1" align="center" >
           
           
           <colgroup>
				<col width ="40%" />
				<col width = "40%" />
				<col width = "20%" />
			</colgroup>
           <tr>
           <td>
           
	           <span style="color:black;font-weight:bold;font-size:40px;font-family:'맑은 고딕;'"> ${uvo.userNickname }</span>님 환영합니다<br>
	               	
	          		가입일 : ${uvo.userRdate }
          		
           </td>
           
           <td style="border:1px solid #ccc">
            <span style="font-weight:bold;font-size:15px;float:left;padding-left:40px;">${uvo.userName }님의 등급은 </span><br>
         	 	<!-- 등급 -->
         	 	<div style="color:#9979c1;font-weight:bold;font-size:25px;text-align:center;margin-top:12px;">
         	 					${uvo.userGrade }<span style="color:black;font-size:12px;">입니다.</span></div>
         	 		
           </td>
           
           <td>
			마일리지<br>
				<span style="font-weight:bold;font-size:20px;"> ${uvo.userMileage}</span>
           </td>
           
           
           </tr>
       
         

           </table>
           
           
           <table class= "table_mypage2" align="center">
           	<colgroup>
				<col width ="15%" />
				<col width = "5%" />
				<col width = "15%" />
				<col width ="5%" />
				<col width = "15%" />
				<col width = "5%" />
				<col width ="15%" />
				<col width = "5%" />
				<col width ="15%" />
				
			</colgroup>
           		<tr>
           			<td >
           				<div id="circle" class="div_mypage" >
           					입금완료
           					<div class="div_mypagein">${total }</div>
           				
           				
           				</div>
           				
           			</td>
           			<td>
           				<div class="arrow-right"  ></div>
           			</td>
           			<td>
           				<div id="circle" class="div_mypage">
           				상품출고
           				<div class="div_mypagein">0</div>
           				</div>
           			</td>
           				
           			<td>    
         			    <div class="arrow-right"  ></div>      		
           			</td>
           			
           			<td>
           				<div id="circle" class="div_mypage">
           				배송준비중
           				<div class="div_mypagein">0</div>
           				</div>
           			</td>
           			
           			<td>
           				<div class="arrow-right"  ></div>
           			</td>
           			
           			<td>
           				<div id="circle" class="div_mypage">
           				배송중
           				<div class="div_mypagein">0</div>
           				</div>
           			</td>
           			
           			<td>
           			<div class="arrow-right"  ></div>
           			</td>
           			
           			<td>
           				<div id="circle" class="div_mypage">
           				배송완료
           				<div class="div_mypagein">0</div>
           				</div>
           			</td>
           		
           			
           		
           		</tr>
           
           </table>
           
           
           
           
           
           
         
           
             <table class= "table_mypage3" align="center" >
           <tr>

          	<td class="td_mypage">
          	<button type="button" class="button_mypage" onclick="location.href='shoppingOrderList.do'"> 주문내역 조회      		
          	</button>
			</td>
			
			<td class="td_mypage">
          	<button type="button" class="button_mypage" onclick="location.href='ShoppingUserModify.do'">회원정보</button>
			</td>
			
			<td class="td_mypage">
          	<button type="button" class="button_mypage" onclick ="location.href='userWishList.do?wishuserid=${uvo.userId}'" >찜</button>
			</td>
			
			<td class="td_mypage">
          	<button type="button" class="button_mypage"  onclick="location.href='ShoppingUserMileageList.do?userId=${uvo.userId}'">마일리지</button>
			</td>
			
			<td class="td_mypage">
          	<button type="button" class="button_mypage"  onclick="location.href='shoppingUserCart.do?cartuserId=${uvo.userId}&userId=${uvo.userId }'" >장바구니</button>
			</td>
			
			<td class="td_mypage">
          	<button type="button" class="button_mypage" onclick ="location.href='userTracking.do'">배송조회</button>
			</td>
			
			<td class="td_mypage">
          	<button type="button" class="button_mypage" onclick ="location.href='userAddrChange.do?userId=${uvo.userId}'">배송지 변경</button>
			</td>
			
           </tr>
           

           </table>
      
        
            
            
            
            
          
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