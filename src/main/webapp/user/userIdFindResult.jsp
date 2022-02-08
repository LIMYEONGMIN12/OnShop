<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
  
    
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/user.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	 rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


<script>
function fn_login() {	
	self.close();
	opener.location.href = "ShoppingLoginWrite.do";
}
</script>
    

<body  style="background:#e0c197;">
<div style="text-align:center; margin-top:20px;">
<p>아이디는  ${vo.userId }  입니다.</p>

</div>


<div style="text-align:center;">
<button class="button_login" onclick="fn_login();" style="width:100px; margin-top:10px">로그인하기</button>
<button class="button_write" onclick="self.close();" style="width:100px; margin-top:10px">닫기</button>
</div>
</body>