<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
// 																					unq를 나중에 product의 unq로 바꿀 것!
String unq = "1";

String user_id= (String) session.getAttribute("SESSION_USERID");
String user_name = (String) session.getAttribute("SESSION_NICKNAME");

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../static/css/review.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
 rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">	
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		
		


</head>

<script>
$(document).ready(function(){

	$("input[type='radio']").click(function(){
	var sim = $("input[type='radio']:checked").val();
	//alert(sim);
	if (sim<10) { $('.myratings').css('color','black'); $(".myratings").text(sim); }else{ $('.myratings').css('color','green'); $(".myratings").text(sim); } }); });
</script>

<body>

<form name="frm" method="post" action="reviewWriteSave.jsp">
	<input type="hidden" name="product_unq" value="<%=unq %>">
	<input type="hidden" name="user_id" value="<%=user_id %>">
	<input type="hidden" name="user_name" value="<%=user_name %>">

	
	<div class="card">
        <div class="card-body">          
            <!-- 
            	<fieldset class="rating"> <input type="radio" id="star5" name="rating" value="5" /><label class="full" for="star5" title="Awesome - 5 stars"></label> <input type="radio" id="star4half" name="rating" value="4.5" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label> <input type="radio" id="star4" name="rating" value="4" /><label class="full" for="star4" title="Pretty good - 4 stars"></label> <input type="radio" id="star3half" name="rating" value="3.5" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label> <input type="radio" id="star3" name="rating" value="3" /><label class="full" for="star3" title="Meh - 3 stars"></label> <input type="radio" id="star2half" name="rating" value="2.5" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label> <input type="radio" id="star2" name="rating" value="2" /><label class="full" for="star2" title="Kinda bad - 2 stars"></label> <input type="radio" id="star1half" name="rating" value="1.5" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label> <input type="radio" id="star1" name="rating" value="1" /><label class="full" for="star1" title="Sucks big time - 1 star"></label> <input type="radio" id="starhalf" name="rating" value="0.5" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label> <input type="radio" class="reset-option" name="rating" value="reset" /> </fieldset>
             -->
            <fieldset class="rating"> <input type="radio" id="star5" name="rating" value="5"/><label class="full" for="star5" title="Awesome - 5 stars"></label><input type="radio" id="star4" name="rating" value="4" /><label class="full" for="star4" title="Pretty good - 4 stars"></label><input type="radio" id="star3" name="rating" value="3" /><label class="full" for="star3" title="Meh - 3 stars"></label><input type="radio" id="star2" name="rating" value="2" /><label class="full" for="star2" title="Kinda bad - 2 stars"></label><input type="radio" id="star1" name="rating" value="1" /><label class="full" for="star1" title="Sucks big time - 1 star"></label><input type="radio" class="reset-option" name="rating" value="reset" /> </fieldset>
            
            
            <span class="myratings">5</span>   
        </div>
        
        <!-- 
        <div class="form-floating">
		  <textarea name="content" class="form-control" placeholder="후기를 남겨주세요." id="floatingTextarea2" style="height: 100px"></textarea>
		  <label for="floatingTextarea2"></label>
		</div>
		 -->
		 
		<div class="review_content">
			<textarea name="content"  cols="60" maxlength="1000" style="resize:none; height:90px;">아주 마음에 듭니다.</textarea>
		</div>
		
		
		<div>
			<button type="submit" class="btn btn-success" style="margin-bottom:10px;">저장</button>
		</div>
    </div>
        
</form>
</body>
</html>