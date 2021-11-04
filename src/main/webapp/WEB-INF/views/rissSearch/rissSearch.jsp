<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

		<section class="breadcrumbs-custom bg-image"
			style="background-image: url(${path}/resources/images/breadcrumbs-bg.jpg);">
			<div class="breadcrumbs-custom-inner">
				<div class="breadcrumbs-custom-container container">
					<div class="breadcrumbs-custom-main">
						<h6 class="breadcrumbs-custom-subtitle title-decorated" style="color:white;">학술 정보</h6>
						<h1 class="breadcrumbs-custom-title" style="color:white;">학술 정보</h1>
					</div>
				</div>
			</div>
		</section>

<div style="text-align:center; margin: 50px 0px;">

<div style="display: inline-block; border-bottom: 1px solid black; padding-bottom: 30px; margin-bottom : 20px;">
<input type="text" id="rissName" name="rissName" style="width:400px; display: inline" class="form-input form-control-has-validation form-control-last-child"/>
<button type="submit" id="search" name="search" class="button button-primary button-winona" style="margin:0px 30px;" onclick="rissSearch()">검색</button>
</div>

<div id="rissList">
<div style="height:400px; display:flex; justify-content: center; align-items: center; font-size: 2em;">
<div>키워드를 검색해 주세요!</div>
</div>
</div>

</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

function rissSearch() {

	let rissName = $('#rissName').val();

	if( rissName == "" ) {
		alert('키워드를 입력해주세요.');
		return false;
	}

    $.ajax({
	     type:"POST",
	     url:"<c:url value='/rissSearch/rissSearch'/>",
		 contentType : "application/x-www-form-urlencoded; charset=UTF-8",
		 dataType : "json",		     
	     data:{
	            "query" : $('#rissName').val()
	     },
	     success:function(data){	

		     let html = "<table style='display:inline-block; border-collapse: separate; border-spacing: 0 10px;'>";
		     html += "<tr>";
		     html += "<th>No.</th>";
		     html += "<th>학술 제목</th>";
		     html += "<th>학술 상세보기</th>";
		     html += "</tr>";
            	 $.each(data.data, function (index, object) {
            		html += "<tr>";
            		html += "<td style='width:15%;'>" + (index+1) + "</td>";
            		html += "<td style='width:65%;'>" + object.title + "</td>";
            		html += "<td style='width:20%;'><button type='button' class='button button-primary button-winona rissBtn' data-url='" + object.url + "'>상세보기</button>";
					html += "</td></tr>";
            	 })

     			$("#rissList").html("");
     			$("#rissList").html(html);	 
           	
	         }
	    });
   }

$(document).on("click",".rissBtn",function() {
	let url = "http://www.riss.kr";
	url += $(this).data('url');
	location.href = url;
});

</script>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>