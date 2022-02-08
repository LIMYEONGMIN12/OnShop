<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    <%

String USERID = (String)session.getAttribute("SESSION_USERID");

if(USERID==null){
	%>
	<script>
		alert("다시 로그인 해주세요;");
		
		if(opener == undefined){
			
			location = "ShoppingLoginWrite.do"
		}else{
			
			opener.location = "ShoppingLoginWrite.do";
			self.close();
		}
			
		
	</script>
<%

	}
	 %>