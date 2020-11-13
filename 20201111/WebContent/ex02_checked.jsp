<%@page import="java.util.concurrent.CopyOnWriteArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = "";
		Cookie[] cookies =request.getCookies();
		for(Cookie cook: cookies){
			out.println("쿠키 이름 = " + cook.getName());
			out.println("쿠키 값 = " + cook.getValue());
			out.println("<br>");
			if(cook.getName().equals("id")){
				id=cook.getValue();
			}
		}
	%>
	<form>
	id= <input type="text" value="<%=id%>">
	</form>
</body>
</html>