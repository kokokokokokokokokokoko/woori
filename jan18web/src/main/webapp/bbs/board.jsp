<%@page import="board.BoardDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>
</head>
<body>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

		<h1>board</h1>
		<a href="../main.jsp">상위로</a><br>
<!-- 		jar넣고, db연결하고 데이터 불러오고 화면에 찍어주고 -->

		<%
		Connection conn = null; //접속정보
		Statement stmt = null; //sql
		String url = "jdbc:mariadb://localhost/sw6099";
		String id = "sw6099";
		String pw = "01234567";
		String sql = "SELECT * from boardview limit 0, 10";//최신글 10개만 보이게
		
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection(url, id, pw); //접속정보 저장
		
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql); //실제 db작업 끝
		
		//내용을 담을 리스트를 만들겠습니다
		ArrayList<Map<String,String>> list = new ArrayList<Map<String,String>>();
		
		
		
// 		while(rs.next()){
// 			Map<String,String> map = new HashMap<String,String>();
// 			//리스트에 담기 위해서 한줄(레코드)을 다 담을 수 있는 녀석?
// 			//DTO = Map
// 			map.put("bno", rs.getString("bno"));
// 			map.put("btitle", rs.getString("btitle"));
// 			map.put("bdate", rs.getString("bdate"));
// 			map.put("lno", rs.getString("lno"));
// 			map.put("bcount", rs.getString("bcount"));
// 			map.put("lname", rs.getString("lname"));
// 			list.add(map); //하나하나 저장한 것을 리스트에 넣어주기 (꼭 필요함)
// 		}
		
		ArrayList<BoardDTO> list2 = new ArrayList<BoardDTO>();
		while(rs.next()){
			BoardDTO dto = new BoardDTO(
					rs.getString("bno"), rs.getString("btitle"), rs.getString("bdate"),
					rs.getString("bcount"), rs.getString("lno"), rs.getString("lname")
						); //순서대로
// 			dto.setBno(rs.getString("bno"));
// 			dto.setBtitle(rs.getString("btitle"));
// 			dto.setBdate(rs.getString("bdate"));
// 			dto.setLno(rs.getString("lno"));
// 			dto.setBcount(rs.getString("bcount"));
// 			dto.setLname(rs.getString("lname"));
			list2.add(dto);
		}
		
		%>
		<table class="table table-striped table-hover">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>날짜</td>
				<td>쓴사람</td>
				<td>조회수</td>
			</tr>
		
<!-- 		출력 -->
		<% for(int i = 0; i < list2.size(); i++){%>
		
			<tr>
				<td><%=list2.get(i).getBno() %></td>
				<td><%=list2.get(i).getBtitle() %></td>
				<td><%=list2.get(i).getBdate() %></td>
				<td><%=list2.get(i).getLname() %></td>
				<td><%=list2.get(i).getBcount() %></td>
			</tr>
		<%=list2.get(i).getBno() %>
		<%=list2.get(i).getBtitle() %>
		<%=list2.get(i).getBdate() %><br>
		
		<%} %>
			</table>
</body>
</html>