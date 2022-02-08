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
  .mileage_table{
  		width:1300px;
  		margin-top:30px;
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
<script>



	
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
  				font-size:70px;		
  				font-family:Indie Flower;
  				">   
  		<strong>
  		Mileage Usage History
  		</strong>
  	</div> 


<section>

        <article>
    <form name="frm" id="frm" method="post" action="">
           
			<div style="margin-top:20px;">
			현재 적립금 : ${vo.userMileage} 원 
			</div>
          
           <table class="mileage_table" align="center">
				<colgroup>
					<col width ="10%" />
					<col width ="10%" />
					<col width = "*" />
					<col width ="10%" />					
				</colgroup>
				
				<tr class="mileage_tr">
					<td  class="mileage_td"> 상태 </td>
					<td class="mileage_td"> 적립금 </td>
					<td class="mileage_td"> 적립내용</td>
					<td class="mileage_td"> 적립일시</td>	
				</tr>
				
			
			<c:forEach  var="result" items="${list}">
		
				
					<tr  class= "mileage_tr">
						
					
						
<c:choose>

    <c:when test="${result.milestatus eq '적립'}">
        				<td class="mileage_td2" style="color:blue"> ${result.milestatus }</td>
						<td class="mileage_td2" style="color:blue"> ${result.milecost }</td>
    </c:when>

    <c:when test="${result.milestatus eq '차감'}">
       					<td class="mileage_td2"  style="color:red"> ${result.milestatus }</td>
						<td class="mileage_td2" style="color:red">  ${result.milecost }</td>
    </c:when>


</c:choose>

			
				
					
					<td class="mileage_td2" style="text-align:left;padding-left:100px;"> ${result.milecontent }</td>
					
					<td class="mileage_td2"> ${result.miledate}</td>
					
				

				
					</tr>
						
			</c:forEach>
					
		   </table>
		   		<div 	style="font-size:18px;color:#424242;font-family:'맑은 고딕';
   						margin-top:12px;">
	  			
	  			<c:forEach var="i" begin="1" end="${total_page }">
	  				<a href="ShoppingUserMileageList.do?page_no=${i}&userId=${vo.userId}">${i}</a> 
	  			</c:forEach>
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
