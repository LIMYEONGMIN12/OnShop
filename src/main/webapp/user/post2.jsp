<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- DB연결 -->
<%@ include file="../include/dbcon.jsp" %>

<!-- 파라메터값 받기 -->
<%
String dong = request.getParameter("dong");

// a4, a5 에서 단어(동) 검색 - LIKE 검색

String sql2 = "	SELECT COUNT(*) total FROM post "
			+ "		WHERE a4 LIKE '%"+dong+"%' OR a5 LIKE '%"+dong+"%' ";
ResultSet rs2 = stmt.executeQuery(sql2);
rs2.next();
int total = rs2.getInt("total");

String sql = " SELECT a1, a2||' '||a3||' '||a4||' '||a5||' '||a6||' '||a7|| a8 addr FROM post "
			+ "	WHERE a4 LIKE '%"+dong+"%' OR a5 LIKE '%"+dong+"%' ";
ResultSet rs = stmt.executeQuery(sql);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
.div1 {
	background-color:#fffedb;
	font-size:12px;
	font-weight:bold;
	color:#272727;
	font-family:arial;
	width:480px;
	height:250px;
	line-height:2.0;
	text-align:center;
}
a { text-decoration:none; }
</style>

<script>

function fn_action() {
	
	// 123456 서울특별시 서초구 서초1동 ..
	var address = document.frm.address.value;
	// 우편번호와 주소 분리
	let zipcode = address.split(" ")[0];
	//let addr = address.split(" ")[1];
	let addr = address.substring(6).trim();
	
	// 부모창에 우편번호 입력
	opener.document.frm.userZipcode.value = zipcode;
	 
	// 부모창에 주소 입력
	opener.document.frm.userAddr1.value = addr;
	
	// 스스로 창 닫기
	self.close();
}
</script>
	


<body>
<div class="div1" >
	<div style="margin-bottom:30px;">
	총 : <%=total %>건 검색
	</div>
	<div style="margin:0 auto;">
	
	<%
	if(total > 0) {
	%>
		<form name="frm" method="post" action="post2.jsp">
		<select name="address">
	
		<%
		while( rs.next() ) {
			String a1 = rs.getString("a1");
			String addr = rs.getString("addr");
		%>
		<option value="<%=a1 %> <%=addr %>">[<%=a1 %>] <%=addr %></option>
		<%
		}
		%>
		</select>
		</form>
	<%
	} else {
		out.print("검색 내용이 없습니다.");
	}
	%>
	</div>
	<div>
		<button type="button" onclick="fn_action()">적용</button>
		<button type="button" onclick="self.close();">닫기</button>
	</div>
</div>

</body>
</html>






