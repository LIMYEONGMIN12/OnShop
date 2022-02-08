<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/index.css">
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/best1_detail.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
<title>KNIT</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
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
        <ul class="list">
            <li>
                <a href="#"><img src="../images/img2/top_knit1.jpg" alt=""></a>
                <div class="clothesTitle">니트</div>
                <div class="clothesPrice">45,000원</div>
                <div class="clothesInfo">#니트 #옷</div>
            </li>
            <li>
                <a href="#"><img src="../images/img2/top_knit2.jpg" alt=""></a>
                <div class="clothesTitle">니트</div>
                <div class="clothesPrice">25,000원</div>
                <div class="clothesInfo">#니트 #옷</div>
            </li>
            <li>
                <a href="#"><img src="../images/img2/top_knit3.jpg" alt=""></a>
                <div class="clothesTitle">니트</div>
                <div class="clothesPrice">75,000원</div>
                <div class="clothesInfo">#니트 #옷</div>
            </li>
            <li>
                <a href="#"><img src="../images/img2/top_knit4.jpg" alt=""></a>
                <div class="clothesTitle">니트</div>
                <div class="clothesPrice">156,000원</div>
                <div class="clothesInfo">#니트 #옷</div>
            </li>
        </ul>
    </article>
</section>

    <!-- footer -->
    <footer>
     
     <%@ include file = "../include/footer.jsp" %>
    </footer>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>