<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

    <%
    String useridTop = (String) session.getAttribute("SESSION_USERID");
    String usernickname = (String)session.getAttribute("SESSION_NICKNAME");
%>
    <script>
	
		
	 
</script>  
    <style> 
    a {
    text-decoration:none;
    color:black;
    }
     @font-face{
	font-family : Indie Flower;
	src: url('/fonts/IndieFlower-Regular.ttf') format('truetype');
	
} 	
@font-face{
	font-family : Itim-Regular;
	src: url('/fonts/Itim-Regular.ttf') format('truetype');
	 
}  
    </style>
    
   <ul class="main">
            <li class="title" style="font-family:Itim-Regular;font-style:litalic;font-size:30px;font-weight:bold;"><a href="/ShoppingMain.do" style="color:#403E3D;">Online-ShoppingMall</a></li>
        </ul>
        <ul class="login">
        <%
		if ( useridTop != null ) { //로그인햇을경우
			if(useridTop.equals("root")){
				%>		  
						
				 <li style="font-size:15px;color:#403E3D;font-family:Sans-serif;color:red;"><strong>관리자모드&nbsp;&nbsp;</strong></li>							
           		 <li><a href="/adminIndex.do" style="font-size:15px;color:#403E3D;font-family:Sans-serif;"><strong>| &nbsp;&nbsp;AdminPage</strong></a></li>
                 <li><a href="../user/logout.jsp" style="font-size:15px;color:#403E3D;font-family:Sans-serif;"><strong>| &nbsp;&nbsp;Logout</strong></a></li>
				
				<%
			}else{
		%>  
			
			<li style="color:#403E3D;font-size:15px;font-family:Sans-serif;" ><strong> [ <%=usernickname %> ]님 환영합니다.&nbsp;&nbsp; </strong>  </li>
            <li ><a href="../user/logout.jsp" style="font-size:15px;color:#403E3D;font-family:Sans-serif;"><strong>| &nbsp;&nbsp;Logout</strong></a></li>
            <li  ><a href="/ShoppingMypage.do" style="font-size:15px;color:#403E3D;font-family:Sans-serif;"><strong>| &nbsp;&nbsp;Mypage</strong></a></li>
         
			
            <%
            }
             %>
        <%
		}else{ //로그인안했을경우 
		%>
			
			<li ><a href="/ShoppingLoginWrite.do" style="font-size:15px;color:#403E3D;font-family:Sans-serif;"><strong>| &nbsp;&nbsp;Login</strong></a></li>
            <li><a href="/ShoppingUserWriteBefore.do"  style="font-size:15px;color:#403E3D;font-family:Sans-serif;"><strong>| &nbsp;&nbsp;회원가입 </strong></a></li>
			
		<%
		}
		
		%>
        </ul>

        <div class="search" style="margin-top:40px;">
          	<input type="text" style="border:1px solid #ccc;width:120px;">
            <button style="border:1px solid #ccc;"><i class="fas fa-search"></i></button>
        </div>
        
        
        
        
        
        
        
        