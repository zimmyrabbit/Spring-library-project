<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=a5uhfq6fyr&submodules=geocoder"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

		<section class="breadcrumbs-custom bg-image"
			style="background-image: url(${path}/resources/images/breadcrumbs-bg.jpg);">
			<div class="breadcrumbs-custom-inner">
				<div class="breadcrumbs-custom-container container">
					<div class="breadcrumbs-custom-main">
						<h6 class="breadcrumbs-custom-subtitle title-decorated" style="color:white;">도서관 정보</h6>
						<h1 class="breadcrumbs-custom-title" style="color:white;">도서관 정보</h1>
					</div>
				</div>
			</div>
		</section>
<div style="text-align: center; margin : 50px 0px;">
<div id="map" style="width:1000px;height:500px; display:inline-block;"></div>
</div>


<script>

var mapDiv = document.getElementById('map');

var map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(37.38299510708185, 127.11891612706397),
    zoom: 13
});

var markers = [],
infoWindows = [];

selectMapList();

function selectMapList() {
	
	$.ajax({
		type : 'post'
		, url : '/libraryInfo/libraryMap'
		, dataType : 'json'
		, async : false
		, success : function(data) {
			
			for(var i=0; i<data.length; i++) {
				var marker = new naver.maps.Marker({
				    position: new naver.maps.LatLng(data[i].libLat, data[i].libLng),
				    map: map
				});
				
				var con = "";
				con += '<div style="width:180px;text-align:center;padding:10px;font-size:10px;">'
				con += '<b>'+ data[i].libName +'</b>'
				con += '<br> <b> tel : ' + data[i].libTel + '</b>'
				if(data[i].libLink == '정보없음') {
				con += '<br>  url : 정보없음 </a>'
				} else {
				con += '<br>  url : <a href="' + data[i].libLink + '">' + data[i].libLink + '</a>'
				}
				con += '</div>'
				
				var infoWindow = new naver.maps.InfoWindow({
					content : con
				})
				
				markers.push(marker);
				infoWindows.push(infoWindow);
			}
		}
	})
}

naver.maps.Event.addListener(map, 'idle', function() {
    updateMarkers(map, markers);
});

function updateMarkers(map, markers) {

    var mapBounds = map.getBounds();
    var marker, position;

    for (var i = 0; i < markers.length; i++) {

        marker = markers[i]
        position = marker.getPosition();

        if (mapBounds.hasLatLng(position)) {
            showMarker(map, marker);
        } else {
            hideMarker(map, marker);
        }
    }
}

function showMarker(map, marker) {

    if (marker.setMap()) return;
    marker.setMap(map);
}

function hideMarker(map, marker) {

    if (!marker.setMap()) return;
    marker.setMap(null);
}

// 해당 마커의 인덱스를 seq라는 클로저 변수로 저장하는 이벤트 핸들러를 반환합니다.
function getClickHandler(seq) {
    return function(e) {
        var marker = markers[seq],
            infoWindow = infoWindows[seq];

        if (infoWindow.getMap()) {
            infoWindow.close();
        } else {
            infoWindow.open(map, marker);
        }
    }
}

for (var i=0, ii=markers.length; i<ii; i++) {
    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
}
</script>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>