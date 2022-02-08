<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/dbcon.jsp" %>
 
<%
/*
for(int i=1; i<= 1500;i++){
String sql = " INSERT INTO nboard(unq,title,pass,name,content,rdate) "
           + "  VALUES(nboard_seq.nextval,'test"+i+"','1111','aa"+i+"','bb"+i+"',sysdate)";
 
stmt.executeUpdate(sql);
}
*/
%>
 
 
<!DOCTYPE html>
<html lang="kr">
 <head>
  <meta charset="UTF-8">
    <title>Document</title>
      <link rel="stylesheet" href="../css/layout.css">
    <link rel="stylesheet" href="../css/main.css">
     
     <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
     
 </head>
 
 
 
 
<style>
 
  p {
 
     font-size:12px;
 
     color:green;
 
 }
 
</style>
 
<body>
 
<input type="text" id="text" value="오늘은 좋은날">
 
<p></p>
 
<script>
 
$( "#text")
 
.keyup(function() {
 
      var value = $( this ).val();
 
      $( "p" ).text( value );
 
})
 
.keyup();
 
</script>
 
</body>
 
</html>