<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- DB 연결 -->
<%@ include file="../include/dbcon.jsp" %>

<!-- 파라메터값 받기 -->
<%
String userId = request.getParameter("userId");
%>
    
<!-- 아이디 null 체크 , 길이(4~12) 체크 -->
<%
if( userId == null || userId.equals("") ) {
%>
		<script>
		alert("아이디를 다시 확인해주세요!");
		self.close();
		</script>
<%
		return;
}

userId = userId.replace(" ",""); 

if( userId.length() < 4 || userId.length() > 12 ) {
	%>
		<script>
		alert("아이디는 4자~12자 사이로 입력해야합니다!");
		self.close();
		</script>
<%
	return;
}
%>
<!-- ------------------------------- -->

<%
char ch = 0;
for (int i = 0; i < userId.length(); i++) {
      ch = userId.charAt(i);
    if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
    	%>
    	<script>
    	
        alert("아이디는 영문 대소문자, 숫자만 입력가능합니다.");
    	</script>
    <%
        return;
    
    }
}
    %>
    <!-- ------------------------------ -->



<!-- 아이디 값 중복 체크 -->
<%
String sql = "SELECT COUNT(*) cnt FROM userTbl WHERE userId='"+userId+"' ";
ResultSet rs = stmt.executeQuery(sql);
rs.next();
int cnt = rs.getInt("cnt");

String result = "";
if(cnt == 0) {
	result = "입력 아이디 <b>" + userId+"</b>는 사용가능 입니다.";
	out.print("<script>  opener.document.frm.idcheck.value='Y'; </script>");
	out.print("<script>  opener.document.frm.userId.value='"+userId+"'; </script>");
} else {
	result = "입력 아이디 " + userId+"는 이미 사용중 입니다.";
	out.print("<script>  opener.document.frm.idcheck.value='N'; </script>");	
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
	font-size:12px;
	font-family:'맑은 고딕';
	background-color:;
	
	
}
a {
	text-decoration:none;
}
</style>
<script>
function fn_idcheck() {
	var f = document.frm;
	var userId = f.userId.value;	
	userId = userId.replace(" ","");
	if(userId.length<4 || userId.length>12) {
		alert("아이디의 길이는 4자~12자 사이입니다.");
		return false;
	}
	f.submit();
}



</script>
<body>
<form name="frm" method="post" >


<div style="font-size:12px;
			width:100%; 
			height:150px; 
			text-align:center;
			line-height:1.6;
			border:1px solid pink;">
	<br><br>
	<p>
	<%=result %> 
	<br>
	
	<%
	if(cnt == 1) {
	%>	
		<input type="text" name="userId" value="<%=userId %>" 
					style="width:120px;">
		<span style="padding:3px;background:#ccc;">
			<a href="javascript:fn_idcheck()">조회</a>
		</span>
		<br>
	
	<%
	}
	%>
	<br>
	<button type="button" onclick="self.close();">close</button>
	</p>
</div>


</form>
</body>
</html>