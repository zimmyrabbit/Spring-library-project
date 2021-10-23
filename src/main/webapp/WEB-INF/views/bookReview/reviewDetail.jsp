<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<div class="container" style="margin-top : 30px;">
<div class="row container-board-padding" style="display: flex; justify-content: center;">
<div class="col-sm-12 col-md-12 col-lg-12  col-xl-9 table-responsive wow fadeIn row "> 

		<div style="font-size: 1.5em; margin : 40px 0px;">
			<span style="margin-right:30px;">제목 : ${map.bookName}</span>
			<span style="margin-right:30px;">등록일 : <fmt:formatDate value="${map.enrollDate }" type="date" /></span>
			
			<c:if test="${ like gt 0 }">
			<img src="<c:url value='/resources/like/like.png'/>" style="width:46px; height:46px" id="like" data-like="N">
			</c:if>
			<c:if test="${ like lt 1 }">
			<img src="<c:url value='/resources/like/default_like.png'/>" style="width:46px; height:46px" id="like" data-like="N">
			</c:if>
		</div>
		
		<table style="margin : 40px 0px;">
			<tr>
			<td width="130px;"><img src="${map.bookImg }" style="height:173px;"/></td>
			<td>${map.bookIntro }<td>
			</tr>
		</table>
		
		<div style="padding-top: 20px; border-top:1px solid black; height:300px; margin-bottom: 40px; ">
		${map.bookRev}
		</div>
		
		<c:set var="admin" value="adminmaster" />
		<c:if test="${sessionScope.loginSession.userSeq eq map.userSeq || sessionScope.loginSession.userId eq admin}">
		<a href="/bookChat/bookReviewDelete?board_id=${map.reviewSeq }"><button class="button button-primary button-winona" style="margin-bottom: 40px;" >삭제</button></a>
		</c:if>
		
</div>
</div>
</div>
		
		
		
<script>
$('#like').click(function(){
	let like = $(this).data('like');
	let src = like == "N" ? "<c:url value='/resources/like/like.png'/>":"<c:url value='/resources/like/default_like.png'/>";
	let _likeYn = like == "N" ? "Y":"N"; 
	$(this).attr("src", src);
	$(this).data('like', _likeYn);
	let reviewSeq = '${map.reviewSeq }';

	$.ajax({
		type : 'POST',
		url : "<c:url value='/bookReview/like'/>",
		contentType : "application/x-www-form-urlencoded; charset=UTF-8",
		dataType : "json",
		data : {'_likeYn': _likeYn, 'reviewSeq': reviewSeq, 'userId': '${sessionScope.loginSession.userSeq}' },
		success : function(data) {
			console.log('좋아요 버튼');
		},
		error : function(xhr, status, error) {
			alert('예기치 못한 에러 발생');
		}
	});
});
</script>		

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>