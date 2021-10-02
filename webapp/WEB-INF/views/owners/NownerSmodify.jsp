<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>가게관리</title>

<link href="${ pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/ownerMain.css" rel="stylesheet" type="text/css">

</head>
<body>

	<div id="wrap">

		<!-- 해더 -->
		<c:import url="/WEB-INF/views/includes/mainHeaderNav.jsp"></c:import>



		<!-- container -->
		<div id="container2">

			<div id="main-wrap" class="clearfix">
				<c:import url="/WEB-INF/views/includes/ownerPageAside.jsp"></c:import>
				<!-- //aside -->


				<!-- //메인 -->
				<div id="main">
					<!-- 페이지타이틀 -->
					<div id="page-title-wrap" class="clearfix">
						<h3 id="page-title">가게수정</h3>

						<ul class="clearfix text-center">
							<li><a href="">홈</a></li>
							<li><a href="${pageContext.request.contextPath}/owners/NownerPage">가게관리</a></li>
							<li class="last"><a href="${pageContext.request.contextPath}/owners/NownerPage">가게수정</a></li>
						</ul>
					</div>
					<!-- //페이지타이틀 -->

					<!-- 컨텐츠 -->
					<div id="content-wrap">
						<div id="wrap2">
							<div class="head2">

							</div>
							<form action="${pageContext.request.contextPath}/owners/storeModify" method="get">
								<input type="hidden" name="s_no" value="${store.s_no}">
								<table class="main-table">
									<tr>
										<td><b>로고</b></td>
										<td><img alt="가게로고" src="${store.s_img}"> <input type="file" name="s_img" value=""></td>
									</tr>
									<tr>
										<td><label for="s-name"><b>상호명</b></label></td>
										<td><input type="text" id="shopName" name="s_name" value="${store.s_name}"></td>
									</tr>
									<tr>
										<td><label for="s-number"><b>전화번호</b></label></td>
										<td><input type="text" id="shopNumber" name="s_phone" value="${store.s_phone}"></td>
									<tr>
									<tr>
										<td class="bnone"><label for="s-addres"><b>주소</b></label></td>
										<td class="bnone"><input type="text" id="shopAddres" name="s_address" value="${store.s_address}">
										<span class="button-area">
												<button type="submit">
													<b>주소찾기</b>
												</button>
										</span></td>
									</tr>
									<tr>
										<td></td>
										<td><input type="text" id="detailAddres" name="s_detail_address" value="${store.s_detail_address}"></td>
									</tr>
									<tr>
										<td><b>영업시간</b></td>
										<td><select id="son-h-f" name="s_openH">
												<option value="00">00</option>
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
										</select> <span>:</span> <select id="son-m-f" name="s_openM">
												<option value="00">00</option>
												<option value="10">10</option>
												<option value="20">20</option>
												<option value="30">30</option>
												<option value="40">40</option>
												<option value="50">50</option>
										</select> <span>~</span> <select id="son-h-l" name="s_closeH">
												<option value="00">00</option>
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
										</select> <span>:</span> <select id="son-m-l" name="s_closeM">
												<option value="00">00</option>
												<option value="10">10</option>
												<option value="20">20</option>
												<option value="30">30</option>
												<option value="40">40</option>
												<option value="50">50</option>
										</select></td>
									</tr>
									<tr>
										<td><b>휴무일</b></td>
										<td>
											<label for="chk-sun">일</label> <input class="chkh" type="checkbox" id="chk-son" name="s_Hsun" value="일"> &nbsp;&nbsp;&nbsp;
											<label for="chk-mon">월</label> <input class="chkh" type="checkbox" id="chk-mon" name="s_Hmon" value="월"> &nbsp;&nbsp;&nbsp;
											<label for="chk-tue">화</label> <input class="chkh" type="checkbox" id="chk-tue" name="s_Htue" value="화"> &nbsp;&nbsp;&nbsp;
											<label for="chk-wen">수</label> <input class="chkh" type="checkbox" id="chk-wen" name="s_Hwen" value="수"> &nbsp;&nbsp;&nbsp;
											<label for="chk-thr">목</label> <input class="chkh" type="checkbox" id="chk-thr" name="s_Hthu" value="목"> &nbsp;&nbsp;&nbsp;
											<label for="chk-fri">금</label> <input class="chkh" type="checkbox" id="chk-fri" name="s_Hfri" value="금"> &nbsp;&nbsp;&nbsp;
											<label for="chk-sat">토</label> <input class="chkh" type="checkbox" id="chk-sat" name="s_Hsat" value="토">
										</td>
									</tr>
									<tr>
										<td><b>주차가능 여부</b></td>
										<td>
											<label for="rdo-parking">주차 가능</label> <input class="chkh" type="radio" id="rdo-parking" name="s_parking" value="주차 가능"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<label for="rdo-noParking">주차 불가능</label> <input class="chkh" type="radio" id="rdo-noParking" name="s_parking" value="주차 불가능">
										</td>
									</tr>
									<tr>
										<td><b>가게 소개글</b></td>
										<td><textarea class="textarea-size" name="s_intro" rows="" cols="">${store.s_intro}</textarea></td>
									</tr>
									<tr>
										<td class="bnone"><b>플랫폼 링크</b></td>
										<td class="bnone"><img alt="유튜브" src="${ pageContext.request.contextPath }/assets/imges/유튜브아이콘.png"> <input type="text" id="youtube" name="s_youtube" value="${store.s_youtube}"></td>
									</tr>
									<tr>
										<td class="bnone"></td>
										<td class="bnone"><img alt="트위치" src="${ pageContext.request.contextPath }/assets/imges/트위터아이콘.png"> <input type="text" id="twich" name="s_twitter" value="${store.s_twitter}"></td>
									</tr>
									<tr>
										<td class="bnone"></td>
										<td class="bnone"><img alt="인스타" src="${ pageContext.request.contextPath }/assets/imges/인스타아이콘.png"> <input type="text" id="twich" name="s_instagram" value="${store.s_instagram}"></td>
									</tr>
								</table>
								<input type="hidden" name="s_latitude" value="0">
								<input type="hidden" name="s_longitude" value="0">
								<div class="button-area button-center ">
									<button>취소</button>
									<span class="orange">
										<button>저장</button>
									</span>
								</div>
							</form>
						</div>
					</div>
					<!-- //컨텐츠 -->
				</div>
				<!-- //메인 -->
			</div>
		</div>
		<!-- //container -->

		<!-- footer -->
		<div id="footer">
			<!-- 푸터내용 -->
			<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		</div>
		<!-- //footer -->
	</div>
</body>
</html>
