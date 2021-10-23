<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

		<section class="breadcrumbs-custom bg-image"
			style="background-image: url(${path}/resources/images/breadcrumbs-bg.jpg);">
			<div class="breadcrumbs-custom-inner">
				<div class="breadcrumbs-custom-container container">
					<div class="breadcrumbs-custom-main">
						<h6 class="breadcrumbs-custom-subtitle title-decorated" style="color:white;">도서 정보</h6>
						<h1 class="breadcrumbs-custom-title" style="color:white;">도서 정보</h1>
					</div>
				</div>
			</div>
		</section>

<div style="text-align:center; margin: 50px 0px;">

<div style="display: inline-block; border-bottom: 1px solid black; padding-bottom: 30px; margin-bottom : 20px;">
<input type="text" id="bookName" name="bookName" style="width:400px; display: inline" class="form-input form-control-has-validation form-control-last-child" onkeyup="enterkey();"/>
<button type="submit" id="search" name="search" class="button button-primary button-winona" style="margin:0px 30px;" onclick="bookSearch()">검색</button>
</div>

<div id="bookList">
<div style="height:400px; display:flex; justify-content: center; align-items: center; font-size: 2em;">
<div>책을 검색해 주세요!</div>
</div>
</div>

</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

function bookSearch() {
	$.ajax({
		method : 'GET'
		, url : "https://dapi.kakao.com/v3/search/book"
		, data : {query : $("#bookName").val()
				, sort : "accuracy"
				, size : 10}
		, headers : {Authorization : "KakaoAK 4f9d2baaf1698fedb094fc1e131ff625"}
	})
		.done(function(data) {
			
			var getBookList = "";
			
				getBookList += "<table style='display:inline-block; border-collapse: separate; border-spacing: 0 10px;'>"
			for(var i=0; i<data.documents.length; i++) {
				getBookList += "<tr>"
				getBookList += "<td> <a href=" + data.documents[i].url +"><img src='" + data.documents[i].thumbnail + "'/></a> </td>"
				getBookList += "<td>" + data.documents[i].title + "</td>"
				getBookList += "<td>"
				getBookList += "<a href='/bookChat/nonfaceDebateCollectWrite?title=" + data.documents[i].title + "'><button class='button button-primary-outline button-winona' style='padding:13px 13px;'>토론모집</button></a>"
				getBookList += "<a href='/bookReview/reviewWrite?title=" + data.documents[i].title + "&isbn=" + data.documents[i].isbn + "&bookIntro=" + data.documents[i].contents + "&bookImg=" + data.documents[i].thumbnail + "&bookUrl=" + data.documents[i].url + "'><button class='button button-primary-outline button-winona' style='padding:13px 13px;'>리뷰작성</button></a>"
				getBookList += "</td>"
				getBookList += "</tr>"
			}
				getBookList += "</table>"
			
			$("#bookList").html("");
			$("#bookList").html(getBookList);
		})
}

function enterkey() { 
	if (window.event.keyCode == 13) { 
		bookSearch();
	}
}


</script>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>