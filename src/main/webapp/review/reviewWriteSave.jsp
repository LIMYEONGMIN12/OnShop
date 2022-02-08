<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../include/dbcon.jsp" %>    

<%
String product_unq = request.getParameter("product_unq");
String user_id = request.getParameter("user_id");
String user_name = request.getParameter("user_name");
String rdate = request.getParameter("rdate");
String rating = request.getParameter("rating");
String content = request.getParameter("content");

if (user_id == null ) {
	%>
		<script>
			alert("잘못된 접근입니다. 로그인을 먼저 해주세요.");
			history.back();
		</script>		
	<%
	return;
}

if (rating == null || rating.equals("null") ) {
	%>
		<script>
			alert("평점을 입력해주세요.");
			history.back();
		</script>
	<%
	return;
}

if (content == null || content.equals("null")) {
	content = "";
}



String sql = "INSERT INTO review_tbl (unq, product_unq, user_id, user_name, rdate, rating, content) "
		   + "VALUES "
		   			+ "( review_tbl_seq.nextval, "
   					+ "'" + product_unq + "',"
					+ "'" + user_id + "',"
					+ "'" + user_name + "',"
					+ 		" sysdate, "
					+ 		rating + ","
					+ "'" + content + "')";

int result = stmt.executeUpdate(sql);

if (result == 1) {
	%>
		<script>
			alert("저장성공");		
			location.href="reviewList.jsp"
		</script>
	<%
} else {
	%>
		<script>
			alert("저장실패");			
		</script>
	<%
}
%> 

 
