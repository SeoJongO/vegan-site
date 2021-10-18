<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>메인페이지</title>

<link href="${ pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/restaurantSearch.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>

<style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>

</head>
<body>

	<div id="wrap">

		<!-- 해더 -->
		<c:import url="/WEB-INF/views/includes/mainHeaderNav.jsp"></c:import>



		<!-- container -->
		<div id="container">

			<!-- 페이지타이틀 -->
			<div id="page-title-wrap" class="clearfix">
				<h2 id="page-title">식당검색</h2>

				<ul class="clearfix text-center">
					<li><a href="${ pageContext.request.contextPath }/main">홈</a></li>
					<li class="last"><a href="">식당검색</a></li>
				</ul>
			</div>
			<!-- //페이지타이틀 -->

			<!-- 컨텐츠 -->
			<div id="content-wrap">
				<div class="map_wrap">
					<div id="map" style="width: 800px; height: 650px; position: relative; left: 400px;"></div>
					<div id="menu_wrap" class="bg_white">
						<div class="option">
							<div>
								<form class="text-center" onsubmit="searchPlaces(); return false;">
									<select id="typeCheck" name="type">
										<option value="all">전체</option>
										<option value="vegan">비건</option>
										<option value="lacto">락토</option>
										<option value="ovo">오보</option>
										<option value="lactoovo">락토오보</option>
										<option value="pesco">페스코</option>
									</select> <input id="searchMap-box" id="keyword" type="text" name="keyword" value="" size="10">
									<button class="btn clearfix" type="submit">검색</button>
								</form>
							</div>
						</div>
						<hr>
						<ul id="placesList"></ul>
						<!-- onclick="location.href='${pageContext.request.contextPath}/restaurantPage?s_no=${storeVo.s_no}'" -->
						<c:forEach items="${storeList}" var="storeVo">
							<div class="clearfix s_div" data-address="${storeVo.s_address}" data-no="${storeVo.s_no}"
														data-name="${storeVo.s_name}" data-img="${storeVo.s_img}" data-intro="${storeVo.s_intro}">
								<input type="hidden" class="s_address" value="${storeVo.s_address}">
								<input type="hidden" class="s_name" value="${storeVo.s_name}">
								<img src="${pageContext.request.contextPath}/veganLogo/${storeVo.s_img}" id="s_img">
								<p>${storeVo.s_name} ${storeVo.s_phone}</p>
								<p>${storeVo.s_intro}</p>
								<p>${storeVo.s_address},${storeVo.s_detail_address}/${storeVo.s_parking}</p>
								<p>영업시간 : ${storeVo.s_openH}시 ${storeVo.s_openM}분 ~ ${storeVo.s_closeH}시 ${storeVo.s_closeM}분</p>
								<p>휴무일 : ${storeVo.s_Hsun} ${storeVo.s_Hmon} ${storeVo.s_Htue} ${storeVo.s_Hwen} ${storeVo.s_Hthu} ${storeVo.s_Hfri} ${storeVo.s_Hsat}</p>
							</div>
							<br>
						</c:forEach>
						<div id="pagination"></div>
					</div>
				</div>
			</div>
			<!-- //컨텐츠 -->
		</div>
		<!-- //container -->
		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</div>
</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=45c4f1a0aa5b1e058d3298a1e43f3b31&libraries=services"></script>
<script>

	//---------------------------------------------------------지도,마커생성
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	
	mapOption = {
	    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};  
	
	//지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	var array = document.getElementsByClassName('s_address');
	
	var marker = "";
	
	for(i = 0; i < array.length; i++) {
			
		var mark_address = document.getElementsByClassName('s_address')[i].value;
		var mark_name = document.getElementsByClassName('s_name')[i].value;
	
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(mark_address, function(result, status) {
		
			// 정상적으로 검색이 완료됐으면 
			if (status === kakao.maps.services.Status.OK) {
				var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			}
				    
			var la = coords.La;		
			var ma = coords.Ma;
			
			//마커를 표시할 위치와 title 객체 배열입니다 
			var positions = [
			    {
			        title: mark_name, 
			        latlng: new kakao.maps.LatLng(ma, la)
			    }
			];
		
			// 마커 이미지의 이미지 주소입니다
			var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
			
			// 마커 이미지의 이미지 크기 입니다
			var imageSize = new kakao.maps.Size(24, 35); 
			
			// 마커 이미지를 생성합니다    
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
			
			for (var i = 0; i < positions.length; i ++) {
				// 마커를 생성합니다
				marker = new kakao.maps.Marker({
					map: map, // 마커를 표시할 지도
					position: positions[i].latlng, // 마커를 표시할 위치
					title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
					image : markerImage // 마커 이미지 
				});
			};
		});
	};
	
	//지도,마커생성---------------------------------------------------------
	
	var address = $(this);
	var data = address.data("address");
	var s_no = address.data("no");
	var s_name = address.data("name");
	var s_intro = address.data("intro");
	var s_img = address.data("img");

	var content =	'<div class="wrap">' + 
					'    <div class="info">' + 
					'        <div class="title">' + 
					'            '+s_name+' '+ 
					'            <div class="close" title="닫기" data-sno="'+s_no+'"></div>' + 
					'        </div>' + 
					'        <div class="body">' + 
					'            <div class="img">' +
					'                <img src="${pageContext.request.contextPath}/veganLogo/'+s_img+'" width="73" height="70">' +
					'           </div>' + 
					'            <div class="desc">' + 
					'                <div class="ellipsis">'+data+'' + 
					'                <div class="jibun ellipsis">'+s_intro+'' + 
					'                <div><a href="${pageContext.request.contextPath}/restaurantPage?s_no='+s_no+'" target="_blank" class="link">상세페이지</a></div>' + 
					'            </div>' + 
					'        </div>' + 
					'    </div>' +    
					'</div>';

	var overlay = new kakao.maps.CustomOverlay({
		content: content,
		map: map,
		position: marker.getPosition()       
	});
	
	// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	kakao.maps.event.addListener(marker, 'click', function() {
	overlay.setMap(map);
	});
	
	$("#map").on("click", ".close", function() {
	console.log($(this).data("sno"));
	
	
	overlay.setMap(null);
	});			
	
	//---------------------------------------------------------중심으로이동
	$(".s_div").on("click", function() {
		
		var address = $(this);
		var data = address.data("address");
		
		//주소로 좌표를 검색합니다
		geocoder.addressSearch(data, function(result, status) {
			// 정상적으로 검색이 완료됐으면 
			if (status === kakao.maps.services.Status.OK) {
				var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
				
				// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				map.setCenter(coords);
			};
		});
	});
	//중심으로이동---------------------------------------------------------
	

	
</script>

</html>



