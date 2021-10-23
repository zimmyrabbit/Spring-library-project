<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>

<style>

.url_link {
	color : blue;
}

</style>

		<section class="breadcrumbs-custom bg-image"
			style="background-image: url(${path}/resources/images/breadcrumbs-bg.jpg);">
			<div class="breadcrumbs-custom-inner">
				<div class="breadcrumbs-custom-container container">
					<div class="breadcrumbs-custom-main">
						<h6 class="breadcrumbs-custom-subtitle title-decorated">
							토론 모임
						</h6>
						<h1 class="breadcrumbs-custom-title">
							도서 채팅			
						</h1>
					</div>
				</div>
			</div>
		</section>
		
<section class="section section-lg">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
		
	<div style="margin-top: 5px;" class="col-md-12">
						<h6 style="margin-left: 5px;">Discussion</h6>	
	<div id="messageArea" class="form-input col-md-12" style="overflow:auto; overflow-x:scroll;overflow-x:hidden; height: 550px;"></div>
	
	<div class="col-md-12" style="display:flex;">
		<input type="text"  class="form-input col-md-10" id="_msg_send" onKeyPress="if( event.keyCode==13 ){ msg_sock_chat(); }" style="margin-left: -12px;" />
		<input type="button" id="sendBtn" value="전송" onclick="msg_sock_chat();" class="button button-sm button-primary col-md-2" style="margin: 0; margin-left: 30px;" />
	</div>
	</div>
</div>
</div>
</div>
</section>
<script type="text/javascript">
function autoLink(value) {

	  var doc = value;
	  var regEmail = new RegExp("([xA1-xFEa-z0-9_-]+@[xA1-xFEa-z0-9-]+\.[a-z0-9-]+)","gi");

	  var array = new Array();
	  array = doc.split(' ');
	  var result = "";

	  for(let i=0; i < array.length; i++) {
	      doc = array[i];

	      if(doc.split('.')[0] == "") {
	            result += doc;
	            result += i == array.length -1 ? "": " ";
	            continue;
	      }

	      if(doc.slice(doc.length-1, doc.length) == ".") {
	            result += doc;
	            result += i == array.length -1 ? "": " ";
	            continue;
	      }

	      if(regEmail.test(doc)) {
	           result += doc.replace(regEmail,"<a href='mailto:$1'>$1</a>");
	           result += i == array.length -1 ? "": " ";
	           continue;
	      }else {
	           var engNum = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\s]+$/;
	           if(engNum.test(doc)) {
	                result += doc;
	                result += i == array.length -1 ? "": " ";
	                continue;
	           }

	           if(doc.indexOf('https://') != -1 || doc.indexOf('http://') != -1 )  {
	               var regURL = new RegExp("(http|https|ftp|telnet|news|irc)://([-/.a-zA-Z0-9_~#%$?&=:200-377()]+)","gi");
	               result += doc.replace(regURL,"<a href='$1://$2' target='_blank' class='url_link'>$1://$2</a>")
	               result += i == array.length -1 ? "": " ";
	               continue;
	           }else {
	               var regURL = new RegExp("([-/.a-zA-Z0-9_~#%$&=:200-377()]+)","gi");
	               result += doc.replace(regURL,"<a href='http://$1' target='_blank' class='url_link'>$1</a>");
	               result += i == array.length -1 ? "": " ";
	               continue;
	           }
	      }
	  }

	    return result;
	}


	function msg_sock_chat() {

		if($('#_msg_send').val() == "") {
			alert('채팅을 입력해주세요.');
			return false;
		}
		
		let msg = autoLink($('#_msg_send').val()) + '|' + '${sessionScope.loginSession.userId}';
		$('#_msg_send').val(msg);
		sendMessage();
		$('#_msg_send').val('');
	};

	let sock = new SockJS("http://localhost:8080/echo");
	sock.onmessage = onMessage;
	sock.onclose = onClose;
	// 메시지 전송
	function sendMessage() {
		sock.send($("#_msg_send").val());
	}
	// 서버로부터 메시지를 받았을 때
	function onMessage(msg) {
		var data = msg.data.split('|')[0];
		var userId = msg.data.split('|')[1];
		let _myId = '${sessionScope.loginSession.userId}' == userId ? "(나)" : "" ;
		
		$("#messageArea").append("<span style='font-weight:bold;'>[ " + userId + _myId + " ]<span>");
		$("#messageArea").append("<p style='margin-top:-5px; margin-bottom:3px;'>" + data + "</p>");
		$('#messageArea').scrollTop($('#messageArea')[0].scrollHeight);
		$('#_msg_send').focus();
	}
	// 서버와 연결을 끊었을 때
	function onClose(evt) {
		$("#messageArea").append("연결 끊김");

	}
</script>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>