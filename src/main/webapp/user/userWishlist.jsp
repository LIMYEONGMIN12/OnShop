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
* {
  box-sizing: border-box;
}
body {

  line-height: 1.618em;
  background :  #f2e2c6;
  );
  background-size: 10px 10px;
}
img {
  max-width: 100%;
  height: auto;
}
.wrapper {
  width: 100%;
  padding: 0 2rem;
  text-align: center;
} 
.polaroid {
  background: #FFF;
  padding: 1rem;
  box-shadow: 0 0.25rem 1rem rgba(0,0,0,0.2);
}
.caption { 
  font-size: 1.125rem;
  text-align: center;
  line-height: 2em;
}  
.item {
  display: inline-block;
  margin-top: 2rem;
  filter: grayscale(100%);
}
.item .polaroid:before {
  content: '';
  position: absolute;
  z-index: -1;
  transition: all 0.35s;
}
.item:nth-of-type(4n+1) {
  transform: scale(0.8, 0.8) rotate(5deg);
  transition: all 0.35s;
}
.item:nth-of-type(4n+1) .polaroid:before {
  transform: rotate(6deg);
  height: 20%;
  width: 47%;
  bottom: 30px;
  right: 12px;
  box-shadow: 0 2.1rem 2rem rgba(0,0,0,0.4);
}
.item:nth-of-type(4n+2) {
  transform: scale(0.8, 0.8) rotate(-5deg);
  transition: all 0.35s;
}
.item:nth-of-type(4n+2) .polaroid:before {
  transform: rotate(-6deg);
  height: 20%;
  width: 47%;
  bottom: 30px;
  left: 12px;
  box-shadow: 0 2.1rem 2rem rgba(0,0,0,0.4);
}
.item:nth-of-type(4n+4) {
  transform: scale(0.8, 0.8) rotate(3deg);
  transition: all 0.35s;
}
.item:nth-of-type(4n+4) .polaroid:before {
  transform: rotate(4deg);
  height: 20%;
  width: 47%;
  bottom: 30px;
  right: 12px;
  box-shadow: 0 2.1rem 2rem rgba(0,0,0,0.3);
}
.item:nth-of-type(4n+3) {
  transform: scale(0.8, 0.8) rotate(-3deg);
  transition: all 0.35s;
}
.item:nth-of-type(4n+3) .polaroid:before {
  transform: rotate(-4deg);
  height: 20%;
  width: 47%;
  bottom: 30px;
  left: 12px;
  box-shadow: 0 2.1rem 2rem rgba(0,0,0,0.3);
}
.item:hover {
  filter: none;
  transform: scale(1, 1) rotate(0deg) !important;
  transition: all 0.35s;
}
.item:hover .polaroid:before {
  content: '';
  position: absolute;
  z-index: -1;
  transform: rotate(0deg);
  height: 90%;
  width: 90%;
  bottom: 0%;
  right: 5%;
  box-shadow: 0 1rem 3rem rgba(0,0,0,0.2);
  transition: all 0.35s;
}
@font-face{
	font-family : Indie Flower;
	src: url('/fonts/IndieFlower-Regular.ttf') format('truetype');
	
}





</style>
<body>
  
    <!-- header -->
    <header>
     	<%@ include file="../include/header.jsp" %>
    </header>

  <div class="homeimg" style="margin-top:20px;text-align:center">
                   <a href="/ShoppingMain.do"> <img src="../images/img/store.png" alt=""></a> 

</div>
  
  	 
  	<div style="padding:30px;
  				text-align:center;
  				font-size:70px;
  			
  				margin-top:50px;
  				font-family:Indie Flower;
  				">  
  		<strong>
  		<span style="color:red;">
  		♡</span>WISH LIST<span style="color:red;">♡</span>
  		</strong>
  	</div> 
 
<!-- section -->
<section > 
    <article> 
    
<div class="wrapper"  >






<c:forEach  var="result" items="${list}"> 

  <div class="item">
    <div class="polaroid">
     <a href="/productDetail.do?productUnq=${result.wishpunq }">
    <img src="upload/${result.wishfilename}" width="350px;" height="350px;">
     </a>
     
      <div class="caption" style="font-family:Indie Flower;font-weight:bold;">${result.wishpname }</div>
    </div>
  </div>
  
</c:forEach> 


      
        
        </div>
 
      
    </article>
     <footer style="margin-top:550px;"> 
     <%@ include file = "../include/footer.jsp" %>
    </footer>
   
</section>

    <!-- footer --> 
          
     

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>