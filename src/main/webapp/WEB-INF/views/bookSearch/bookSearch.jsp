<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<input type="text" id="bookName" name="bookName"/>
<button type="submit" id="search" name="search">검색</button>

<div id="bookList"></div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

$("#search").click(function() {
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
			
			for(var i=0; i<data.documents.length; i++) {
				getBookList += "<div>"
				getBookList += "<div>" + data.documents[i].title + "</div>"
				getBookList += "<div> <a href=" + data.documents[i].url +"><img src='" + data.documents[i].thumbnail + "'/></a> </div>"
				getBookList += "<a href='/bookChat/nonfaceDebateCollectWrite?title=" + data.documents[i].title + "'><button>토론모집</button></a>"
				getBookList += "<a href='/bookReview/reviewWrite?title=" + data.documents[i].title + "&isbn=" + data.documents[i].isbn + "&bookIntro=" + data.documents[i].contents + "&bookImg=" + data.documents[i].thumbnail + "&bookUrl=" + data.documents[i].url + "'><button>리뷰작성</button></a>"
				getBookList += "</div>"
			}
			
			$("#bookList").html("");
			$("#bookList").html(getBookList);
		})
})


</script>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>