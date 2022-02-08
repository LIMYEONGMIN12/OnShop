<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file = "../include/dbcon.jsp" %>

<%
String sql = "SELECT count(*) total FROM review_tbl WHERE product_unq = 1";
ResultSet rs = stmt.executeQuery(sql);
rs.next();
int total = rs.getInt("total");

String sql2 = "SELECT unq, product_unq, user_id, user_name, product_name, product_color, product_size, rating, rdate, content FROM review_tbl where product_unq = 1 order by rdate desc";
ResultSet rs2 = stmt.executeQuery(sql2);
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../static/css/review.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
 rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">	
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>

<div class="list_total">
리뷰 <%=total %>건
</div>

<ul>

<%@ include file = "reviewWrite.jsp" %>

<%

while(rs2.next()) {
	String product_unq = rs2.getString("product_unq");
	String user_id2 = rs2.getString("user_id");
	String user_name2 = rs2.getString("user_name");
	String product_name = rs2.getString("product_name");
	String product_color = rs2.getString("product_color");
	String product_size = rs2.getString("product_size");
	String content = rs2.getString("content");
	String rdate = rs2.getString("rdate");
	String rating = rs2.getString("rating");
	
	String rdate_short = rdate.substring(0,10);
	
	%>
		<li>
			<div>
				<div>
					<% 
						for (int i = 1; i <= Integer.parseInt(rating); i++) {
							%>
								<i class="fas fa-star" style="color:#FFD700"></i>
							<%
						}					
					%>
					<%
						for (int i = 4; i >= Integer.parseInt(rating); i--) {
							%>
								<i class="fas fa-star" style="color:#dbdbdb"></i>
							<%
						}
					%>
				</div>
				<div>
					닉네임: <%=user_name2 %> / <%=rdate_short %>
				</div>
				<div>
					COLOR: <%=product_color %> / SIZE: <%=product_size %>
				</div>
				<div>
					<%=content %>
				</div>
			</div>
		</li>
	<%
}	
%>

</ul>
</body>
</html>