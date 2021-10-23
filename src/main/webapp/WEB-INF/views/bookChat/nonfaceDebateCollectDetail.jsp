<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

		<section class="breadcrumbs-custom bg-image"
			style="background-image: url(${path}/resources/images/breadcrumbs-bg.jpg);">
			<div class="breadcrumbs-custom-inner">
				<div class="breadcrumbs-custom-container container">
					<div class="breadcrumbs-custom-main">
						<h6 class="breadcrumbs-custom-subtitle title-decorated" style="color:white;">토론 모집</h6>
						<h1 class="breadcrumbs-custom-title" style="color:white;">토론 모집</h1>
					</div>
				</div>
			</div>
		</section>

<div class="container" style="margin-top : 30px;">
<div class="row container-board-padding" style="display: flex; justify-content: center;">
<div class="col-sm-12 col-md-12 col-lg-12  col-xl-9 table-responsive wow fadeIn row "> 

<table class="table table-hover table-job-positions text-center">
	<tr>
		<td>글번호 : ${map.debatecolSeq }</td>
		<td>제목 : ${map.debateTitle }</td>
		<td>작성자 : ${map.userId }</td>
	</tr>
	<tr>
		<td colspan="2">개설일/마감일 : <fmt:formatDate value="${map.openDate }" type="date" /> / <fmt:formatDate value="${map.fromDate }" type="date" /></td>
		<td>참여인원/모집인원 : <span id="partPers">${map.partPers }</span> / ${map.colPers } 
		<c:if test="${map.userId ne sessionScope.loginSession.userId }">
		<div id="partBtn">
		<c:if test="${map.partPers ne map.colPers }">
			<c:if test="${sessionScope.loginSession.userSeq ne map.userSeq && flag eq false}">
			<button type="button" onclick="joinDebate()" class="button button-primary button-winona">참여하기</button>
			</c:if>
		</c:if>
			<c:if test="${sessionScope.loginSession.userSeq ne map.userSeq && flag eq true}">
			<button type="button" onclick="cancleDebate()" class="button button-primary-outline button-winona">참여취소</button>
			</c:if>
		</div>
		</c:if>
		
		</td>
	</tr>
</table>

<div style="height: 500px;">
${map.debateCon }
</div>

<a href="/bookChat/nonfaceDebateCollect"><button class="button button-primary button-winona">목록</button></a>

<c:set var="admin" value="adminmaster" />
<c:if test="${sessionScope.loginSession.userSeq eq map.userSeq || sessionScope.loginSession.userId eq admin}">
<a href="/bookChat/nonfaceDebateCollectDelete?no=${map.debatecolSeq }"><button class="button button-primary-outline button-winona">삭제</button></a>
</c:if>

</div>
</div>
</div>

<script type="text/javascript">

var debateSeq = ${map.debatecolSeq};
var userSeq = ${sessionScope.loginSession.userSeq};

function joinDebate() {
	
	$.ajax({
		method : "get"
		, url : "/bookChat/joinDebate"
		, data : {"debateSeq" : debateSeq
				, "userSeq" : userSeq}
		,success : function(data) {
			
			alert('참여 완료');
			
			$("#partPers").html("");
			$("#partPers").html(data);
			
			$("#partBtn").html("");
			$("#partBtn").html('<button type="button" onclick="cancleDebate()" class="button button-primary-outline button-winona">참여취소</button>');
		}
	})
}

function cancleDebate() {
	
	$.ajax({
		method : "get"
		, url : "/bookChat/cancleDebate"
		, data : {"debateSeq" : debateSeq
				, "userSeq" : userSeq}
		, success : function(data) {
			
			alert('참여 취소 완료');
			
			$("#partPers").html("");
			$("#partPers").html(data);
			
			$("#partBtn").html("");
			$("#partBtn").html('<button type="button" onclick="joinDebate()" class="button button-primary button-winona">참여하기</button>');
		}
	})
}

</script>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>