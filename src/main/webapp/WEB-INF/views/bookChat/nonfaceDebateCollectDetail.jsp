<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<div class="container" style="margin-top : 30px;">
<div class="row container-board-padding">
<div class="col-sm-12 col-md-12 col-lg-12  col-xl-9 table-responsive wow fadeIn row "> 

<table class="table table-hover table-job-positions text-center">
	<tr>
		<td>글번호 : ${map.debatecolSeq }</td>
		<td>제목 : ${map.debateTitle }</td>
		<td>작성자 : ${map.userId }</td>
	</tr>
	<tr>
		<td colspan="2">개설일/마감일 : <fmt:formatDate value="${map.openDate }" type="date" /> / <fmt:formatDate value="${map.fromDate }" type="date" /></td>
		<td>참여인원/모집인원 : ${map.partPers } / ${map.colPers } 
		<c:if test="${sessionScope.loginSession.userSeq ne map.userSeq}">
		<button type="button" onclick="joinDebate()">참여하기</button>
		</c:if>
		</td>
	</tr>
</table>

<div style="height: 500px;">
${map.debateCon }
</div>

<a href="/bookChat/nonfaceDebateCollect"><button>목록</button></a>
<a href="/bookChat/nonfaceDebateCollectDelete?no=${map.debatecolSeq }"><button>삭제</button></a>


</div>
</div>
</div>

<script type="text/javascript">

function joinDebate() {
	
	var debateSeq = ${map.debatecolSeq};
	var userSeq = ${sessionScope.loginSession.userSeq};
	var userId = "${sessionScope.loginSession.userId}";
	
	$.ajax({
		method : "get"
		, url : "/bookChat/joinDebate"
		, data : {"debateSeq" : debateSeq
				, "userSeq" : userSeq
				, "userId" : userId}
		,success : function() {
			
		}
	})
}

</script>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>