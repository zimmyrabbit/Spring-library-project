<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>


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
<div class="row container-board-padding" style="display: flex; justify-content: center;">
<div class="col-sm-12 col-md-12 col-lg-12  col-xl-9 table-responsive wow fadeIn row "> 

<form name="write_form" action="/bookReview/reviewWrite" method="post">
		
		<div style="font-size: 1.5em; margin : 40px 0px;">
			제목 : ${map.title}
		</div>
		
		<table style="margin : 40px 0px;">
			<tr>
			<td width="130px;"><img src="${map.bookImg }" style="height:173px;"/></td>
			<td>${map.bookIntro }<td>
			</tr>
		</table>
		
		<div style="text-align: center;">
		<textarea rows="10" cols="80" id="bookRev" name="bookRev" class="form-input form-control-has-validation form-control-last-child"></textarea>
		</div>
		
		<input type="hidden" value="${map.isbn }" id="isbn" name="isbn" />
		<input type="hidden" value="${map.bookUrl }" id="bookUrl" name="bookUrl" />
		<input type="hidden" value="${map.bookImg }" id="bookImg" name="bookImg" />
		
		<input type="button" id="subBtn" value="쓰기" class="button button-primary button-winona" style="margin-bottom: 40px;" onclick="writeCheck()"/>
</form>


</div>
</div>
</div>
		
		
		
<script type="text/javascript">

function writeCheck() {
	
	if($('#booKRev').val() == "") {
		alert('리뷰내용을 입력해주세요.');
		return false; 
	}
	
	document.write_form.submit();
}

</script>		

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>