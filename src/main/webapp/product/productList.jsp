<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


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

	

  </script>


<body>
<header>
	<%@ include file="../include/header.jsp" %>

</header>

<section>

<article>

			<div class="div1">
				상품 목록
			</div>

			<div style="width:90%;
			background-color:red;
	  				margin-left:25px;
	  				margin-bottom:10px;
	  				text-align:left;">
	  		
	  <form name="frm" method="post" action="productList.do">
	  	
	  			<div style="margin-left:10px;
	  				float:left; 
	  				width:200px; 
	  				font-weight:bold;
	  				text-align:left;
	  				margin-top:60px;
	  				margin-left:190px;
	  				">
	  		검색 상품 개수 : ${total } 개
	  	
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
	  					<option value="productname" <c:if test="${s_field=='productname'}">selected</c:if> >상품이름</option>
	  					<option value="productprice" <c:if test="${s_field=='productprice'}">selected</c:if> >상품가격</option>
	  					<option value="productsale" <c:if test="${s_field=='productsale'}">selected</c:if> >세일</option>
	  					<option value="productrdate" <c:if test="${s_field=='productrdate'}">selected</c:if> >등록일</option>
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
<table class="userlist_tbl" align="center">
	<colgroup>
		<col width ="5%"/>
		<col width ="5%"/>
		<col width ="*" />
		<col width ="25%" />
		
		<col width ="9%" />				
		<col width ="9%" />
		<col width ="9%" />				
		<col width ="9%" />
		<col width ="9%" />
		<col width ="15%" />
							
	</colgroup>
	<tr>
	<th><input type="checkbox" name="allchk" id="allchk"></th> 
		<td>번호</td>
		<td>이미지</td>
		<td>상품명 </td>

		<td>가격</td>
		<td>재고</td>
		<td>좋아요수</td>
		<td>판매수량</td>
		<td>세일</td>
		<td>등록일</td>
	</tr>

<c:forEach  var="ras" items="${list2}">
	<tr>
		<td><input type="checkbox" name="chk" value="${ras.productunq }"></td>
		<td>${rownum }</td>
		
		<td>
		   <c:set var="filename" value="${ras.filename }" />
             <%
	  			String filename = (String) pageContext.getAttribute("filename");
	  			if( filename != null && !filename.equals("")) {
	  				String[] names = filename.split("/");
	  			%>
	  			  <a href="/productDetail.do?productUnq=${ras.productunq}"><img src="upload/<%=names[0] %>" width="60" height="60"></a>
	  		
	  			<%
	  				
	  			}
	  			%>
		
		</td>
		
		
		
		<td>${ras.productname } / ${ras.productsize } / ${ras.productcolor }</td>
		
		<td>${ras.productprice }</td>
		<td>${ras.productstock}</td>
		<td>${ras.productwish }</td>
		<td>${ras.productsell }</td>
		<td>${ras.productsale }</td>
		<td>${ras.productrdate }</td>
		
		
		
	
	
	</tr>		
	<c:set var="rownum" value="${rownum-1}" />
</c:forEach>
</table>
   		<div 	style="font-size:18px;color:#424242;font-family:'맑은 고딕';
   						margin-top:12px;">
		<c:forEach var="i" begin="1" end="${total_page }">
			<a href="productList.do?page_no=${i}&s_field=${s_field}&s_text=${s_text}">${i}</a> 
		</c:forEach>
	  	</div>
					

			<div style="width:100%; margin-top:10px; float:center;text-align:center;">
					
		 		  	</div>		
					
					


        </article>
</section>

<footer>
	<%@ include file="../include/footer.jsp" %>

</footer>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</body>
</html>
