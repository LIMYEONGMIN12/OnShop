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
<title>Knit - MARKET</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/user.css">
<link rel="stylesheet" href="css/best1_detail.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	 rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">	
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
		
		<script src="../script/jquery-1.12.4.js"></script>
  		<script src="../script/jquery-ui.js"></script>
 
 
 <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<script>

$(function() {

			$("#add_cart").click(function(){  
					
				if( $("#filename").val() == "" ) {
		  				alert("asd 입력해주세요.");
		  				$("#filename").focus();
		  				return false;
		  		}
				if( $("#cartproductUnq").val() == "" ) {
	  				alert("unq 입력해주세요.");
	  				$("#cartproductUnq").focus();
	  				return false;
	  			}
				if( $("#cartuserId").val() == "" || $("#cartuserId").val() == null ) {
	  				
					alert("로그인을 해주세요.");
					location="ShoppingLoginWrite.do"
	  				return false;
	  			}
				
			var formdata = $("#frm").serialize();

  			$.ajax({
  				type : "post",
  				url  : "adduserCart.do",
  				data : formdata,
  				
  				datatype : "text",  // 성공여부 (ok)
  				success : function(data) {
  					if (data == "ok") {
  						alert("장바구니에 추가 되었습니다");
  						
  					}  else {
  						
  						alert("실패");
  					}
  				},	
  				error : function() {
  					alert("오류발생");
  				}
  			});
  		});
		});		
   </script>
<script>
$(function() {

	$("#btn2").click(function(){  

		alert("로그인을 해주세요.");
		location="ShoppingLoginWrite.do"
			return false;
		
	});
});

</script>
	
		
	

    <script >
    function fn_add(a){
        var p = Number(document.frm.count.value);
        if(a=="+"){
            p += 1;
        }
        else if (a=="-")    {
            if(p>1){
            p -=1;
            }
        
        }
            document.frm.count.value= p;
     
       
     
    }
 </script>

<body>
    <!-- header -->
    <header>
     	<%@ include file="../include/header.jsp" %>
    </header>
    <nav>
      	 <%@ include file ="../include/nav.jsp" %>
        
    	
     </nav>
    <!-- section -->
    <section class="detail_section" >
   
  
    <table>
    	<tr>
    		<td>
        <div style="margin-left:150px;">
            <img src="upload/${file0}" width="720" height="620" />
        </div>
        </td>
        <td style="padding-left:120px;">
        <div class="detail_info">
        <!-- 이름  -->
        	<form name ="frm" id="frm" action="userOrder.do?11">
        	<input type ="hidden" id ="filename" name="filename" value="${file0 }" >
        	<input type ="hidden" id="userId" name="userId" value="<%=useridTop %>">
        	<input type ="hidden" id="type" name="type" value="a">
        	<%
        	if(useridTop !=null){
        	%>
        		<input type ="hidden" id ="cartuserId" name="cartuserId" value="<%=useridTop %>"  >
        	
        	<%
        	}else{
        		%>
        		<input type ="hidden" id ="cartuserId" name="cartuserId" value=""  >
        		<%
        	}
        	%>
            <h3>
                <img src="../images/img2/custom1.gif" alt="">
                <img src="../images/img2/custom2.gif" alt="">
                <img src="../images/img2/custom3.gif" alt="">
                <br>${vo.productName}
            </h3>
            
            <div class="price_box" style="border-bottom:1px solid #eee; padding-bottom:30px; margin-bottom:20px;">
                <!-- <span class="p1"><em>24</em>%</span>
                <span class="p2" style="font-size: 14px;">21,000원</span> -->
                <span class="p3">${vo.productPrice2}원</span>
            </div> 
            
            <div class="points">
                <div class="box">
                    <div class="points_title">MARKET 회원만을 위한 마일리지 혜택<br></div>
                   
                    <div class="box_in_box" style="margin-top:30px;">
                        <div class="points_tip">
                            <div class="points_c" >
                                <span style="color: #f54242"><i>TIP</i></span>.&nbsp;  포인트 더 받는 방법
                                <span style="margin-left: 28px; font-size: 11px; font-weight: bold;"> >> 리뷰작성</span>
                            </div>
                        
                            
                            <div class="naver_points">
                      			<span style="font-weight:bold;font-family:'맑은 고딕';font-size:16px;">적립포인트 : </span>
	                      		<div style="font-weight:bold;font-family:'맑은 고딕';font-size:16px;">	상품 가격 x 5% 적립 !! </div>
               			        <div style="font-weight:bold;font-family:'맑은 고딕';font-size:16px;">	리뷰 작성시  200원 적립!! </div>
               			        <div style="font-weight:bold;font-family:'맑은 고딕';font-size:16px;">	
               			        <span style="color:red">♥ </span> ${vo.productWish}<br>
               			        <span style="font-size:10px;color:#ccc;">회원님이  이상품을 좋아합니다.</span>  </div>               			        
               			        
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            
            
            

							
							
							
							
							
                <div class="txt">
                <table style="margin-left:15px;margin-top:15px;">
              
                <tr>
                <td >
                
                    <select id ="cartproductUnq" class="view_select_box" name="cartproductUnq" onchange="GoodsProc.set_opt2();" style="width:280px;border:1px solid #ccc;" data-goods_idx="126073">
                      
                <c:forEach  var="result" items="${list}">
						<option  value="${result.productunq}">${result.productcolor } / ${result.productsize }</option>          
				</c:forEach>
                    </select>
                    
                    
                </td>
                </tr>
                <tr>
                <!-- 상품개수  -->
                <td style="">
						          
				

				
             			<input type ="button" style="float:right;border:1px solid #ccc;color:#403E3D"  name="a1"  onclick="fn_add('+')" value="+"> 
				        <input type="button"  style="float:right;border:1px solid #ccc;color:#403E3D"     name ="a2" onclick="fn_add('-')" value="-" >
				        <input type="text" name="count" id="count" value ='1' readonly="readonly" style="float:right;width:40px;border:1px solid #ccc;"/> 
                		
                		
                	<!-- 	                		넘길 값 위시리스트 -->
                		<input type="hidden" id="wishpunq" name="wishpunq" value="${vo.productUnq}">
                		<input type="hidden" id="wishuserid" name="wishuserid" value="<%=useridTop%>">
                		<input type="hidden" id="wishfilename" name="wishfilename" value="${file0 }">
                		<input type="hidden" id="wishpname" name="wishpname" value="${vo.productName}">
                		
                		
                </td>
				</tr>		
                </table>

           		 </div>

            <div class="detail_info_footer">
            <table>
            	<tr>
            
            		<td><Input type="submit"  class="shopping_cart"  value="장바구니" id="add_cart" onclick="return false;"> </td>
            		<td> 
            		<%
            		if ( useridTop != null ) { //로그인않하면 
            		 %>
 <button ty	pe="submit" class="buy_item"  id="add_cart" 
            			 onclick="location.href='userOrder.do?cartuserId=<%=useridTop%>&userId=<%=useridTop%>&cartproductUnq=${vo.productUnq}&type=a'">구매하기</button></td>
            			
						
<%
            		}else{
            			%>
            				            		 <button type="submit" class="buy_item"  id="btn2" onclick="return false;">구매하기</button></td>
            			
            			<%
            		}

%>            			 
            									
            		<td>      <%@include file = "button.jsp" %> </td>
            	</tr>
                
            </table>
            
            	 </form> 
            </td>
         </tr>   
      </table>     
              
           
            </div>
            </div>
            
         
        </section>

    <section>
        <div class = "detail_header" style="margin-bottom:50px;">
            <h3>상세정보</h3>
        </div>
      <c:set var="filename" value="${filename }" />
       <%
	  			String filename = (String) pageContext.getAttribute("filename");
	  			if( filename != null && !filename.equals("")) {
	  				String[] names = filename.split("/");
	  				for(int i=0; i<names.length; i++){
	  			%>
        <div class="detail_info_detail">
            <img src="upload/<%=names[i] %>" width="500" height="500">
        </div>
       <%
	  				}
	  		}
       %>
       
       <!-- 
 
        <div class = "shopping_info">
            <h3>상품후기</h3>
        </div>
        <div class="detail_nav_info">
            상품을 구매하신 분들이 작성하신 리뷰입니다. 리뷰 작성시 아래 금액만큼 포인트가 적립됩니다.<br>
            텍스트 리뷰 : <span style="color: plum;">50원</span> | 포토/동영상 리뷰 : <span style="color: plum;">150원</span>
        </div>
        <div class="review">
                <textarea name="" id="" cols="100" rows="10"></textarea>

        </div>
        

        <div class="reviews">
            <select name="" id="">
                <option value="">평가선택</option>
                <option value="">아주 좋아요</option>
                <option value="">좋아요</option>
                <option value="">보통이예요</option>
                <option value="">그저그래요</option>
                <option value="">별로예요</option>
            </select>
            <button>리뷰 등록하기</button>
        </div>



    <div class="reviwes_all">
        <table class = "table_striped">
            <thead>
                <tr>
                    <th style = "background-color:#eeeeee; text-align:center;">번호</th>
                    <th style = "background-color:#eeeeee; text-align:center;">제목</th>
                    <th style = "background-color:#eeeeee; text-align:center;">작성자</th>
                    <th style = "background-color:#eeeeee; text-align:center;">작성일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <td>1</td>
                <td>너무 예뻐요</td>
                <td>ㅇㅇㅇ</td>
                <td>2021-11-10</td>
                </tr>
            </tbody>
        </table>
    </div>
    -->
    
  
     
   <div style="border-top:1px solid #ccc;margin-top:100px;">
       <%@ include file = "../include/guide.jsp" %>

    </div>
    
    
   
    <!-- footer -->
    <footer>
		<%@ include file = "../include/footer.jsp" %>
    </footer>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    
</body>
</html>