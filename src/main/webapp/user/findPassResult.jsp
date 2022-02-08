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
String user_name = request.getParameter("user_name");
String user_id = request.getParameter("user_id");

if (user_name == null || user_id == null) {
	user_name = "";
	user_id = "";
}


String sql1 = "select count(*) total from user_tbl " 
		   + "where user_name = '" + user_name + "' and user_id = '" + user_id + "'";
ResultSet rs1 = stmt.executeQuery(sql1);
rs1.next();
int total = rs1.getInt("total");

String sql2 = "select user_pwd from user_tbl " 
		   + "where user_name = '" + user_name + "' and user_id = '" + user_id + "'";
ResultSet rs2 = stmt.executeQuery(sql2);

String str = "";

if (total == 0) {

	str = "<font style='color:black; font-weight:bold'>이름과 아이디를 확인해주세요.</font>";

} else {
	
	rs2.next();
	String user_pwd = rs2.getString("user_pwd");
	
	str = "<font style='color:blue;'>비밀번호:" + user_pwd + "</font>";		
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