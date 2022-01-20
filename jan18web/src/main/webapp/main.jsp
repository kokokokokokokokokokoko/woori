<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>main</h1>
		<%=request.getParameter("name") %> <br>
		${param.name } el표기법
		
		<%//자바열기 %> html에서 자바열어서 자바코드 쓸때
		
		<%
		String text = "";
		for(int a = 0; a<5; a++){
			//html
			text += "<h1>안녕하세요 반갑습니다</h1>";
		}
		%>
		
		<%=text %> <!-- 자바 값 하나 출력하기 /변수하나 -->
		<h1>안녕하세요 반갑습니다</h1>
		
		<hr>
		
		<%
		for(int i = 0; i<5; i++){
		%>
				<h1>여긴 html</h1>
		<%
		}
		%>
		
		<button onclick="location.href='./bbs/board.jsp' ">보드</button>
		<a href="./bbs/board.jsp">보드</a>
		
</body>
</html>