<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/index.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
<title>MAIN</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style>
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

</head>
<body>
    <!-- header -->
    <header>
     	<%@ include file="../include/header.jsp" %>
    </header>

    <!-- nav -->
    <nav>
      	 <%@ include file ="../include/nav.jsp" %>
        
    		<!-- 메인화면이미지 -->
    			<br>
    			
    			
   		 	<%@ include file ="../include/mainPic.jsp" %>
     </nav>
	
    <!-- article -->
    <section>
<!-- carousel-->
        
    <article>
        <div class="ranking" style="font-family:Roboto-Black;font-size:30px;"><i class="fas fa-star"></i>BEST &nbsp;RANKING<i class="fas fa-star"></i></div>
        <ul class="list">
     <c:forEach  var="result" items="${list}"> 
            <li style="margin-right:10px;">
             <c:set var="filename" value="${result.filename }" />
             <%
	  			String filename = (String) pageContext.getAttribute("filename");
	  			if( filename != null && !filename.equals("")) {
	  				String[] names = filename.split("/");
	  			%>
	  			  <a href="/productDetail.do?productUnq=${result.productunq }"><img src="upload/<%=names[0] %>" width="250" height="250" ></a>
	  		
	  			<%
	  				
	  			}
	  			%>
              
                <div class="clothesTitle" style="font-family:CuteFont-Regular;font-size:35px;">${result.productname}</div>
                <div class="clothesPrice"  style="font-family:SingleDay-Regular;font-size:22px;">${result.productprice2}원</div>
                <div class="clothesInfo"  style="font-family:CuteFont-Regular;font-size:25px;color:gray;">${result.productexplain}</div>
              
              	 
                
            </li>
	 	</c:forEach> 
			
             
        </ul>
        <!-- New Arrival -->
        <div class="container_box" style="margin-top:70px;">
	        <div class="container">
	            <div class="item1"><a href="#"><img src="../images/img2/square1.jpg" alt=""></a></div>
	            <div class="item2"><a href="#"><img src="../images/img2/square2.jpg" alt=""></a></div>
	            <div class="item3"><a href="#"><img src="../images/img2/centertop.jpg" alt=""></a></div>
	            <div class="item4"><a href="#"><img src="../images/img2/righttop.jpg" alt=""></a></div>
	            <div class="item5"><a href="#"><img src="../images/img2/leftbottom.jpg" alt=""></a></div>
	            <div class="item6"><a href="#"><img src="../images/img2/lightbrown.png" alt=""></a></div>
	            <div class="item7"><a href="#"><img src="../images/img2/rightbottom.jpg" alt=""></a></div>
	        </div>
        </div>
        
        <div class="ranking" style="font-family : Roboto-Black;font-size:30px;"><i class="fas fa-star"></i>NEW &nbsp;RANKING<i class="fas fa-star"></i></div>
        <ul class="list">
     <c:forEach  var="result2" items="${list2}"> 
            <li style="margin-right:10px;">
             <c:set var="filename" value="${result2.filename }" />
             <%
	  			String filename = (String) pageContext.getAttribute("filename");
	  			if( filename != null && !filename.equals("")) {
	  				String[] names = filename.split("/");
	  			%>
	  			  <a href="/productDetail.do?productUnq=${result2.productunq }"><img src="upload/<%=names[0] %>" width="250" height="250"></a>
	  		
	  			<%
	  				
	  			}
	  			%>
               
                <div class="clothesTitle" style="font-family:CuteFont-Regular;font-size:35px;" >${result2.productname}</div>
                <div class="clothesPrice" style="font-family:SingleDay-Regular;font-size:22px;" >${result2.productprice2}원</div>
                <div class="clothesInfo" style="font-family:CuteFont-Regular;font-size:25px;color:gray;">${result2.productexplain}</div>
             
              	
                
            </li>
	 	</c:forEach> 
        
        
        
    </article>
        </section>

    <!-- footer -->
    <footer style="margin-top:100px;">
     
     <%@ include file = "../include/footer.jsp" %>
    </footer>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>