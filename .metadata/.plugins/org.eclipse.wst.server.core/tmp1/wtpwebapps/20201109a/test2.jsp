<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<h1>1~10까지 홀수 짝수 여부 출력</h1>
		<%
			for (int i = 0; i <= 10; i++) {
		%>
		<tr>
			<td>
				<%
					out.print(i);
				%>
			</td>

			<td>
				<%
					if (i % 2 == 0) {
					out.print("짝수 입니다.");
				} else if (i % 2 != 0) {
					out.print("홀수 입니다.");
				}
				%>
			</td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>