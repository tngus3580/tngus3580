<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>

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
	Date today = new Date();
	SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy/MM/dd");
	SimpleDateFormat sdf2 = new SimpleDateFormat("hh:mm:ss");
%>	
		
<h1>날짜/시간 출력</h1>
<p>현재 날짜 : <% out.println(sdf1.format(today)); %></p>
<p>현재 시간 : <% out.println(sdf2.format(today)); %></p>
</body>
</html>