<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<a href="../../main.jsp"> main으로 가고싶어요 </a><br>
		<a href="/main.jsp"> 최상단으로 </a><br>
		<a href="./main.jsp"> 내 위치에서 </a>
		${pageContext.request.contextPath } 프로젝트명 호출<br>
		<a href="${pageContext.request.contextPath }/main.jsp">최상단으로</a><br>

</body>
</html>