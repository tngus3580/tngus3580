<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  taglib jstl 을 사용하기 위해 jar 파일 추가함 -->
	<%
		for(int i=0; i<10; i++){
			out.println("i= " +i);
		}
	%>
	<c:forEach begin="1" end="10" var="i">
		i=${ i }
	</c:forEach>
</body>
</html>