<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ page import="conn.Cookies" %>
<%@ page import="conn.ConOracle" %>
<%

Statement stmt = ConOracle.dbconnect();
String userId = request.getParameter("userId");
String userPwd = request.getParameter("userPwd");


if( userId == null || userPwd == null ) {
%>
		<script>
		alert("잘못된 경로로의 접근!!");
		location="loginWrite.jsp";
		</script>
<%
return;
}
String sql2 = " select userNickname from userTBL where  userId='"+userId+"' ";
ResultSet rs2 = stmt.executeQuery(sql2);
String userNickname ="";
if(rs2.next()){
	userNickname = rs2.getString("userNickname");
}

String sql  = "	SELECT COUNT(*) cnt FROM userTBL "
	+ "		WHERE userId='"+userId+"' AND userPwd='"+userPwd+"' ";
ResultSet rs = stmt.executeQuery(sql);
rs.next();
int cnt = rs.getInt("cnt");

if( cnt == 0 ) {
%>
		<script>
		alert("다시 확인해 주세요.");
		history.go(-1);
		</script>
<%
return;
} else {
	
	session.setAttribute("SESSION_USERID", userId);
	session.setAttribute("SESSION_NICKNAME", userNickname);
//  서버의 /temp 디렉토리에 저장
//	session.setMaxInactiveInterval(15);

	/* if(chk == null) {	
		response.addCookie( Cookies.createCookie("COOKIE_USERID","","/",0));
	}  else {
   	    response.addCookie( Cookies.createCookie("COOKIE_USERID",userid,"/",-1));
	} */
}
%>
	<script>
	alert("<%=userNickname %>님 환영합니다. 로그인 되었습니다.");
	location="ShoppingMain.do";
	</script>




