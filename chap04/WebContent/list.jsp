<%@page import="com.mh.org.bean.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- CRUD Insert 삽입 Reade 읽기 Update수정 Delete삭제 -->
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function doDelete(idx){
	alert("삭제로 왔음."+idx);
	location.href="Delete?idx="+idx;
}
function doUpdate(idx){
	alert("수정으로 왔음."+idx);
	location.href="Update?idx="+idx;
}
</script>
</head>
<body>
<p>회원목록</p>
<table border="1">
	<tr>
		<th>이름</th><th>성별</th><th>아이디</th><th>비밀번호</th>
		<th>주소</th>
		<th>연락처</th><th>이메일</th><th>취미</th><th></tr>
	<%
			ArrayList<Member> al = (ArrayList<Member>) request.getAttribute("list");
			for(int i = 0; i<al.size();i++){
				out.println("<tr>");
	%>
	<tr>
	<%
//		out.println("<td>"+al.get(i)+"</td>");
	%>
		</tr>
	<%
	out.println("<td>"+al.get(i).getPname()+"</td>");
	out.println("<td>"+al.get(i).getPgender()+"</td>");
	out.println("<td>"+al.get(i).getPid()+"</td>");
	out.println("<td>"+al.get(i).getPpwd()+"</td>");
	out.println("<td>"+al.get(i).getPaddr()+"</td>");
	out.println("<td>"+al.get(i).getPphone()+"</td>");
	out.println("<td>"+al.get(i).getPemail()+"</td>");
	out.println("<td>"+al.get(i).getPhobby()+"</td>");
	out.println("<td><button type='button' button onclick='doDelete("+al.get(i).getIdx()+");'>삭제 </button></td>");
	out.println("<td><button type='button' button onclick='doUpdate("+al.get(i).getIdx()+");'>수정 </button></td>");
	%>
	<%
	}
	%>
	
</table>
</body>
</html>