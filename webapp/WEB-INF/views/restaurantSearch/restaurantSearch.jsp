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
					<div id="map"></div>


					<div id="menu_wrap" class="bg_white">
						<div class="option">
							<div>
								<form class="text-center" onsubmit="searchPlaces(); return false;">
									<select id="typeCheck">
										<option>전체</option>
										<option>비건</option>
										<option>락토</option>
										<option>오보</option>
										<option>락토오보</option>
										<option>페스코</option>
									</select> <input id="searchMap-box" id="keyword" type="text" name="keyword" value="" size="10">
									<button class="btn clearfix" type="submit">검색</button>
								</form>
							</div>
						</div>
						<hr>
						<ul id="placesList"></ul>
						<!-- onclick="location.href='${pageContext.request.contextPath}/restaurantPage?s_no=${storeVo.s_no}'" -->
						<c:forEach items="${storeList}" var="storeVo">
							<div class="clearfix" onclick="test()">
								<img src="${pageContext.request.contextPath}/veganLogo/${storeVo.s_img}" style="float: left; height: 90px; width: 100px;">
								<p>${storeVo.s_name} ${storeVo.s_phone}</p>
								<p>${storeVo.s_intro}</p>
								<p><span id="span_address">${storeVo.s_address}</span>,${storeVo.s_detail_address}/${storeVo.s_parking}</p>
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

function test() {
	//선택한 가게의 주소 값 가져오기
};

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};  

//지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

//주소로 좌표를 검색합니다
geocoder.addressSearch('서울 강북구 도봉로61길 85-9', function(result, status) {

// 정상적으로 검색이 완료됐으면 
 if (status === kakao.maps.services.Status.OK) {

    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

    // 결과값으로 받은 위치를 마커로 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: coords
    });

    // 인포윈도우로 장소에 대한 설명을 표시합니다
    var infowindow = new kakao.maps.InfoWindow({
        content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
    });
    infowindow.open(map, marker);

    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    map.setCenter(coords);
} 
});
</script>

</html>



