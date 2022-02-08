 	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<%@ include file="../include/dbcon.jsp" %>

<%
String imp = "<span style='color:red'>*</span> ";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
<link rel="stylesheet" href="../static/css/index.css">
<link rel="stylesheet" href="../static/css/user.css">
<link rel="stylesheet" href="../static/scss/adminindex.css">
<link rel="stylesheet" href="../static/scss/adminindex3.css">

<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/user.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	 rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">	
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
		<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
		
		<script src="../script/jquery-1.12.4.js"></script>
  		<script src="../script/jquery-ui.js"></script>
 
  </head>
  <style>
 .admin_table{
  		width:1300px;
  		margin-top:30px;
  		}
  		
  .admin_table tr{
  	
  }		
  .admin_table td{
  	height:300px;
  	float:center;
  	text-align:center;
  }		
  .div_admin{
	margin-top : 50px;
	font-size:35px;
	font-weight:bold;
	font-family:'맑은 고딕';
	padding-left:100px;
  
  }		
	
  		
  </style>

	<script>
	$(function() {
		  
  		$("#admin1").click(function(){
  			location = "adminUserList.do";
  		});
  			
		$("#admin2").click(function(){
  			location = "productList.do";
  		});
  			
		$("#admin3").click(function(){
			location = "ProductWrite.do";
		});
		
		
		$("#admin4").click(function(){
			location = "adminOrderList.do";
		}); 
				
		$("#admin5").click(function(){
			location = "boardList.do";
		});
		
		$("#admin6").click(function(){
			location = "adminReturnList.do";
		});
		
				 
  		
  	});

	
  </script>


<body>
<header>
	<%@ include file="../include/header.jsp" %>

</header>



<section>

        <article>
        
  <form name="frm" id="frm" >
        <table  align="center" style ="margin-top:50px; width:1200px;">
        <colgroup>
         
				<col width ="30%" />
				<col width = "*" />
				
		
        
        </colgroup>
        
        <tr >
        <td><div id="container" style="align:center;">
  <div class="ball" id="ball_planet"></div>
  <div class='wrap' id='wrap1'>
    <div class='ball' id='ball1'></div>
  </div>

  <div class='wrap' id='wrap2'>
    <div class='ball' id='ball2'></div>
  </div>
  
  <div class='wrap' id='wrap3'>
    <div class='ball' id='ball3'></div>
  </div>
  
  <div class='wrap' id='wrap4'>
    <div class='ball' id='ball4'></div>
  </div>
  
</div></td>
         <td  style="text-align:left;">
	<div class="div_admin">
           관리자페이지
           </div></td>
        </tr>
        
        
        
        </table>   

	
			
			
			
	      <table class="admin_table" align="center">
           
           <tr>
           <td><button class="admin_btn" id ="admin1" onclick="return false;">User List</button></td>
             <td><button class="admin_btn" id ="admin2" onclick="return false;">Product List</button></td>
               <td><button class="admin_btn" id ="admin3" onclick="return false;">  Product entry </button></td>
           </tr>							
           
            <tr>
           <td><button type="button" class="admin_btn" id="admin4" onclick="return flase;">Order List</button></td>
             <td><button type="button" class="admin_btn" id="admin5" onclick="return false;">Board List</button></td>
                <td><button type="button" class="admin_btn" id="admin6" onclick="return false;">Refund List</button></td>
           </tr>
           
           
           
          
	
	
		   </table>
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
