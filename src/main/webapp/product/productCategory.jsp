<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JACKET</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/user.css">
<link rel="stylesheet" href="css/best1_detail.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>


<style>
.list2 li {

display : inline-block;
width:22%;
float:center;
align:center;
text-align:center;

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
<body>
    <!-- header -->
    <header>
     	<%@ include file="../include/header.jsp" %>
    </header>

    <!-- nav -->
    <nav>
      	 <%@ include file ="../include/nav.jsp" %>
    </nav>

<!-- section -->
<section>
    <article>
        <ul class="list2">
  <c:forEach  var="result" items="${list}"> 
            <li style="margin-left:50px;margin-top:30px;margin-bottom:30px;">
               <c:set var="filename" value="${result.filename }" />
             <%
	  			String filename = (String) pageContext.getAttribute("filename");
	  			if( filename != null && !filename.equals("")) {
	  				String[] names = filename.split("/");
	  			%>
               
                <a href="/productDetail.do?productUnq=${result.productunq }" style="text-align:left;"><img src="upload/<%=names[0] %>" width="300" height="300"></a>
                <%
	  				 
	  			}
	  			%>
                <div class="clothesTitle" style="font-family:CuteFont-Regular;font-size:35px; ">${result.productname}</div>
                <div class="clothesPrice" style="font-family:SingleDay-Regular;font-size:22px; ">${result.productprice2}원</div>
                <div class="clothesInfo"  style="font-family:CuteFont-Regular;font-size:25px;color:gray; ">${result.productexplain}</div>
            </li>
  </c:forEach>    
       
        </ul>
    </article>
     
   
</section>
 <footer style="margin-top:500px;">
     <%@ include file = "../include/footer.jsp" %>
    </footer>
    <!-- footer -->
    

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>