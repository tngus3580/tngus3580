<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	public int plus(int num1, int num2){
		return num1 + num2 ; 
	}
	public int minus(int num1, int num2){
		return num1 - num2 ;
	}
	public int gob(int num1, int num2){
		return num1 * num2 ;
	}
	public int nanum(int num1, int num2){
		return num1 / num2 ;
	}
	public int nmg(int num1, int num2){
		return num1 % num2 ;
	}
	%>
	
	<%
	int num1=10;
	int num2=3;
	%>
	
	<h1><%=num1%>,<%=num2%>의 오칙 연산 결과</h1>
	<p><%=num1%>,<%=num2%>의 덧셈 결과는 [<%=plus(num1,num2)%>]입니다.</p>
	<p><%=num1%>,<%=num2%>의 뺄셈 결과는 [<%=minus(num1,num2)%>]입니다.</p>
	<p><%=num1%>,<%=num2%>의 곱셈 결과는 [<%=gob(num1,num2)%>]입니다.</p>
	<p><%=num1%>,<%=num2%>의 나눗셈 결과는 [<%=nanum(num1,num2)%>]입니다.</p>
	<p><%=num1%>,<%=num2%>의 나머지 연산 결과는 [<%=nmg(num1,num2)%>]입니다.</p>
</body>
</html>