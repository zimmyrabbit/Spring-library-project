<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

		  <div class="container" style="margin-top : 30px;">
		  <div class="row container-board-padding">
	          <div class="col-md-12 table-responsive wow fadeIn row ">      
<table class="table table-hover table-job-positions text-center">
<thead class="thead_top">
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>개설일</th>
		<th>마감일</th>
		<th>참여인원/모집인원</th>
		<th>작성자</th>
	</tr>
</thead>	
	<c:forEach items="${list }" var="item">
		<tr>
			<td>${item.debatecolSeq }</td>
			<td><a href="/bookChat/nonfaceDebateCollectDetail?no=${item.debatecolSeq}">${item.debateTitle }</a></td>
			<td><fmt:formatDate value="${item.openDate }" type="date" /></td>
			<td><fmt:formatDate value="${item.fromDate }" type="date" /></td>
			<td>${item.partPers } / ${item.colPers }</td>
			<td>${item.userId }</td>
		</tr>
	</c:forEach>
	<c:if test="${empty list }">
		<tr>
			<th colspan="7">개설된 토론방이 없습니다.</th>
		<tr>
	</c:if>
</table>

</div>
</div>
</div>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>