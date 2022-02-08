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
.userlist_tbl{
	width:1500px;
	border:1px solid #ccc;
	margin-top:20px;
	 

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
	var url ="adminChangeState.do?unq="+unq;
	window.open(url, "pop",  "top="+popY+", left="+popX+",width="+popWidth+",height="+popHeight+", scrollbars=yes,resizable=yes");
}
 

  
 

  </script>


<body>
<header>
	<%@ include file="../include/header.jsp" %>

</header>

<section>

<article>


			<div class="div1">
				주문 목록
			</div>
			
		
					
			
					
			
			
			
			<div style="width:90%;
			background-color:red;
	  				margin-left:25px;
	  				margin-bottom:10px;
	  				text-align:left;">
	  		    	
	  	
	  	
		
	  <form name="frm" method="post" action="adminOrderList.do">
	  	
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
	  			<option value="orderid" <c:if test="${s_field=='orderid'}">selected</c:if> >아이디</option>
	  			<option value="ordername" <c:if test="${s_field=='ordername'}">selected</c:if> >이름</option>
	  			<option value="orderdate" <c:if test="${s_field=='orderdate'}">selected</c:if> >날짜</option>
	  			<option value="orderpname" <c:if test="${s_field=='orderpname'}">selected</c:if> >상품이름</option>		  		
		  		<option value="unq" <c:if test="${s_field=='unq'}">selected</c:if> >주문번호</option>	
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
<table class="userlist_tbl" align="center" style="">
	<colgroup>
	<col width ="3%" />
		<col width ="8%" />
		<col width ="8%" />
		<col width ="5%" />	 
		<col width ="15%" />	
		<col width = "5%" />
		<col width = "5%" />		
		<col width ="*" />				
		<col width ="8%" />
		<col width ="10%" />
		<col width ="5%" />
		<col width ="*" />					
	</colgroup>
	<tr>
		<td>번호</td>
		<td>아이디</td>
		<td>이름</td>
		<td>상품사진</td>
		<td>상품이름</td>
		<td>상품개수</td>
		<td>상품금액</td>
		<td>주소</td>
		<td>결제 금액</td>
		<td>날짜</td>
		<td>주문번호</td>
		<td>상태</td>
	</tr>

<c:forEach  var="result" items="${list}">
	<tr>
		<td>${rownum }</td>
		<td>${result.orderid}</td>
		<td>${result.ordername}</td>
		
		
		<td>
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
		</td>
		
		
		
		
		
		
		
		
		
		
		
		
		<td>${result.orderpname}</td>
		<td>${result.orderpcount}</td>
		<td>${result.orderponeprice}</td>
		<td style="font-size:12px;">${result.orderzipcode}<br>
		${result.orderaddr1 }<br>
		${result.orderaddr2 }</td>
		<td>${result.orderprice}</td>
		<td>${result.orderdate}</td>
		<td>${result.unq }</td>
		<td>
		<a href ="javascript:fn_popup(${result.unq})">
		
		${result.orderstatus}
		
		</a>

		
		</td>
																
		
		
	
	
	</tr>		
	<c:set var="rownum" value="${rownum-1}" />
</c:forEach>
</table>
   		<div 	style="font-size:18px;color:#424242;font-family:'맑은 고딕';
   						margin-top:12px;margin-bottom:100px; ">
		<c:forEach var="i" begin="1" end="${total_page }">
			<a href="adminOrderList.do?page_no=${i}&s_field=${s_field}&s_text=${s_text}">${i}</a> 
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
