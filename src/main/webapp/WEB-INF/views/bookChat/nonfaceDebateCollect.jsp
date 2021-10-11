<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
	<tr>
		<th>글번호</th> <!-- 글번호 -->
		<th>제목</th> <!-- 제목 -->
		<th>개설일</th> <!-- 작성일자 -->
		<th>마감일</th> <!-- 작성일자 -->
		<th>모집인원</th> <!-- 작성일자 -->
		<th>참여인원</th> <!-- 작성일자 -->
		<th>작성자</th>
	</tr>
	<c:forEach items="${list }" var="item">
		<tr>
			<td>${item.debatecolSeq }</td>
			<td><a href="/bookChat/nonfaceDebateCollectDetail?no=${item.debatecolSeq}">${item.debateTitle }</a></td>
			<td><fmt:formatDate value="${item.openDate }" type="date" /></td>
			<td><fmt:formatDate value="${item.fromDate }" type="date" /></td>
			<td>${item.colPers }</td>
			<td>${item.partPers }</td>
			<td>ㅇㅇㅇ</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>