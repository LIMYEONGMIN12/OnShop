	 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
 

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
  .mileage_table{
  		width:1300px;
  	 
  		}
  .mileage_tr {
  		line-height:50px;
  }
  .mileage_td{
  	border-top:1px solid black;
  	border-bottom:1px solid black;
  }

  .mileage_td2{
  	border-top:1px solid #ccc;
  	border-bottom:1px solid #ccc;
  }
   @font-face{
	font-family : Indie Flower;
	src: url('/fonts/IndieFlower-Regular.ttf') format('truetype');
	
} 	
  
  
  </style>
  
  <style>
.userlist_tbl{
	width:1500px;
	border:1px solid #ccc;

	 

}
.userlist_tbl2{
	border-radius: 15px;
	margin-top:50px;

	width:900px;
 	background: #F2cfa5;
 	height: 50px;
	width: 500px;
 	border-radius: 30px;
 	margin-right:30px;
 	margin-bottom:10px;

}

.userlist_tbl2 td{
	
	text-align:center;
	 padding: 10px;
	
}
.userlist_tbl2 select{
	color:	#696969;
    width: 140px; /* 원하는 너비설정 */
    padding: 2px;/* 여백으로 높이 설정 */
    font-family: inherit;  /* 폰트 상속 */
    font-weight:bold;
    background: url('https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg') no-repeat 90% 40%; /* 네이티브 화살표를 커스텀 화살표로 대체 */
    border: 2px solid white;
    border-radius: 0px; /* iOS 둥근모서리 제거 */
    -webkit-appearance: none; /* 네이티브 외형 감추기 */
    -moz-appearance: none;
    appearance: none;
    padding-left:14px;
}
.userlist_tbl2 select::-ms-expand {
    display: none;
}
.button_userlist{
	font-size:15px;
	font-family:'맑은 고딕';
	color:WHITE;
	width:90px;
	height:25px;
	background:#b2b2b2;	
	font-weight:bold;
	border:0px;
	
margin-right:25px;
height:30px;
background:#FF9900;
border:2px solid white;

}


.userlist_tbl td{
	text-align:center;
	border:1px solid #ccc; 
	line-height:50px;
}
 
  </style>
<script>

function fn_popup(unq){
	
	var popHeight = 400;                                      // 띄울 팝업창 높이   
	var popWidth = 600;                                       // 띄울 팝업창 너비
	var winHeight = document.body.clientHeight;	  // 현재창의 높이
	var winWidth = document.body.clientWidth;	  // 현재창의 너비
	var winX = window.screenLeft;	                          // 현재창의 x좌표
	var winY = window.screenTop;	                          // 현재창의 y좌표
	var popX = winX + (winWidth - popWidth)/2;
	var popY = winY + (winHeight - popHeight)/2;
	var url ="userReturn.do?unq="+unq;
	window.open(url, "pop",  "top="+popY+", left="+popX+",width="+popWidth+",height="+popHeight+", scrollbars=yes,resizable=yes");
}


  
 

  </script>

<body>

						 
<header>
	<%@ include file="../include/header.jsp" %>

</header>
<div class="homeimg" style="margin-top:20px;text-align:center;">
                   <a href="/ShoppingMain.do"> <img src="../images/img/store.png" alt=""></a> 

</div>
						 
      	<div style="padding:30px;
  				text-align:center;
  				font-size:60px;		
  				font-family:Indie Flower;
  				">   
  		<strong>
  		Order List
  		</strong>
  	</div>  
<section style="margin-top:-70px;">

        <article>
        <div style="width:90%;
			background-color:red;
	  				margin-left:25px;
	  				margin-bottom:10px;
	  				text-align:left;">
    <form name="frm" method="post" action="shoppingOrderList.do">
        
       
         <div style="margin-left:10px;
	  				float:left; 
	  				width:200px; 
	  				font-weight:bold;
	  				text-align:left;
	  				margin-top:60px;
	  				margin-left:190px;
	  				">
	  		주문 수 : ${total } 건
	  	</div>
	  	
	  	
		  	<table class= "userlist_tbl2" align="right">
		  <colgroup>
		<col width ="30%" />
		<col width ="30%" />
		
		<col width ="*" />							
		</colgroup>
		
		
		
		
		  <tr>
		 	
	
		  	<td>
		    	  <select name="s_field">
	  			
	  			<option value="orderpname" <c:if test="${s_field=='orderpname'}">selected</c:if> >상품이름</option>		  		
	  			<option value="orderdate" <c:if test="${s_field=='orderdate'}">selected</c:if> >날짜</option>
		  		
		  		</select>
			</td>
			
			
			<td>
	  			<input type="text" name="s_text" value="${s_text}">
		  	</td>

		  	<td >
		  	<button type="submit"  class ="button_userlist">검색</button>
		  	 
			</td>		  	 
		  		</tr>
		  	</table>
	  	</form> 
	</div>	
 
			
          
           <table class="mileage_table" align="center" style="margin-bottom:50px;width:1500px;">
				<colgroup>
					<col width ="5%"/>
					<col width ="10%" />
					<col width ="*" />
					<col width = "10%" />
					<col width = "10%" />
					<col width ="15%" />
					<col width ="10%" />
					<col width ="15%" />
					<col width ="5%"/>																
				</colgroup>
				
					
				<tr class="mileage_tr">
					<td  class="mileage_td"> 번호 </td>
					<td  class="mileage_td"> 상품이미지 </td>
					<td class="mileage_td"> 상품명 </td>
					<td class="mileage_td"> 수량</td>
					<td class="mileage_td"> 가격</td>
					<td class="mileage_td"> 일자</td>
					<td class="mileage_td"> 결제금액</td>
					<td class="mileage_td"> 상태</td>	
					<td class="mileage_td"> 교환/반품</td>	
				</tr>
 

					
				
					 
					
					
		<c:forEach  var="result" items="${list}"> 
				<tr class="mileage_tr">
				<td class="mileage_td2">${rownum }</td>
					<td class="mileage_td2">
						
							 <c:set var="AAa" value="${result.orderpfile}"/>
							 <c:set var="punq" value="${result.orderpunq }"/>
						<%
							String k = (String)  pageContext.getAttribute("AAa");
							String z = (String )pageContext.getAttribute("punq");
							String arr[] = k.split("/");
							String zrr[] = z.split("/");
							for(int i=0; i<arr.length; i++){
								%>
								<a href="/productDetail.do?productUnq=<%=zrr[i]%>">
									<img src="upload/<%=arr[i] %>" width=100px; height=100px;>
								</a>	
								
								<%
							}
							 
						 %>
						 
					<%-- 	<img src="upload/${result.orderpfile}" width=100px; height=100px;> --%>
						

					 </td> 
					<td class="mileage_td2" style="font-weight:bold;font-size:15px;"> ${result.orderpname} </td>
					<td class="mileage_td2"> ${result.orderpcount}</td>
					<td class="mileage_td2"> ${result.orderponeprice}</td>
					<td class="mileage_td2"> ${result.orderdate }</td>
					<td class="mileage_td2"> ${result.orderprice} </td>	
					<td class="mileage_td2"> ${result.orderstatus} </td>	
					<td class="mileage_td2">
					
				<button type ="button" style="line-height:20px;background-color:#5F5F5F;font-size:12px;
							border:2px solid #5F5F5F;color:white;" 
							onclick ="fn_popup(${result.unq})"
							>교환/반품</button>
					</td>
				</tr>
					<c:set var="rownum" value="${rownum-1}" />
		</c:forEach>
			
		   </table>
		   	<div 	style="font-size:18px;color:#424242;font-family:'맑은 고딕';
   						margin-top:12px;margin-bottom:100px; ">
		<c:forEach var="i" begin="1" end="${total_page }">
			<a href="shoppingOrderList.do?page_no=${i}&s_field=${s_field}&s_text=${s_text}">${i}</a> 
		</c:forEach>
	  	</div>
					

			<div style="width:100%; margin-top:10px; float:center;text-align:center;">
					&nbsp;
		 		  	</div>
	
        </article>
     

</section>

   
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</body>
</html>
 