<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<link rel="stylesheet" href="../static/css/index.css">
<link rel="stylesheet" href="../static/css/user.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	 rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<%@ include file = "../include/dbcon.jsp" %>

<script>
function fn_login() {	
	self.close();
	opener.location.href = "loginWrite.jsp";
}
</script>
    
<%
String userName = request.getParameter("userName");
String userEmail = request.getParameter("userEmail");

if (userName == null || userEmail == null) {
	userName = "";
	userEmail = "";
}


String sql1 = "select count(*) total from usertbl " 
		   + "where username = '" + userName + "' and useremail = '" + userEmail + "'";
ResultSet rs1 = stmt.executeQuery(sql1);
rs1.next();
int total = rs1.getInt("total");

String sql2 = "select userid from usertbl " 
		   + "where username = '" + userName + "' and useremail = '" + userEmail + "'";
ResultSet rs2 = stmt.executeQuery(sql2);

String str = "";

if (total == 0) {

	str = "<font style='color:black; font-weight:bold'>이름과 이메일 주소를 확인해주세요.</font>";

} else {
	
	rs2.next();
	String userId = rs2.getString("userId");
	
	str = "<font style='color:blue;'>아이디:" + userId + "</font>";		
}

%>    
<body  style="background:#e0c197;">
<div style="text-align:center; margin-top:20px;">
<p><%=str %></p>
</div>
<div style="text-align:center;">
<button class="button_login" onclick="fn_login();" style="width:100px; margin-top:10px">로그인하기</button>
<button class="button_write" onclick="self.close();" style="width:100px; margin-top:10px">닫기</button>
</div>
</body>