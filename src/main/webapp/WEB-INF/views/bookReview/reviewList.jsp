<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<c:set var="path" value="${pageContext.request.contextPath}" />
		
		<section class="breadcrumbs-custom bg-image"
			style="background-image: url(${path}/resources/images/breadcrumbs-bg.jpg);">
			<div class="breadcrumbs-custom-inner">
				<div class="breadcrumbs-custom-container container">
					<div class="breadcrumbs-custom-main">
						<h6 class="breadcrumbs-custom-subtitle title-decorated" style="color:white;">도서 리뷰</h6>
						<h1 class="breadcrumbs-custom-title" style="color:white;">도서 리뷰</h1>
					</div>
				</div>
			</div>
		</section>
		
		<div class="container" style="margin-top : 30px;">
			<div class="row container-board-padding" style="justify-content: center;">
	          	<div class="col-md-12 table-responsive wow fadeIn row ">      
					<table class="table table-hover table-job-positions text-center">
						<thead class="thead_top">
							<tr>
								<th>글번호</th>
								<th>이미지</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
							</tr>
						</thead>	
							<c:forEach items="${list }" var="item">
								<tr>
									<td>${item.reviewSeq }</td>
									<td><img src="${item.bookImg }" style="width:60px; height:80px;" />
									<td><a href="/bookReview/reviewDetail?reviewSeq=${item.reviewSeq }">${item.bookName }</a></td>
									<td>${item.userId }</td>
									<td><fmt:formatDate value="${item.enrollDate }" type="date" /></td>
								</tr>
							</c:forEach>
							<c:if test="${empty list }">
								<tr>
									<th colspan="7">작성된 리뷰가 없습니다.</th>
								<tr>
							</c:if>
					</table>
					<button type="submit" id="search" name="search" class="button button-primary button-winona" style="margin-bottom: 100px;" onclick="bookSearch()">리뷰 작성하기</button>

				</div>
			</div>
		</div>
<script>
function bookSearch() {
	location.href = "<c:url value='/bookSearch/bookSearch'/>";
}
</script>		

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>