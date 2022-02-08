<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file = "../include/dbcon.jsp" %>    
    
<%
	String unq = request.getParameter("unq");
	String sql = "DELETE board where unq = '" + unq + "'";
	int result = stmt.executeUpdate(sql);
	
	if (result == 1) {
		%>
			<script>
				alert("삭제완료");
				location="boardList.jsp";
			</script>
		<%
	}
%>    