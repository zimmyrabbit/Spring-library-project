<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=a5uhfq6fyr&submodules=geocoder"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

<div id="map" style="width:1000px;height:500px;"></div>

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
				
				var infoWindow = new naver.maps.InfoWindow({
					content : '<div style="width:180px;text-align:center;padding:10px;font-size:10px;">'
						+ '<b>'+ data[i].libName +'</b>'
						+ '<br> <b> tel : ' + data[i].libTel + '</b>'
						+ '<br>  url : <a href="' + data[i].libLink + '">' + data[i].libLink + '</a>'
						+ '</div>'
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