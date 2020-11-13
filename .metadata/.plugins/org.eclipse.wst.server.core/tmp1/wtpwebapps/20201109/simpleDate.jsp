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
<%@ include file = "include.html"%>
<%
		//include 한번 더
		//taglib지시자
		
		//jar 관리 하는 회사 .. maven
		//소스 읽는거는 할수 있는데 개발 도구 사용방법...
		//Toad sql
		
		//메서드 선언과 <% = 스크립트릿
		//연습문제... 오전에..
		//오후에는 oracle 진행..
		//DB연결객체
%>
	<% 
		Date today = new Date();
		out.println("today = "+today+"<br>");
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMdd");
		SimpleDateFormat sdf2 = new SimpleDateFormat("hh:mm:ss");
		
		out.println("sdf1=" + sdf1.format(today));
		out.println("sdf2=" + sdf1.format(today));
	%>
</body>
</html>