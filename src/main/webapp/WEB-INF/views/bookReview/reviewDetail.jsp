<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<div class="container" style="margin-top : 30px;">
<div class="row container-board-padding">
<div class="col-sm-12 col-md-12 col-lg-12  col-xl-9 table-responsive wow fadeIn row "> 

<form action="/bookReview/reviewWrite" method="post">
		
		<div>
			<img src="${map.bookImg }"/>
			제목 : <span>${map.bookName}</span> <br>
			주소 : <a href="${map.bookUrl }">${map.bookUrl }</a>
		</div>
		
		<div>
		<textarea rows="10" cols="40" readonly="readonly" id="bookIntro" name="bookIntro" style="overflow-x:hidden; overflow-y:auto;">${map.bookIntro }</textarea>
		</div>
		
		<div>
		<textarea rows="10" cols="40" id="bookRev" name="bookRev" readonly="readonly">${map.bookRev}</textarea>
		</div>
		
		<input type="hidden" value="${map.isbn }" id="isbn" name="isbn" />
		<input type="hidden" value="${map.bookUrl }" id="bookUrl" name="bookUrl" />
		<input type="hidden" value="${map.bookImg }" id="bookImg" name="bookImg" />
		
		<input type="submit" id="subBtn" value="쓰기" />
		
		<c:if test="${ like gt 0 }">
			<img src="<c:url value='/resources/like/like.png'/>" style="width:46px; height:46px" id="like" data-like="N">
		</c:if>
		<c:if test="${ like lt 1 }">
			<img src="<c:url value='/resources/like/default_like.png'/>" style="width:46px; height:46px" id="like" data-like="N">
		</c:if>
		
		<c:set var="admin" value="adminmaster" />
		<c:if test="${sessionScope.loginSession.userSeq eq map.userSeq || sessionScope.loginSession.userId eq admin}">
		<a href="/bookChat/bookReviewDelete?board_id=${map.reviewSeq }"><button>삭제</button></a>
		</c:if>
</form>


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