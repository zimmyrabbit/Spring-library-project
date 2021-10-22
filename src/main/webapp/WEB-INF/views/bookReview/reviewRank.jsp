<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<c:set var="path" value="${pageContext.request.contextPath}" />
		
		<section class="breadcrumbs-custom bg-image"
			style="background-image: url(${path}/resources/images/breadcrumbs-bg.jpg);">
			<div class="breadcrumbs-custom-inner">
				<div class="breadcrumbs-custom-container container">
					<div class="breadcrumbs-custom-main">
						<h6 class="breadcrumbs-custom-subtitle title-decorated">랭킹 이벤트</h6>
						<h1 class="breadcrumbs-custom-title">도서 리뷰 랭킹</h1>
					</div>
				</div>
			</div>
		</section>
		


		  <div class="container" style="margin-top : 30px;">
		  <div class="row container-board-padding">
	          <div class="col-md-12 table-responsive wow fadeIn row ">      
<table class="table table-hover table-job-positions text-center" style="margin-top: 75px;">
<thead class="thead_top">
	<tr>
		<th width="10%">랭킹</th>
		<th width="60%">아이디</th>
		<th width="15%" style="font-weight: bold;">받은 추천 수<img src="<c:url value='/resources/like/thumbs-up.png'/>"></th>
		<th width="15%">작성한 글</th>
	</tr>
</thead>	
	<c:forEach items="${ like }" varStatus="status" var="like">
		<tr>
			<td>${status.count }</td>
			<td>${like.userId }</td>
			<td style="font-weight: bold;">${like.likeCnt }</td>
			<td>${like.reviewCnt }</td>
		</tr>
	</c:forEach>
</table>


<table class="table table-hover table-job-positions text-center" style="margin-top: 180px;">
<thead class="thead_top">
	<tr>
		<th width="10%">랭킹</th>
		<th width="60%">아이디</th>
		<th width="15%" style="font-weight: bold;">작성한 리뷰 수<img src="<c:url value='/resources/like/thumbs-up.png'/>"></th>
		<th width="15%">받은 추천 수</th>
	</tr>
</thead>	
	<c:forEach items="${ review }" varStatus="status" var="review">
		<tr>
			<td>${status.count }</td>
			<td>${review.userId }</td>
			<td style="font-weight: bold;">${review.reviewCnt }</td>
			<td>${review.likeCnt }</td>
		</tr>
	</c:forEach>
</table>

<table class="table table-hover table-job-positions text-center" style="margin-top: 180px; margin-bottom: 50px;">
<thead class="thead_top">
	<tr>
		<th width="10%">랭킹</th>
		<th width="60%" style="font-weight: bold;">베스트 책<img src="<c:url value='/resources/like/thumbs-up.png'/>"></th>
		<th width="15%">전체 글 수</th>
		<th width="15%">책 정보 바로가기</th>
	</tr>
</thead>	
	<c:forEach items="${ bestBook }" varStatus="status" var="bestBook">
		<tr>
			<td>${status.count }</td>
			<td style="font-weight: bold;">${bestBook.title }</td>
			<td>${bestBook.cnt }</td>
			<td><img src="<c:url value='/resources/book/search.PNG'/>" style="cursor: pointer;" onclick="window.open('https://search.kyobobook.co.kr/web/search?vPstrKeyWord=${bestBook.title}&orderClick=LAG')"></td>
		</tr>
	</c:forEach>	

</table>
</div>
</div>
</div>



		
<script>

</script>		

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>