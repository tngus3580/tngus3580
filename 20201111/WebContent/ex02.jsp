<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
</head>
<body>
	<!-- exception예외처리, 쿠키, 세션, update로직 완성하고,, 고급 sql.. -->
	
	<%
		Cookie cookie = new Cookie("id","asdf");
		cookie.setMaxAge(60*60*24);//24시간 저장..
		response.addCookie(cookie);
	%>
	<h3>쿠키 생성이 완료되었습니다.</h3>
	<form action="ex02_checked.jsp">
		<input type="submit" value="쿠키확인">
	</form>
</body>
</html>