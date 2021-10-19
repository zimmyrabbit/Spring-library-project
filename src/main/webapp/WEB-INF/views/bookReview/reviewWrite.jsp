<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<div class="container" style="margin-top : 30px;">
<div class="row container-board-padding">
<div class="col-sm-12 col-md-12 col-lg-12  col-xl-9 table-responsive wow fadeIn row "> 

<form action="/bookReview/reviewWrite" method="post">
		
		<div>
			<img src="${map.bookImg }"/>
			제목 : <input type="text" id="title" name="title" readonly="readonly" value="${map.title}"/> <br>
			주소 : <a href="${map.bookUrl }">${map.bookUrl }</a>
		</div>
		
		<div>
		<textarea rows="10" cols="40" readonly="readonly" id="bookIntro" name="bookIntro">${map.bookIntro }</textarea>
		</div>
		
		<div>
		<textarea rows="10" cols="40" id="bookRev" name="bookRev" ></textarea>
		</div>
		
		<input type="hidden" value="${map.isbn }" id="isbn" name="isbn" />
		<input type="hidden" value="${map.bookUrl }" id="bookUrl" name="bookUrl" />
		<input type="hidden" value="${map.bookImg }" id="bookImg" name="bookImg" />
		
		<input type="submit" id="subBtn" value="쓰기" />
</form>


</div>
</div>
</div>
		
		
		
<script>

</script>		

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>