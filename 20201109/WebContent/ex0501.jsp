<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
구구단 출력
<table border="1">
	<tr>
		<td>2단</td><td>3단</td><td>4단</td><td>5단</td>
		<td>6단</td><td>7단</td><td>8단</td><td>9단</td>
	<%
		for(int j = 1; j< 10; j++){
			out.println("<tr>");
			for(int i=2; i<10; i++){
				out.println("<td>"+i+"*"+j+"="+(j*i)+"</td>");
			}
			out.println("</tr>");
		}
	%>
</table>
</body>
</html>