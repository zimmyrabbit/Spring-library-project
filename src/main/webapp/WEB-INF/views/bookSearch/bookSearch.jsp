<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<input type="text" id="bookName" name="bookName"/>
<button type="submit" id="search" name="search">검색</button>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

$("#search").click(function() {
	$.ajax({
		method : 'GET'
		, url : "https://dapi.kakao.com/v3/search/book"
		, data : {query : $("#bookName").val()}
		, headers : {Authorization : "KakaoAK f9c8c6e1e591b97080d4983370b3fc98"}
	})
		.done(function(data) {
			console.log(data.documents[0].title)
		})
})


</script>


</body>
</html>