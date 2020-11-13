<%@page import="com.mh.org.bean.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Member member = (Member)request.getAttribute("member");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
	body{
	}
	div{
		width:600px;
		margin: 0 auto;
		background-color: blue;
	}
</style>
</head>
<body>
<div>
<h1>회원수정</h1>
<form action="Update" method="post">
	<input type="text" name="idx" value="<%=member.getIdx()%>">
	<table>
		<tr><td>이름</td><td><input type="text" name="name" value="<%=member.getPname()%>"/></td></tr>
		<tr>
			<td>성별</td>
			<td>
				<select name="gender">
					<option value="남자">남자</option>
					<option value="여자">여자</option>
				</select>
			</td>
		</tr>
		<tr><td>아이디</td><td><input type="text" name="id" value="<%=member.getPid()%>"/></td></tr>
		<tr><td>비밀번호</td><td><input type="text" name="pwd" value="<%=member.getPpwd()%>"/></td></tr>
		<tr><td>비밀번호 확인</td><td><input type="text" name="cpwd" value="<%=member.getPcpwd()%>"/></td></tr>
		<tr><td>주소</td><td><input type="text" name="addr" value="<%=member.getPaddr()%>"/></td></tr>
		<tr><td>전화번호</td><td><input type="text" name="phone" value="<%=member.getPphone()%>"/></td></tr>
		<tr><td>이메일주소</td><td><input type="text" name="email" value="<%=member.getPemail()%>"/></td></tr>
		<tr>
			<td>취미</td>
			<td style="width:170px;"><input type="checkbox" name="hobby" value="축구"/>축구
			<input type="checkbox" name="hobby" value="야구"/>야구
			<input type="checkbox" name="hobby" value="농구"/>농구
			<input type="checkbox" name="hobby" value="수영"/>수영
			<input type="checkbox" name="hobby" value="연극"/>연극
			<input type="checkbox" name="hobby" value="수영"/>수영
			<input type="checkbox" name="hobby" value="게임"/>게임
			<input type="checkbox" name="hobby" value="독서"/>독서
			</td>
		</tr>
	</table>
	<hr>
	<input type="submit" value="회원가입"/>
</form>
</div>
</body>
</html>