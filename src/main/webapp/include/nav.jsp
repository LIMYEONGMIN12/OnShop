<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<style>

@font-face{
	font-family : Itim-Regular;
	src: url('/fonts/Itim-Regular.ttf') format('truetype');
	 
}  

@font-face{
	font-family : SingleDay-Regular;
	src: url('/fonts/SingleDay-Regular.ttf') format('truetype');
	 
} 


</style>


<div class="homeimg" style="margin-top:20px;">
                   <a href="/ShoppingMain.do"> <img src="../images/img/store.png" alt=""></a> 

</div>


<div class="nav_box1" style="display: flex;
  justify-content: space-around;
  padding-left: 0;">    
<div class="nav_box2">
<ul class="nav nav-pills" >

 <li class="nav-item dropdown" style="color:#403E3D;font-weight:bold;font-family:Itim-Regular;font-size:18px;">
    <a class="nav-link dropdown-toggle" style="color:#403E3D;font-weight:bold;font-family:Itim-Regular;font-size:18px;"  data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">OUTER</a>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="/productCategory.do?categoryCode=OUTER&gubun=JUMPER">JUMPER</a></li>
      <li><a class="dropdown-item" href="/productCategory.do?categoryCode=OUTER&gubun=COAT">COAT</a></li>
      <li><a class="dropdown-item" href="/productCategory.do?categoryCode=OUTER&gubun=JACKET">JACKET</a></li>
    </ul>
  </li> 
  
  <li class="nav-item dropdown"  style="padding-left:120px;color:#403E3D;font-family:Itim-Regular;font-size:18px;" >  
    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false" style="color:#403E3D;font-weight:bold;">TOP</a>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="/productCategory.do?categoryCode=TOP&gubun=T-SHIRTS">T-SHIRTS</a></li>
      <li><a class="dropdown-item" href="/productCategory.do?categoryCode=TOP&gubun=KNIT">KNIT</a></li>
      <li><a class="dropdown-item" href="/productCategory.do?categoryCode=TOP&gubun=HOODIE">HOODIE</a></li>
    </ul>
  </li>
  
   <li class="nav-item dropdown" style="padding-left:120px;color:#403E3D;font-family:Itim-Regular;font-size:18px;" >
    <a class="nav-link dropdown-toggle" style="color:#403E3D;font-weight:bold;" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">BOTTOM</a>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item"  href="/productCategory.do?categoryCode=BOTTOM&gubun=PANTS">PANTS</a></li>
      <li><a class="dropdown-item"  href="/productCategory.do?categoryCode=BOTTOM&gubun=DENIM">DENIM</a></li>
      <li><a class="dropdown-item"  href="/productCategory.do?categoryCode=BOTTOM&gubun=1/2 HALF">1/2 HALF</a></li>
    </ul>
  </li>

   <li class="nav-item dropdown"  style="padding-left:120px;color:#403E3D;font-family:Itim-Regular;font-size:18px;" > 
    <a class="nav-link dropdown-toggle" style="color:#403E3D;font-weight:bold;" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">SHOES</a>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="/productCategory.do?categoryCode=SHOES&gubun=SNEAKERS">SNEAKERS</a></li>
      <li><a class="dropdown-item" href="/productCategory.do?categoryCode=SHOES&gubun=BOOTS">BOOTS</a></li>
      <li><a class="dropdown-item" href="/productCategory.do?categoryCode=SHOES&gubun=SANDAL">SANDAL</a></li>
    </ul>
  </li> 
  <li class="nav-item dropdown"  style="padding-left:120px;color:#403E3D;font-family:Itim-Regular;font-size:18px;"  >
    <a class="nav-link dropdown-toggle"style="color:#403E3D;font-weight:bold;"  data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">SALE</a>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="../navbar_clothes/sale.jsp">SALE</a></li>
    </ul>
  </li>
    <li class="nav-item dropdown"  style="padding-left:120px;color:#403E3D;font-family:SingleDay-Regular;font-size:18px;"   >
    <a href="boardList.do" class="nav-link dropdown-item" style="color:#403E3D;font-weight:bold;" ><i class="fas fa-star"></i>공지사항<i class="fas fa-star"></i></a>
 
  </li>
  
</ul>
</div>    
</div>

 