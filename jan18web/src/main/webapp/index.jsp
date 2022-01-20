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
//여긴 자바입니다
String name = "홍길동";
%>
<!-- html -->
		<h1>인덱스입니다</h1>
		<a href="./main.jsp?name=hong">메인으로</a>
		파라미터 main.jsp?이름=값<br>
		파라미터 main.jsp?이름=값&이름2=값2
		<br>
		이름은 : <%=name %> <br>
		/Test에서 보낸 메시지 입니다 : <%=request.getAttribute("page") %>
		
		수정해봅니다
		
		
</body>
</html>